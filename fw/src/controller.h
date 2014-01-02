/*!
 (C) Copyright 2013, Ben Nahill
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 
 @file
 @brief
 @author Ben Nahill <bnahill@gmail.com>
 */

#ifndef __APULSE_CONTROLLER_H_
#define __APULSE_CONTROLLER_H_

#include <driver/platform.h>
#include <driver/codec.h>
#include <driver/timer.h>
#include <driver/tpa6130a2.h>
#include <wavegen.h>
#include "input_dsp.h"


class APulseController {
	//! @name Commands
	//! @{

	typedef enum {
		CMD_RESET = 0,   // Reset the controller
		CMD_STARTUP = 1, // Enable CODEC and power-hungry crap
		CMD_SETUPTONES = 2,
		CMD_SETUPCAPTURE = 3,
		CMD_GETSTATUS = 4,
		CMD_GETDATA = 5,
		CMD_START = 6,

		CMD_NONE = 255,
	} cmd_t;

	/*!
	 @brief A mode for a single tone

	 This is intended to be or'd with a channel number
	 */
	typedef enum {
		TONE_OFF = 0   << 4,
		TONE_FIXED = 1 << 4,
		TONE_CHIRP = 2 << 4,
	} tone_mode_t;

	/*!
	 @brief The configuration for a single tone
	 */
	typedef struct {
		//! of type tone_mode_t or'd with a channel number
		uint8_t tone_mode_ch;
		//! The SPL, in dB 16-bit Q8
		uint16_t amplitude;
		//! Frequency in Hz
		uint16_t f1;
		//! Frequency 2 in Hz (not used for fixed tones)
		uint16_t f2;
		//! Duration in ms -- set to 0 for no limit
		uint16_t t;
	} __attribute__((packed)) tone_config_t;

	typedef struct {
		uint8_t cmd;
		uint8_t enabled_mask;
		tone_config_t tones[3];
	} __attribute__((packed)) tone_setup_pkt_t;

	typedef struct {
		uint8_t cmd;
		//! Window overlap in samples
		uint8_t overlap;
		//! Window function (ignored)
		uint8_t window_function;
		//! Number of windows to capture
		uint16_t num_windows;
		//! The time in ms to start capturing
		uint16_t start_time;
	} __attribute__((packed)) capture_config_pkt_t;

	typedef union {
		capture_config_pkt_t capture_config_pkt;
		tone_setup_pkt_t     tone_config_pkt;
	} r_packet_t;

	//! @}


	//! @name Return messages
	//! @{

	typedef struct {
		uint8_t version;
		uint8_t is_capturing     : 1;
		uint8_t is_playing       : 1;
		uint8_t is_started       : 1;
		uint8_t reset_wavegen    : 1;
		uint8_t reset_input      : 1;
		uint8_t reset_controller : 1;
	} status_pkt_t;

	typedef union {
		status_pkt_t status_pkt;
	} t_packet_t;

	//! @}
public:

	/*!
	 @brief Handle a USB command (or data sent)
	 @param data A pointer tor the received data
	 @param size The number of bytes in the packet

	 @note THIS SHOULD BE CALLED FROM INTERRUPT OR LOCKED CONTEXT
	 */
	static void handle_dataI(uint8_t * data, uint8_t size){
		auto const a = reinterpret_cast<r_packet_t *>(data);
		(void)a;
		// First make sure there is data to parse
		if(!size)
			return;

		static_assert(sizeof(tone_setup_pkt_t) == 29, "tone_setup_pkt_t wrong size");
		static_assert(sizeof(status_pkt_t) == 2, "status_pkt_t wrong size");
		static_assert(sizeof(capture_config_pkt_t) == 7, "capture_config_pkt wrong size");

		switch(*data){
		case CMD_RESET:
			timer.stop();
			timer.reset_count();

			WaveGen::request_resetI();
			InputDSP::request_resetI();
			break;
		case CMD_GETDATA:
			break;
		case CMD_GETSTATUS:

			break;
		case CMD_SETUPCAPTURE:

			break;
		case CMD_SETUPTONES:
			break;
		case CMD_STARTUP:
			break;
		case CMD_START:
			timer.stop();
			timer.reset_count();
			timer.start();
			break;
		default:
			return;
		}
		if(size == 1 and data[0] == 0xA5){
			WaveGen::mute();
			WaveGen::set_tone(0, 0, 800, 1000, 10000, 65);
			WaveGen::set_tone(1, 1, 1600, 1000, 10000, 65);
			WaveGen::unmute();
			TPA6130A2::enable();
		} else if (size == 1 and data[0] == 0xAA){
			TPA6130A2::disable();
			WaveGen::mute();
			WaveGen::set_off(0);
			WaveGen::set_off(1);
		}
	}

	/*!
	 @brief Get a response

	 This response should already be prepared
	 */
	static uint8_t * get_response(uint16_t &size){
		static union {
			uint8_t data[64];
			status_pkt_t status;
		} p;

		switch(state){
		case CMD_GETSTATUS:
		case CMD_RESET:
			zero4(p.data, sizeof(status_pkt_t));
			p.status.version = 0;
			p.status.is_started = 1;
			p.status.is_capturing = 1;
			p.status.is_playing = 1;

			p.status.reset_controller = 0;
			p.status.reset_input = InputDSP::is_resetI() ? 1 : 0;
			p.status.reset_wavegen = WaveGen::is_resetI() ? 1 : 0;
			size = sizeof(status_pkt_t);
			return p.data;
			break;
		case CMD_NONE:
			size = 0;
			break;
		default:
			size = 0;
			break;
		}
		return nullptr;
	}
	
	static uint16_t get_time_ms(){
		return timer.get_count();
	}

	void request_resetI();


	static PT_THREAD(pt_command_parser(struct pt * pt)){
		PT_BEGIN(pt);

		// Run from 32kHz/32 clock
		timer.configure(Timer::CLKS_FIXED, Timer::PS_32, 0);
		timer.reset_count(0);

		while(true){
			PT_YIELD(pt);
		}

		PT_END(pt);
	}
	
	static constexpr Timer timer = FTM0_BASE_PTR;
private:
	static cmd_t state;
	static uint32_t cmd_idx;
};

#endif // __APULSE_CONTROLLER_H_
