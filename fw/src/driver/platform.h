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

#ifndef __APULSE_PLATFORM_H_
#define __APULSE_PLATFORM_H_

#ifdef __cplusplus

#include <driver/clocks.h>
#include <driver/usb.h>
#include <driver/gpio.h>
#include <driver/codec.h>
#include <pt.h>

class Platform {
public:
	/*!
	 * @brief Initialization to be done before anything
	 *
	 * @note Since this may be done before data initialization, it may only use
	 * constants
	 */
	static void earlyInit();

	/*!
	 @brief Initialize peripherals and devices that depend on clocks and data initialization
	 */
	static void lateInit(){

		USB::lateInit();

		AK4621::init();
		
		led.set();
	}
	
	//! The one debug LED
	static constexpr GPIOPin led = {PTB_BASE_PTR, 19};
};

#endif // __cplusplus


#ifdef __cplusplus
extern "C" {
#endif
/*!
 * @brief An earlyInit with C-ready linkage
 */
void earlyInitC();
#ifdef __cplusplus
};
#endif

#endif // __APULSE_PLATFORM_H_
