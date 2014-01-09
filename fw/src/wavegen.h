/*!
 (C) Copyright 2013 Ben Nahill
 
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

#ifndef __APULSE_WAVEGEN_H_
#define __APULSE_WAVEGEN_H_

#include <driver/platform.h>
#include <driver/codec.h>
#include <arm_math.h>
#include <core_cm4.h>
#include <apulse_math.h>

	
	
class Generator {
public:
	Generator() :
		type(GEN_OFF)
		{}
	typedef enum {
		GEN_OFF = 0,
		GEN_FIXED,
		GEN_CHIRP
	} gen_type_t;

	gen_type_t type;
	uint16_t w1;     //!< Start normalized angular rate
	uint16_t w2;     //!< End angular rate (chirp)
	uint16_t t1;     //!< The start time
	uint16_t t2;     //!< The finish time
	uint16_t theta;  //!< Current phase in wavetable
	uint16_t w_current; //!< Theta for angular rate in chirp, might not use
	uint8_t ch;      //!< Which channel is it?
	AK4621::sample_t gain;   //!< Gain applied to each full-scale sample

	inline operator bool() const {return type != GEN_OFF;}
	inline bool operator !() const {return type == GEN_OFF;}
};

class WaveGen {
public:
	typedef AK4621::sample_t sample_t;

	static inline void request_resetI(){
		pending_reset = true;
	}

	static inline bool is_running(){
		return state == ST_RUNNING;
	}

	typedef enum {
		ST_RESET   = 0,
		ST_READY   = 1,
		ST_RUNNING = 2,
		ST_DONE    = 3
	} state_t;

	static inline state_t& get_state(){return state;}

	static inline bool is_ready() {
		return generators[0].type;
	}

	/*!
	 * @brief A callback to get samples
	 * @param dst The destination buffer (size known from \ref AK4621)
	 * 
	 * @note This should be called from interrupt or locked context
	 * 
	 * @note Generation will be performed immediately from this context due to
	 * short deadline
	 * 
	 * @note Inlined because only a single caller
	 */
	static inline void get_samplesI(sample_t * dst){
		// Zero the whole damn thing first
		zero16(dst, buffer_size);
		// Check if muting
		if(silent)
			return;
		
		auto t = get_time_ms();

		bool alldone = false;
		
		for(Generator &generator : generators){
			switch(generator.type){
			case Generator::GEN_OFF:
				// Don't care
				continue;
			case Generator::GEN_FIXED:
				// Go add a fixed wave to the appropriate channels
				generate_wave(generator, dst + generator.ch, t);
				break;
			case Generator::GEN_CHIRP:
				generate_chirp(generator, dst + generator.ch, t);
				break;
			// Add other signal generation handlers here if anything else req'd
			}

			alldone |= generator.t2 < t;
		}

		if(alldone)
			mute();
	}
	
	//! @name Tone selection functions
	//! Use to adjust tones being played. Please mute before using...
	//! @{
	static void set_chirp(uint8_t idx, uint8_t ch, uint16_t f1, uint16_t f2,
	               uint16_t t1, uint16_t t2, sFractional<7,8> gaindb){
		// state = ST_READY;
	}
	
	static void set_tone(uint8_t idx, uint8_t ch, uint16_t f1,
	              uint16_t t1, uint16_t t2, sFractional<7,8> gaindb);
	
	static inline void set_off(uint8_t idx){
		if(state == ST_RESET || state == ST_READY){
			generators[idx].type = Generator::GEN_OFF;
		}
	}
	//! @}

	static inline void runI(){
		if(state == ST_READY){
			state = ST_RUNNING;
			unmute();
		}
	}

	static PT_THREAD(pt_wavegen(struct pt * pt)){
		PT_BEGIN(pt);

		AK4621::set_out_cb(get_samplesI);

		do_reset();

		while(true){
			// Check for reset request
			if(pending_reset){
				do_reset();
			}
			// Enable output if relevant
			if((state != ST_RESET) && !TPA6130A2::is_ready()){
				TPA6130A2::enable();
			}
			PT_YIELD(pt);
		}

		PT_END(pt);
	}
protected:
	static constexpr uint32_t buffer_size = AK4621::out_buffer_size;
	static constexpr uint32_t wavetable_len = 4096;
	static const sample_t wavetable[wavetable_len];
	static constexpr uint32_t fs = AK4621::fs;
	
	static bool silent;
	
	static constexpr uint32_t num_generators = 3;
	static Generator generators[num_generators];
	
	static state_t state;

	//! @name Muting functions
	//! Mute all channels when altering parameters
	//! @{
	static inline void mute(){
		silent = true;
	}
	static inline void unmute(){
		silent = false;
	}
	//! @}

	/*!
	 @brief Generate a waveform
	 @param generator The generator to use
	 @param dst The start destination
	 @param t The start time of the frame to fill
	 
	 This will generate \ref buffer_size / 2 samples and add them to @ref dst
	 in alternating slots (to apply to a single channel only)
	 */
	static void generate_wave(Generator &generator, sample_t * dst, uint16_t t){
// 		IGNORE THIS CHECK FOR NOW!
// 		if(t < generator.t1 || t > generator.t2)
// 			return;
		
		// Just some temporary storage
		sample_t s;
		uint32_t theta = generator.theta;
		q31_t gain = generator.gain;
		for(uint32_t i = 0; i < buffer_size / 2; i++){
			s = wavetable[theta & (wavetable_len - 1)];
			// Negate for second half-wave
			if(theta & wavetable_len)
				s *= -1;
			
			s = __SSAT((((q63_t) s * gain) >> 32),31);
			
			// Add this sample to the output
			*dst += s;
			dst += 2;
			
			theta = (theta + generator.w1) & (wavetable_len * 2 - 1);
		}
		generator.theta = theta;
	}
	
	/*!
	 @brief Generate a chirp
	 @param generator The generator to use
	 @param dst The start destination
	 @param t The start time of the frame to fill
	 
	 This will generate \ref buffer_size / 2 samples and add them to @ref dst
	 in alternating slots (to apply to a single channel only)
	 */
	static void generate_chirp(Generator &generator, sample_t * dst, uint16_t t){
		
	}
	
	static uint16_t get_time_ms();

	static bool pending_reset;

	static void do_reset(){
		mute();
		set_off(0);
		set_off(1);
		set_off(2);
		state = ST_RESET;
		pending_reset = false;
	}
	
	static sFractional<0,31> db_to_gain(sFractional<7,8> db){
		return 0.5;
	}
};

#endif // __APULSE_WAVEGEN_H_


