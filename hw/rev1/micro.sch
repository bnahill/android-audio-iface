EESchema Schematic File Version 2
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
LIBS:symbols
LIBS:audio_iface_rev1-cache
EELAYER 27 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 5
Title "Android DPOAE Interface"
Date "3 oct 2013"
Rev "1a"
Comp "Sana AudioPulse"
Comment1 "Ben Nahill <bnahill@gmail.com>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7650 3800 2    60   BiDi ~ 0
I2C0_SCL
Text HLabel 7650 3900 2    60   BiDi ~ 0
I2C0_SDA
Text HLabel 7650 4400 2    60   Output ~ 0
HP_~SD
$Comp
L +3V #PWR?
U 1 1 524A6D6E
P 4300 2900
F 0 "#PWR?" H 4300 2860 30  0001 C CNN
F 1 "+3V" H 4300 3010 30  0000 C CNN
F 2 "" H 4300 2900 60  0000 C CNN
F 3 "" H 4300 2900 60  0000 C CNN
	1    4300 2900
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 524A6DA1
P 4300 3650
F 0 "C?" H 4320 3620 50  0000 L TNN
F 1 "10n" H 4325 3670 30  0000 L BNN
F 2 "~" H 4300 3650 60  0000 C CNN
F 3 "~" H 4300 3650 60  0000 C CNN
	1    4300 3650
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 524A6DAE
P 4150 3650
F 0 "C?" H 4170 3620 50  0000 L TNN
F 1 "0.1u" H 4175 3670 30  0000 L BNN
F 2 "~" H 4150 3650 60  0000 C CNN
F 3 "~" H 4150 3650 60  0000 C CNN
	1    4150 3650
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 524A6DB4
P 4000 3650
F 0 "C?" H 4020 3620 50  0000 L TNN
F 1 "0.1u" H 4025 3670 30  0000 L BNN
F 2 "~" H 4000 3650 60  0000 C CNN
F 3 "~" H 4000 3650 60  0000 C CNN
	1    4000 3650
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 524A6DBA
P 3550 3650
F 0 "C?" H 3570 3620 50  0000 L TNN
F 1 "2.2u" H 3575 3670 30  0000 L BNN
F 2 "~" H 3550 3650 60  0000 C CNN
F 3 "~" H 3550 3650 60  0000 C CNN
	1    3550 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 3500 3550 3550
Wire Wire Line
	3250 3800 4850 3800
Wire Wire Line
	4300 3750 4300 3900
Wire Wire Line
	4150 3800 4150 3750
Connection ~ 4300 3800
Wire Wire Line
	4000 3800 4000 3750
Connection ~ 4150 3800
Wire Wire Line
	3550 3800 3550 3750
Connection ~ 4000 3800
Wire Wire Line
	3550 3500 4850 3500
Wire Wire Line
	4300 2900 4300 3550
Wire Wire Line
	4150 3500 4150 3550
Connection ~ 4300 3500
Wire Wire Line
	4000 3500 4000 3550
Connection ~ 4150 3500
Connection ~ 4000 3500
$Comp
L CAP C?
U 1 1 524A7184
P 3700 3650
F 0 "C?" H 3720 3620 50  0000 L TNN
F 1 "1u" H 3725 3670 30  0000 L BNN
F 2 "~" H 3700 3650 60  0000 C CNN
F 3 "~" H 3700 3650 60  0000 C CNN
	1    3700 3650
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 524A718A
P 3850 3650
F 0 "C?" H 3870 3620 50  0000 L TNN
F 1 "1u" H 3875 3670 30  0000 L BNN
F 2 "~" H 3850 3650 60  0000 C CNN
F 3 "~" H 3850 3650 60  0000 C CNN
	1    3850 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 3500 3850 3550
Connection ~ 3850 3500
Wire Wire Line
	3700 3500 3700 3550
Connection ~ 3700 3500
Wire Wire Line
	3700 3750 3700 3800
Connection ~ 3700 3800
Wire Wire Line
	3850 3750 3850 3800
Connection ~ 3850 3800
$Comp
L DGND #PWR?
U 1 1 524A769B
P 3400 3950
F 0 "#PWR?" H 3400 3950 40  0001 C CNN
F 1 "DGND" H 3400 3880 40  0000 C CNN
F 2 "" H 3400 3950 60  0000 C CNN
F 3 "" H 3400 3950 60  0000 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
$Comp
L K20_QFN32 U?
U 1 1 524D92E1
P 5600 4100
F 0 "U?" H 6250 2850 60  0000 R CNN
F 1 "MK20DX128VFM5" H 5600 5350 60  0000 C CNN
F 2 "" H 5200 4550 60  0000 C CNN
F 3 "" H 5200 4550 60  0000 C CNN
	1    5600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3200 4300 3200
Wire Wire Line
	4850 3100 4300 3100
Connection ~ 4300 3200
Wire Wire Line
	4850 3000 4300 3000
Connection ~ 4300 3100
Wire Wire Line
	4300 3900 4850 3900
$Comp
L XTAL X?
U 1 1 524D93F7
P 6600 3600
F 0 "X?" H 6600 3540 40  0000 C TNN
F 1 "XTAL" H 6600 3660 40  0000 C BNN
F 2 "~" H 6600 3600 60  0000 C CNN
F 3 "~" H 6600 3600 60  0000 C CNN
	1    6600 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 3700 6750 3700
Wire Wire Line
	6350 3500 6750 3500
$Comp
L CAP C?
U 1 1 524D946B
P 6850 3500
F 0 "C?" H 6870 3470 50  0000 L TNN
F 1 "CAP" H 6875 3520 30  0000 L BNN
F 2 "~" H 6850 3500 60  0000 C CNN
F 3 "~" H 6850 3500 60  0000 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 524D9478
P 6850 3700
F 0 "C?" H 6870 3670 50  0000 L TNN
F 1 "CAP" H 6875 3720 30  0000 L BNN
F 2 "~" H 6850 3700 60  0000 C CNN
F 3 "~" H 6850 3700 60  0000 C CNN
	1    6850 3700
	1    0    0    -1  
$EndComp
Connection ~ 6600 3700
Connection ~ 6600 3500
Wire Wire Line
	6950 3500 7050 3500
Wire Wire Line
	7050 3500 7050 3700
Wire Wire Line
	7050 3700 6950 3700
$Comp
L DGND #PWR?
U 1 1 524D9525
P 7150 3650
F 0 "#PWR?" H 7150 3650 40  0001 C CNN
F 1 "DGND" H 7150 3580 40  0000 C CNN
F 2 "" H 7150 3650 60  0000 C CNN
F 3 "" H 7150 3650 60  0000 C CNN
	1    7150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3650 7150 3600
Wire Wire Line
	7150 3600 7050 3600
Connection ~ 7050 3600
Text Label 6550 3000 0    60   ~ 0
SWCLK
Text Label 6550 3200 0    60   ~ 0
SWO
Text Label 6550 3300 0    60   ~ 0
SWDIO
Wire Wire Line
	6550 3000 6350 3000
Wire Wire Line
	6350 3200 6550 3200
Wire Wire Line
	6550 3300 6350 3300
Wire Wire Line
	6450 3700 6450 3600
Wire Wire Line
	6450 3600 6350 3600
Wire Wire Line
	6350 3800 7650 3800
Wire Wire Line
	6350 3900 7650 3900
$Comp
L +3V #PWR?
U 1 1 524D992A
P 7550 3300
F 0 "#PWR?" H 7550 3260 30  0001 C CNN
F 1 "+3V" H 7550 3410 30  0000 C CNN
F 2 "" H 7550 3300 60  0000 C CNN
F 3 "" H 7550 3300 60  0000 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 524D9932
P 7550 3600
F 0 "R?" H 7620 3565 50  0000 L TNN
F 1 "RES" H 7550 3655 30  0000 C BNN
F 2 "~" H 7550 3600 60  0000 C CNN
F 3 "~" H 7550 3600 60  0000 C CNN
	1    7550 3600
	0    -1   -1   0   
$EndComp
$Comp
L RES R?
U 1 1 524D993F
P 7400 3600
F 0 "R?" H 7470 3565 50  0000 L TNN
F 1 "RES" H 7400 3655 30  0000 C BNN
F 2 "~" H 7400 3600 60  0000 C CNN
F 3 "~" H 7400 3600 60  0000 C CNN
	1    7400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 3300 7550 3450
Wire Wire Line
	7550 3400 7400 3400
Wire Wire Line
	7400 3400 7400 3450
Connection ~ 7550 3400
Wire Wire Line
	7400 3750 7400 3900
Connection ~ 7400 3900
Wire Wire Line
	7550 3750 7550 3800
Connection ~ 7550 3800
Text HLabel 7650 4600 2    60   Output ~ 0
CODEC_MCLK
Text HLabel 7650 4500 2    60   Input ~ 0
CODEC_SDIN
Text HLabel 7650 4200 2    60   Output ~ 0
CODEC_LRCK
Text HLabel 7650 4300 2    60   Output ~ 0
CODEC_BCLK
Text HLabel 7650 4100 2    60   Output ~ 0
CODEC_SDO
Wire Wire Line
	6350 4100 7650 4100
Wire Wire Line
	7650 4200 6350 4200
Wire Wire Line
	6350 4300 7650 4300
Wire Wire Line
	7650 4500 6350 4500
Wire Wire Line
	7650 4600 6350 4600
Text HLabel 7650 5200 2    60   Output ~ 0
UART0_TX
Text HLabel 7650 5100 2    60   Input ~ 0
UART0_RX
Wire Wire Line
	7650 5100 6350 5100
Wire Wire Line
	6350 5200 7650 5200
Text HLabel 4600 4100 0    60   BiDi ~ 0
USB_D+
Text HLabel 4600 4200 0    60   BiDi ~ 0
USB_D-
Wire Wire Line
	4600 4200 4850 4200
Wire Wire Line
	4850 4100 4600 4100
$Comp
L +5V #PWR?
U 1 1 524DA2C8
P 4100 2900
F 0 "#PWR?" H 4100 2990 20  0001 C CNN
F 1 "+5V" H 4100 2990 30  0000 C CNN
F 2 "" H 4100 2900 60  0000 C CNN
F 3 "" H 4100 2900 60  0000 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
Connection ~ 4300 3000
Wire Wire Line
	4100 2900 4100 3300
Wire Wire Line
	3250 3300 4850 3300
$Comp
L CAP C?
U 1 1 524DA378
P 3400 3550
F 0 "C?" H 3420 3520 50  0000 L TNN
F 1 "0.1u" H 3425 3570 30  0000 L BNN
F 2 "~" H 3400 3550 60  0000 C CNN
F 3 "~" H 3400 3550 60  0000 C CNN
	1    3400 3550
	0    1    1    0   
$EndComp
$Comp
L CAP C?
U 1 1 524DA385
P 3250 3550
F 0 "C?" H 3270 3520 50  0000 L TNN
F 1 "2.2u" H 3275 3570 30  0000 L BNN
F 2 "~" H 3250 3550 60  0000 C CNN
F 3 "~" H 3250 3550 60  0000 C CNN
	1    3250 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3300 3400 3450
Connection ~ 4100 3300
Wire Wire Line
	3250 3300 3250 3450
Connection ~ 3400 3300
Wire Wire Line
	3400 3650 3400 3950
Connection ~ 3550 3800
Wire Wire Line
	3250 3650 3250 3800
Connection ~ 3400 3800
Text Label 4600 4700 2    60   ~ 0
SWDIO
Wire Wire Line
	4600 4700 4850 4700
Wire Wire Line
	7650 4400 6350 4400
Text HLabel 7650 4900 2    60   Output ~ 0
CODEC_PDN
Wire Wire Line
	7650 4900 6350 4900
NoConn ~ 4850 4400
NoConn ~ 4850 4500
Text Notes 6400 4600 0    40   ~ 0
Fs*256: 25.476MHz (for 96kHz)
Text Notes 6400 4300 0    40   ~ 0
>Fs*48
Text Notes 6400 4200 0    40   ~ 0
Fs*2
$EndSCHEMATC
