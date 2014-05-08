EESchema Schematic File Version 2
LIBS:symbols
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:audio_iface_rev2-cache
EELAYER 27 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 6
Title "Android DPOAE Interface"
Date "6 may 2014"
Rev "2a"
Comp "Sana AudioPulse"
Comment1 "Ben Nahill <bnahill@gmail.com>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2500 2500 1200 1150
U 523B0E12
F0 "Audio In" 50
F1 "audio_in.sch" 50
F2 "MIC_IN" I L 2500 2900 60 
F3 "MIC_DIFF_N" O R 3700 3000 60 
F4 "MIC_DIFF_P" O R 3700 2900 60 
F5 "EXT_DIFF_N" O R 3700 3300 60 
F6 "EXT_DIFF_P" O R 3700 3200 60 
F7 "EXT_IN" I L 2500 3300 60 
$EndSheet
$Sheet
S 4800 2800 1300 1400
U 523B943D
F0 "CODEC" 50
F1 "codec.sch" 50
F2 "AINL+" I L 4800 2900 60 
F3 "AINL-" I L 4800 3000 60 
F4 "AINR+" I L 4800 3200 60 
F5 "AINR-" I L 4800 3300 60 
F6 "AOUTR+" O R 6100 2900 60 
F7 "AOUTR-" O R 6100 3000 60 
F8 "AOUTL+" O R 6100 3200 60 
F9 "AOUTL-" O R 6100 3300 60 
F10 "MCLK" I L 4800 3500 60 
F11 "LRCK" I L 4800 3600 60 
F12 "BICK" I L 4800 3700 60 
F13 "SDTI" I L 4800 3800 60 
F14 "SDTO" O L 4800 3900 60 
F15 "PDN" I L 4800 4100 60 
F16 "SPI_CLK" I R 6100 3600 60 
F17 "SPI_~CS" I R 6100 3800 60 
F18 "SPI_MOSI" I R 6100 3700 60 
$EndSheet
$Comp
L CONN_2 J1
U 1 1 523BE918
P 1600 3000
F 0 "J1" V 1550 3000 40  0000 C CNN
F 1 "CONN_2" V 1650 3000 40  0000 C CNN
F 2 "~" H 1600 3000 60  0000 C CNN
F 3 "~" H 1600 3000 60  0000 C CNN
	1    1600 3000
	-1   0    0    1   
$EndComp
$Comp
L RES R1
U 1 1 523BEA36
P 2050 2650
F 0 "R1" H 2120 2615 50  0000 L TNN
F 1 "3.9k (1%)" H 2050 2705 30  0000 C BNN
F 2 "" H 2050 2650 60  0000 C CNN
F 3 "" H 2050 2650 60  0000 C CNN
	1    2050 2650
	0    -1   -1   0   
$EndComp
$Sheet
S 4800 4600 1300 1800
U 523BF424
F0 "Microcontroller" 50
F1 "micro.sch" 50
F2 "CODEC_MCLK" O L 4800 5300 60 
F3 "CODEC_SDIN" I L 4800 4900 60 
F4 "CODEC_LRCK" O L 4800 5200 60 
F5 "CODEC_BCLK" O L 4800 5100 60 
F6 "CODEC_SDO" O L 4800 5000 60 
F7 "UART0_TX" O R 6100 5200 60 
F8 "UART0_RX" I R 6100 5300 60 
F9 "USB_D+" B L 4800 5800 60 
F10 "USB_D-" B L 4800 5700 60 
F11 "CODEC_PDN" O L 4800 4700 60 
F12 "SPI1_SCK" O R 6100 5800 60 
F13 "SPI1_SOUT" O R 6100 5700 60 
F14 "SPI1_CS_CODEC" O R 6100 5600 60 
F15 "PGA0_D+" I R 6100 6100 60 
F16 "PGA0_D-" I R 6100 6200 60 
F17 "HP_~SD" O R 6100 4700 60 
F18 "I2C_SCL" B R 6100 4800 60 
F19 "I2C_SDA" B R 6100 4900 60 
F20 "ANALOG_EN" O L 4800 5500 60 
$EndSheet
$Comp
L USBMICROCONN J3
U 1 1 523BF69D
P 2950 5750
F 0 "J3" H 3000 5350 60  0001 C CNN
F 1 "USBMICROCONN" H 3000 5350 60  0000 C CNN
F 2 "" H 2950 5750 60  0000 C CNN
F 3 "" H 2950 5750 60  0000 C CNN
	1    2950 5750
	0    1    1    0   
$EndComp
$Comp
L CONN_2 J2
U 1 1 52486D64
P 1600 3400
F 0 "J2" V 1550 3400 40  0000 C CNN
F 1 "CONN_2" V 1650 3400 40  0000 C CNN
F 2 "~" H 1600 3400 60  0000 C CNN
F 3 "~" H 1600 3400 60  0000 C CNN
	1    1600 3400
	-1   0    0    1   
$EndComp
$Comp
L AGND_IN #PWR2
U 1 1 52486D6B
P 2050 3600
F 0 "#PWR2" H 2050 3600 40  0001 C CNN
F 1 "AGND_IN" H 2050 3530 50  0000 C CNN
F 2 "" H 2050 3600 60  0000 C CNN
F 3 "" H 2050 3600 60  0000 C CNN
	1    2050 3600
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR3
U 1 1 524E1634
P 3300 6100
F 0 "#PWR3" H 3300 6100 40  0001 C CNN
F 1 "DGND" H 3300 6030 40  0000 C CNN
F 2 "" H 3300 6100 60  0000 C CNN
F 3 "" H 3300 6100 60  0000 C CNN
	1    3300 6100
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 J6
U 1 1 524E6315
P 9400 3000
F 0 "J6" V 9350 3000 40  0000 C CNN
F 1 "CONN_2" V 9450 3000 40  0000 C CNN
F 2 "~" H 9400 3000 60  0000 C CNN
F 3 "~" H 9400 3000 60  0000 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 J7
U 1 1 524E6F43
P 9400 3500
F 0 "J7" V 9350 3500 40  0000 C CNN
F 1 "CONN_2" V 9450 3500 40  0000 C CNN
F 2 "~" H 9400 3500 60  0000 C CNN
F 3 "~" H 9400 3500 60  0000 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
$Sheet
S 4600 800  1000 1300
U 524EE3EB
F0 "Power" 50
F1 "power.sch" 50
F2 "ANALOG_EN" I L 4600 950 60 
$EndSheet
$Comp
L CONN_2 J4
U 1 1 5251A6D0
P 7750 5250
F 0 "J4" V 7700 5250 40  0000 C CNN
F 1 "CONN_2" V 7800 5250 40  0000 C CNN
F 2 "~" H 7750 5250 60  0000 C CNN
F 3 "~" H 7750 5250 60  0000 C CNN
	1    7750 5250
	1    0    0    -1  
$EndComp
$Comp
L TP TP1
U 1 1 5251B035
P 3600 6200
F 0 "TP1" H 3600 6100 60  0000 C CNN
F 1 "TP_USB_ID" H 3600 6300 60  0000 C CNN
F 2 "~" H 3600 6200 60  0000 C CNN
F 3 "~" H 3600 6200 60  0000 C CNN
	1    3600 6200
	0    1    1    0   
$EndComp
Text Notes 3850 5950 3    60   ~ 0
Floating for USB device
$Comp
L +5VA #PWR1
U 1 1 525790A9
P 2050 2400
F 0 "#PWR1" H 2050 2530 20  0001 C CNN
F 1 "+5VA" H 2050 2500 30  0000 C CNN
F 2 "" H 2050 2400 60  0000 C CNN
F 3 "" H 2050 2400 60  0000 C CNN
	1    2050 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 J5
U 1 1 52581553
P 7750 6150
F 0 "J5" V 7700 6150 40  0000 C CNN
F 1 "CONN_2" V 7800 6150 40  0000 C CNN
F 2 "~" H 7750 6150 60  0000 C CNN
F 3 "~" H 7750 6150 60  0000 C CNN
	1    7750 6150
	1    0    0    -1  
$EndComp
$Sheet
S 7000 2800 1100 1200
U 523BC94C
F0 "HP Amp" 50
F1 "hp_amp.sch" 50
F2 "INL+" I L 7000 2900 60 
F3 "INL-" I L 7000 3000 60 
F4 "INR-" I L 7000 3300 60 
F5 "INR+" I L 7000 3200 60 
F6 "HPL" O R 8100 2900 60 
F7 "HPR" O R 8100 3400 60 
F8 "~SD" I L 7000 3500 60 
F9 "SDA" B L 7000 3700 60 
F10 "SCL" B L 7000 3600 60 
$EndSheet
Wire Wire Line
	4800 2900 3700 2900
Wire Wire Line
	3700 3000 4800 3000
Wire Wire Line
	7000 2900 6100 2900
Wire Wire Line
	6100 3000 7000 3000
Wire Wire Line
	7000 3200 6100 3200
Wire Wire Line
	6100 3300 7000 3300
Wire Wire Line
	1950 2900 2500 2900
Wire Wire Line
	2050 3100 1950 3100
Wire Wire Line
	2050 2400 2050 2500
Wire Wire Line
	2050 2800 2050 2900
Connection ~ 2050 2900
Wire Wire Line
	3700 3200 4800 3200
Wire Wire Line
	4800 3300 3700 3300
Wire Wire Line
	2050 3100 2050 3600
Wire Wire Line
	1950 3500 2300 3500
Wire Wire Line
	1950 3300 2500 3300
Wire Wire Line
	4800 4700 4700 4700
Wire Wire Line
	4700 4700 4700 4100
Wire Wire Line
	4700 4100 4800 4100
Wire Wire Line
	4800 3900 4600 3900
Wire Wire Line
	4600 3900 4600 4900
Wire Wire Line
	4600 4900 4800 4900
Wire Wire Line
	4800 5000 4500 5000
Wire Wire Line
	4500 5000 4500 3800
Wire Wire Line
	4500 3800 4800 3800
Wire Wire Line
	4800 3700 4400 3700
Wire Wire Line
	4400 3700 4400 5100
Wire Wire Line
	4400 5100 4800 5100
Wire Wire Line
	4800 3600 4300 3600
Wire Wire Line
	4300 3600 4300 5200
Wire Wire Line
	4300 5200 4800 5200
Wire Wire Line
	4800 5300 4200 5300
Wire Wire Line
	4200 5300 4200 3500
Wire Wire Line
	4200 3500 4800 3500
Wire Wire Line
	6100 4700 6700 4700
Wire Wire Line
	6700 4700 6700 3500
Wire Wire Line
	3300 6100 3300 6000
Wire Wire Line
	3300 6000 3200 6000
Wire Wire Line
	9050 2900 8100 2900
Wire Wire Line
	7400 5150 7200 5150
Wire Wire Line
	7200 5150 7200 5200
Wire Wire Line
	7200 5200 6100 5200
Wire Wire Line
	6100 5300 7200 5300
Wire Wire Line
	7200 5300 7200 5350
Wire Wire Line
	7200 5350 7400 5350
Wire Wire Line
	3600 6100 3600 5900
Wire Wire Line
	3600 5900 3200 5900
Wire Wire Line
	6100 5600 6200 5600
Wire Wire Line
	6200 5600 6200 3800
Wire Wire Line
	6200 3800 6100 3800
Wire Wire Line
	6100 5700 6300 5700
Wire Wire Line
	6300 5700 6300 3700
Wire Wire Line
	6300 3700 6100 3700
Wire Wire Line
	6100 5800 6400 5800
Wire Wire Line
	6400 5800 6400 3600
Wire Wire Line
	6400 3600 6100 3600
Wire Wire Line
	7400 6050 7200 6050
Wire Wire Line
	7200 6050 7200 6100
Wire Wire Line
	7200 6100 6100 6100
Wire Wire Line
	6100 6200 7200 6200
Wire Wire Line
	7200 6200 7200 6250
Wire Wire Line
	7200 6250 7400 6250
Wire Wire Line
	6700 3500 7000 3500
Wire Wire Line
	8600 3100 9050 3100
Wire Wire Line
	8100 3400 8500 3400
Wire Wire Line
	8500 3400 8500 3600
Wire Wire Line
	8500 3600 9050 3600
Wire Wire Line
	8600 3400 9050 3400
$Comp
L USB_5V #PWR4
U 1 1 5350403E
P 3600 5500
F 0 "#PWR4" H 3600 5460 30  0001 C CNN
F 1 "USB_5V" H 3600 5610 30  0000 C CNN
F 2 "~" H 3600 5500 60  0000 C CNN
F 3 "~" H 3600 5500 60  0000 C CNN
	1    3600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5500 3600 5600
Wire Wire Line
	3600 5600 3200 5600
Wire Wire Line
	7000 3600 6800 3600
Wire Wire Line
	6800 3600 6800 4800
Wire Wire Line
	6800 4800 6100 4800
Wire Wire Line
	6100 4900 6900 4900
Wire Wire Line
	6900 4900 6900 3700
Wire Wire Line
	6900 3700 7000 3700
Wire Wire Line
	8600 3100 8600 3750
$Comp
L AGND_OUT #PWR5
U 1 1 53573760
P 8600 3750
F 0 "#PWR5" H 8600 3750 40  0001 C CNN
F 1 "AGND_OUT" H 8600 3680 50  0000 C CNN
F 2 "~" H 8600 3750 60  0000 C CNN
F 3 "~" H 8600 3750 60  0000 C CNN
	1    8600 3750
	1    0    0    -1  
$EndComp
Connection ~ 8600 3400
$Comp
L CAP C1
U 1 1 535741F7
P 2300 3100
F 0 "C1" H 2320 3070 50  0000 L TNN
F 1 "10n" H 2325 3120 30  0000 L BNN
F 2 "~" H 2300 3100 60  0000 C CNN
F 3 "~" H 2300 3100 60  0000 C CNN
	1    2300 3100
	0    -1   -1   0   
$EndComp
Connection ~ 2050 3500
Wire Wire Line
	2300 3500 2300 3200
Wire Wire Line
	2300 3000 2300 2900
Connection ~ 2300 2900
Text Notes 2100 3250 0    60   ~ 0
DNP
$Comp
L RES R2
U 1 1 5357CAB5
P 3850 5700
F 0 "R2" H 3920 5665 50  0000 L TNN
F 1 "22R" H 3850 5755 30  0000 C BNN
F 2 "~" H 3850 5700 60  0000 C CNN
F 3 "~" H 3850 5700 60  0000 C CNN
	1    3850 5700
	1    0    0    -1  
$EndComp
$Comp
L RES R3
U 1 1 5357CCFF
P 4200 5800
F 0 "R3" H 4270 5765 50  0000 L TNN
F 1 "22R" H 4200 5855 30  0000 C BNN
F 2 "~" H 4200 5800 60  0000 C CNN
F 3 "~" H 4200 5800 60  0000 C CNN
	1    4200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5800 4800 5800
Wire Wire Line
	4800 5700 4000 5700
Wire Wire Line
	4050 5800 3200 5800
Wire Wire Line
	3200 5700 3700 5700
Wire Wire Line
	4800 5500 4100 5500
Wire Wire Line
	4100 5500 4100 950 
Wire Wire Line
	4100 950  4600 950 
$EndSCHEMATC