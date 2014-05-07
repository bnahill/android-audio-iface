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
Sheet 2 6
Title "Android DPOAE Interface"
Date "6 may 2014"
Rev "2a"
Comp "Sana AudioPulse"
Comment1 "Ben Nahill <bnahill@gmail.com>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OPAMP_DUAL U1
U 3 1 523B0E5F
P 8100 1900
F 0 "U1" H 8175 1750 60  0000 L CNN
F 1 "LT6241" H 8150 2050 60  0000 L CNN
F 2 "~" H 8100 1950 60  0000 C CNN
F 3 "~" H 8100 1950 60  0000 C CNN
	3    8100 1900
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U2
U 1 1 523B0E67
P 4750 3550
F 0 "U2" H 4825 3400 60  0000 L CNN
F 1 "LTC6242" H 4800 3700 60  0000 L CNN
F 2 "~" H 4750 3550 60  0000 C CNN
F 3 "~" H 4750 3550 60  0000 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U2
U 4 1 523B0E7A
P 6350 3550
F 0 "U2" H 6425 3400 60  0000 L CNN
F 1 "LTC6242" H 6400 3700 60  0000 L CNN
F 2 "~" H 6350 3550 60  0000 C CNN
F 3 "~" H 6350 3550 60  0000 C CNN
	4    6350 3550
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U2
U 5 1 523B0E80
P 8600 1850
F 0 "U2" H 8675 1700 60  0000 L CNN
F 1 "LTC6242" H 8650 2000 60  0000 L CNN
F 2 "~" H 8600 1850 60  0000 C CNN
F 3 "~" H 8600 1850 60  0000 C CNN
	5    8600 1850
	1    0    0    -1  
$EndComp
$Comp
L CAP C8
U 1 1 523B0FFD
P 4600 5000
F 0 "C8" H 4620 4970 50  0000 L TNN
F 1 "0.1u" H 4625 5020 30  0000 L BNN
F 2 "" H 4600 5000 60  0000 C CNN
F 3 "" H 4600 5000 60  0000 C CNN
	1    4600 5000
	0    1    1    0   
$EndComp
$Comp
L RES R7
U 1 1 523B158E
P 3900 3650
F 0 "R7" H 3970 3615 50  0000 L TNN
F 1 "8.87k (1%)" H 3900 3705 30  0000 C BNN
F 2 "" H 3900 3650 60  0000 C CNN
F 3 "" H 3900 3650 60  0000 C CNN
	1    3900 3650
	1    0    0    -1  
$EndComp
$Comp
L RES R8
U 1 1 523B159B
P 4300 3650
F 0 "R8" H 4370 3615 50  0000 L TNN
F 1 "26.1k (1%)" H 4300 3705 30  0000 C BNN
F 2 "" H 4300 3650 60  0000 C CNN
F 3 "" H 4300 3650 60  0000 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
$Comp
L CAP C9
U 1 1 523B16A0
P 4750 3100
F 0 "C9" H 4770 3070 50  0000 L TNN
F 1 "2n" H 4775 3120 30  0000 L BNN
F 2 "" H 4750 3100 60  0000 C CNN
F 3 "" H 4750 3100 60  0000 C CNN
	1    4750 3100
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U2
U 2 1 523B17B7
P 2750 3650
F 0 "U2" H 2825 3500 60  0000 L CNN
F 1 "LTC6242" H 2800 3800 60  0000 L CNN
F 2 "~" H 2750 3650 60  0000 C CNN
F 3 "~" H 2750 3650 60  0000 C CNN
	2    2750 3650
	1    0    0    -1  
$EndComp
$Comp
L RES R9
U 1 1 523B17BD
P 5500 3650
F 0 "R9" H 5570 3615 50  0000 L TNN
F 1 "1.4k (1%)" H 5500 3705 30  0000 C BNN
F 2 "" H 5500 3650 60  0000 C CNN
F 3 "" H 5500 3650 60  0000 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L RES R10
U 1 1 523B17C3
P 5900 3650
F 0 "R10" H 5970 3615 50  0000 L TNN
F 1 "4.53k (1%)" H 5900 3705 30  0000 C BNN
F 2 "" H 5900 3650 60  0000 C CNN
F 3 "" H 5900 3650 60  0000 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
$Comp
L CAP C11
U 1 1 523B17D1
P 6350 3100
F 0 "C11" H 6370 3070 50  0000 L TNN
F 1 "33n" H 6375 3120 30  0000 L BNN
F 2 "" H 6350 3100 60  0000 C CNN
F 3 "" H 6350 3100 60  0000 C CNN
	1    6350 3100
	1    0    0    -1  
$EndComp
$Comp
L CAP C7
U 1 1 523B1832
P 4500 3900
F 0 "C7" H 4520 3870 50  0000 L TNN
F 1 "1n" H 4525 3920 30  0000 L BNN
F 2 "" H 4500 3900 60  0000 C CNN
F 3 "" H 4500 3900 60  0000 C CNN
	1    4500 3900
	0    -1   -1   0   
$EndComp
$Comp
L CAP C10
U 1 1 523B1838
P 6100 3900
F 0 "C10" H 6120 3870 50  0000 L TNN
F 1 "1n" H 6125 3920 30  0000 L BNN
F 2 "" H 6100 3900 60  0000 C CNN
F 3 "" H 6100 3900 60  0000 C CNN
	1    6100 3900
	0    -1   -1   0   
$EndComp
$Comp
L RES R13
U 1 1 523B1A3F
P 7300 4250
F 0 "R13" H 7370 4215 50  0000 L TNN
F 1 "10k (1%)" H 7300 4305 30  0000 C BNN
F 2 "" H 7300 4250 60  0000 C CNN
F 3 "" H 7300 4250 60  0000 C CNN
	1    7300 4250
	1    0    0    -1  
$EndComp
$Comp
L RES R16
U 1 1 523B1A4C
P 7800 3950
F 0 "R16" H 7870 3915 50  0000 L TNN
F 1 "10k (1%)" H 7800 4005 30  0000 C BNN
F 2 "" H 7800 3950 60  0000 C CNN
F 3 "" H 7800 3950 60  0000 C CNN
	1    7800 3950
	1    0    0    -1  
$EndComp
$Comp
L RES R18
U 1 1 523B1CA9
P 8350 3550
F 0 "R18" H 8420 3515 50  0000 L TNN
F 1 "22" H 8350 3605 30  0000 C BNN
F 2 "" H 8350 3550 60  0000 C CNN
F 3 "" H 8350 3550 60  0000 C CNN
	1    8350 3550
	1    0    0    -1  
$EndComp
$Comp
L RES R19
U 1 1 523B1CB6
P 8450 4350
F 0 "R19" H 8520 4315 50  0000 L TNN
F 1 "22" H 8450 4405 30  0000 C BNN
F 2 "" H 8450 4350 60  0000 C CNN
F 3 "" H 8450 4350 60  0000 C CNN
	1    8450 4350
	1    0    0    -1  
$EndComp
$Comp
L CAP C24
U 1 1 523B1CBE
P 8700 3950
F 0 "C24" H 8720 3920 50  0000 L TNN
F 1 "10n" H 8725 3970 30  0000 L BNN
F 2 "" H 8700 3950 60  0000 C CNN
F 3 "" H 8700 3950 60  0000 C CNN
	1    8700 3950
	0    -1   -1   0   
$EndComp
Text HLabel 1550 3750 0    60   Input ~ 0
MIC_IN
Text HLabel 8800 3550 2    60   Output ~ 0
MIC_DIFF_N
Text HLabel 8800 4350 2    60   Output ~ 0
MIC_DIFF_P
$Comp
L AGND_IN #PWR19
U 1 1 523BB57F
P 8100 2300
F 0 "#PWR19" H 8100 2300 40  0001 C CNN
F 1 "AGND_IN" H 8100 2230 50  0000 C CNN
F 2 "" H 8100 2300 60  0000 C CNN
F 3 "" H 8100 2300 60  0000 C CNN
	1    8100 2300
	1    0    0    -1  
$EndComp
$Comp
L AGND_IN #PWR21
U 1 1 523BB58F
P 8600 2300
F 0 "#PWR21" H 8600 2300 40  0001 C CNN
F 1 "AGND_IN" H 8600 2230 50  0000 C CNN
F 2 "" H 8600 2300 60  0000 C CNN
F 3 "" H 8600 2300 60  0000 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
$Comp
L VCOM_VRT #PWR15
U 1 1 523BBA77
P 7200 4450
F 0 "#PWR15" H 7200 4650 40  0001 C CNN
F 1 "VCOM_VRT" H 7200 4600 40  0000 C CNN
F 2 "" H 7200 4450 60  0000 C CNN
F 3 "" H 7200 4450 60  0000 C CNN
	1    7200 4450
	0    -1   -1   0   
$EndComp
$Comp
L VCOM_VRT #PWR12
U 1 1 523BBACF
P 4600 4750
F 0 "#PWR12" H 4600 4950 40  0001 C CNN
F 1 "VCOM_VRT" H 4600 4900 40  0000 C CNN
F 2 "" H 4600 4750 60  0000 C CNN
F 3 "" H 4600 4750 60  0000 C CNN
	1    4600 4750
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_DUAL U1
U 2 1 5245ECEA
P 7750 4350
F 0 "U1" H 7825 4200 60  0000 L CNN
F 1 "LT6241" H 7800 4500 60  0000 L CNN
F 2 "~" H 7750 4400 60  0000 C CNN
F 3 "~" H 7750 4400 60  0000 C CNN
	2    7750 4350
	1    0    0    -1  
$EndComp
$Comp
L RES R6
U 1 1 5245ECF0
P 2200 3250
F 0 "R6" H 2270 3215 50  0000 L TNN
F 1 "470 (1%)" H 2200 3305 30  0000 C BNN
F 2 "" H 2200 3250 60  0000 C CNN
F 3 "" H 2200 3250 60  0000 C CNN
	1    2200 3250
	1    0    0    -1  
$EndComp
$Comp
L RES Rf1
U 1 1 5245ECF6
P 2700 3250
F 0 "Rf1" H 2770 3215 50  0000 L TNN
F 1 "5.11k (1%)" H 2700 3305 30  0000 C BNN
F 2 "" H 2700 3250 60  0000 C CNN
F 3 "" H 2700 3250 60  0000 C CNN
	1    2700 3250
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U2
U 3 1 5248471B
P 3300 4750
F 0 "U2" H 3375 4600 60  0000 L CNN
F 1 "LTC6242" H 3350 4900 60  0000 L CNN
F 2 "~" H 3300 4750 60  0000 C CNN
F 3 "~" H 3300 4750 60  0000 C CNN
	3    3300 4750
	1    0    0    -1  
$EndComp
$Comp
L RES R11
U 1 1 524847D3
P 7000 5050
F 0 "R11" H 7070 5015 50  0000 L TNN
F 1 "220 (1%)" H 7000 5105 30  0000 C BNN
F 2 "~" H 7000 5050 60  0000 C CNN
F 3 "~" H 7000 5050 60  0000 C CNN
	1    7000 5050
	1    0    0    -1  
$EndComp
$Comp
L RES R14
U 1 1 524847D9
P 7550 5050
F 0 "R14" H 7620 5015 50  0000 L TNN
F 1 "220 (1%)" H 7550 5105 30  0000 C BNN
F 2 "~" H 7550 5050 60  0000 C CNN
F 3 "~" H 7550 5050 60  0000 C CNN
	1    7550 5050
	1    0    0    -1  
$EndComp
$Comp
L CAP C14
U 1 1 524847E1
P 6750 5500
F 0 "C14" H 6770 5470 50  0000 L TNN
F 1 "10u 6.3V" H 6775 5520 30  0000 L BNN
F 2 "~" H 6750 5500 60  0000 C CNN
F 3 "~" H 6750 5500 60  0000 C CNN
	1    6750 5500
	1    0    0    -1  
$EndComp
$Comp
L RES R12
U 1 1 52485104
P 7050 5750
F 0 "R12" H 7120 5715 50  0000 L TNN
F 1 "250k" H 7050 5805 30  0000 C BNN
F 2 "~" H 7050 5750 60  0000 C CNN
F 3 "~" H 7050 5750 60  0000 C CNN
	1    7050 5750
	0    -1   -1   0   
$EndComp
Text HLabel 8650 5400 2    60   Output ~ 0
EXT_DIFF_N
Text HLabel 8650 6000 2    60   Output ~ 0
EXT_DIFF_P
Text HLabel 6550 5500 0    60   Input ~ 0
EXT_IN
$Comp
L RES R17
U 1 1 52485A6B
P 8200 5400
F 0 "R17" H 8270 5365 50  0000 L TNN
F 1 "22" H 8200 5455 30  0000 C BNN
F 2 "" H 8200 5400 60  0000 C CNN
F 3 "" H 8200 5400 60  0000 C CNN
	1    8200 5400
	1    0    0    -1  
$EndComp
$Comp
L CAP C23
U 1 1 52485A77
P 8550 5700
F 0 "C23" H 8570 5670 50  0000 L TNN
F 1 "10n" H 8575 5720 30  0000 L BNN
F 2 "" H 8550 5700 60  0000 C CNN
F 3 "" H 8550 5700 60  0000 C CNN
	1    8550 5700
	0    -1   -1   0   
$EndComp
$Comp
L CAP C6
U 1 1 523B0FF7
P 4350 5000
F 0 "C6" H 4370 4970 50  0000 L TNN
F 1 "1u" H 4375 5020 30  0000 L BNN
F 2 "" H 4350 5000 60  0000 C CNN
F 3 "" H 4350 5000 60  0000 C CNN
	1    4350 5000
	0    1    1    0   
$EndComp
$Comp
L CPOL C5
U 1 1 524EBCFF
P 4100 5000
F 0 "C5" H 4130 4970 50  0000 L TNN
F 1 "10u 4V" H 4130 5020 30  0000 L BNN
F 2 "~" H 4100 5000 60  0000 C CNN
F 3 "~" H 4100 5000 60  0000 C CNN
	1    4100 5000
	0    1    1    0   
$EndComp
$Comp
L CPOL C19
U 1 1 524EBEC0
P 7300 1900
F 0 "C19" H 7330 1870 50  0000 L TNN
F 1 "100u 6.3V" H 7330 1920 30  0000 L BNN
F 2 "~" H 7300 1900 60  0000 C CNN
F 3 "~" H 7300 1900 60  0000 C CNN
	1    7300 1900
	0    1    1    0   
$EndComp
$Comp
L CPOL C21
U 1 1 524EBEC6
P 7500 1900
F 0 "C21" H 7530 1870 50  0000 L TNN
F 1 "10u 6.3V" H 7530 1920 30  0000 L BNN
F 2 "~" H 7500 1900 60  0000 C CNN
F 3 "~" H 7500 1900 60  0000 C CNN
	1    7500 1900
	0    1    1    0   
$EndComp
$Comp
L AGND_IN #PWR17
U 1 1 524EBECC
P 7400 2300
F 0 "#PWR17" H 7400 2300 40  0001 C CNN
F 1 "AGND_IN" H 7400 2230 50  0000 C CNN
F 2 "" H 7400 2300 60  0000 C CNN
F 3 "" H 7400 2300 60  0000 C CNN
	1    7400 2300
	1    0    0    -1  
$EndComp
$Comp
L CAP C12
U 1 1 524E2EF7
P 6650 5050
F 0 "C12" H 6680 5020 50  0000 L TNN
F 1 "10u 6.3V" H 6680 5070 30  0000 L BNN
F 2 "~" H 6650 5050 60  0000 C CNN
F 3 "~" H 6650 5050 60  0000 C CNN
	1    6650 5050
	-1   0    0    1   
$EndComp
Text Notes 6950 4950 0    40   ~ 0
Values for unity gain
$Comp
L CAP C18
U 1 1 524E3DF9
P 7150 1900
F 0 "C18" H 7170 1870 50  0000 L TNN
F 1 "1u 6.3V" H 7175 1920 30  0000 L BNN
F 2 "" H 7150 1900 60  0000 C CNN
F 3 "" H 7150 1900 60  0000 C CNN
	1    7150 1900
	0    1    1    0   
$EndComp
$Comp
L CAP C13
U 1 1 524E3E0B
P 6700 1900
F 0 "C13" H 6720 1870 50  0000 L TNN
F 1 "0.1u 6.3V" H 6725 1920 30  0000 L BNN
F 2 "" H 6700 1900 60  0000 C CNN
F 3 "" H 6700 1900 60  0000 C CNN
	1    6700 1900
	0    1    1    0   
$EndComp
$Comp
L CAP C15
U 1 1 524E3E21
P 6850 1900
F 0 "C15" H 6870 1870 50  0000 L TNN
F 1 "0.1u 6.3V" H 6875 1920 30  0000 L BNN
F 2 "" H 6850 1900 60  0000 C CNN
F 3 "" H 6850 1900 60  0000 C CNN
	1    6850 1900
	0    1    1    0   
$EndComp
$Comp
L CAP C17
U 1 1 524E3E2D
P 7000 1900
F 0 "C17" H 7020 1870 50  0000 L TNN
F 1 "1u 6.3V" H 7025 1920 30  0000 L BNN
F 2 "" H 7000 1900 60  0000 C CNN
F 3 "" H 7000 1900 60  0000 C CNN
	1    7000 1900
	0    1    1    0   
$EndComp
$Comp
L +5VA #PWR16
U 1 1 524E7127
P 7400 1500
F 0 "#PWR16" H 7400 1630 20  0001 C CNN
F 1 "+5VA" H 7400 1600 30  0000 C CNN
F 2 "" H 7400 1500 60  0000 C CNN
F 3 "" H 7400 1500 60  0000 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR18
U 1 1 524E713E
P 8100 1500
F 0 "#PWR18" H 8100 1630 20  0001 C CNN
F 1 "+5VA" H 8100 1600 30  0000 C CNN
F 2 "" H 8100 1500 60  0000 C CNN
F 3 "" H 8100 1500 60  0000 C CNN
	1    8100 1500
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR20
U 1 1 524E7144
P 8600 1500
F 0 "#PWR20" H 8600 1630 20  0001 C CNN
F 1 "+5VA" H 8600 1600 30  0000 C CNN
F 2 "" H 8600 1500 60  0000 C CNN
F 3 "" H 8600 1500 60  0000 C CNN
	1    8600 1500
	1    0    0    -1  
$EndComp
Text Notes 4200 2800 0    60   ~ 0
4th-order Sallen-Key Chebyshev low-pass
Text Notes 7150 4650 0    60   ~ 0
Unity-gain inverter\nfor differential output
$Comp
L OPAMP_DUAL U1
U 1 1 534E80BF
P 7500 5400
F 0 "U1" H 7575 5250 60  0000 L CNN
F 1 "LT6241" H 7550 5550 60  0000 L CNN
F 2 "~" H 7500 5450 60  0000 C CNN
F 3 "~" H 7500 5450 60  0000 C CNN
	1    7500 5400
	1    0    0    -1  
$EndComp
$Comp
L RES R4
U 1 1 534E82CF
P 2500 4600
F 0 "R4" H 2570 4565 50  0000 L TNN
F 1 "100k (1%)" H 2500 4655 30  0000 C BNN
F 2 "" H 2500 4600 60  0000 C CNN
F 3 "" H 2500 4600 60  0000 C CNN
	1    2500 4600
	0    -1   -1   0   
$EndComp
$Comp
L RES R5
U 1 1 534E82D5
P 2500 5100
F 0 "R5" H 2570 5065 50  0000 L TNN
F 1 "100k (1%)" H 2500 5155 30  0000 C BNN
F 2 "" H 2500 5100 60  0000 C CNN
F 3 "" H 2500 5100 60  0000 C CNN
	1    2500 5100
	0    -1   -1   0   
$EndComp
$Comp
L AGND_IN #PWR8
U 1 1 534E82DB
P 2500 5450
F 0 "#PWR8" H 2500 5450 40  0001 C CNN
F 1 "AGND_IN" H 2500 5380 50  0000 C CNN
F 2 "" H 2500 5450 60  0000 C CNN
F 3 "" H 2500 5450 60  0000 C CNN
	1    2500 5450
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR7
U 1 1 534E85DE
P 2500 4350
F 0 "#PWR7" H 2500 4480 20  0001 C CNN
F 1 "+5VA" H 2500 4450 30  0000 C CNN
F 2 "" H 2500 4350 60  0000 C CNN
F 3 "" H 2500 4350 60  0000 C CNN
	1    2500 4350
	1    0    0    -1  
$EndComp
$Comp
L CAP C3
U 1 1 534E87C8
P 2700 3000
F 0 "C3" H 2720 2970 50  0000 L TNN
F 1 "10p" H 2725 3020 30  0000 L BNN
F 2 "~" H 2700 3100 60  0000 C CNN
F 3 "~" H 2700 3000 60  0000 C CNN
	1    2700 3000
	1    0    0    -1  
$EndComp
$Comp
L CAP C16
U 1 1 534E8B5E
P 6950 3550
F 0 "C16" H 6970 3520 50  0000 L TNN
F 1 "1u" H 6975 3570 30  0000 L BNN
F 2 "~" H 6950 3550 60  0000 C CNN
F 3 "~" H 6950 3550 60  0000 C CNN
	1    6950 3550
	1    0    0    -1  
$EndComp
$Comp
L RES R15
U 1 1 534E8F70
P 3600 3400
F 0 "R15" H 3670 3365 50  0000 L TNN
F 1 "220k" H 3600 3455 30  0000 C BNN
F 2 "~" H 3600 3400 60  0000 C CNN
F 3 "~" H 3600 3400 60  0000 C CNN
	1    3600 3400
	0    -1   -1   0   
$EndComp
$Comp
L VCOM_VRT #PWR9
U 1 1 534E8F7D
P 3600 3150
F 0 "#PWR9" H 3600 3350 40  0001 C CNN
F 1 "VCOM_VRT" H 3600 3300 40  0000 C CNN
F 2 "" H 3600 3150 60  0000 C CNN
F 3 "" H 3600 3150 60  0000 C CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
$Comp
L CAP C22
U 1 1 534E92C4
P 7800 3750
F 0 "C22" H 7820 3720 50  0000 L TNN
F 1 "10p" H 7825 3770 30  0000 L BNN
F 2 "~" H 7800 3750 60  0000 C CNN
F 3 "~" H 7800 3750 60  0000 C CNN
	1    7800 3750
	1    0    0    -1  
$EndComp
$Comp
L CAP C20
U 1 1 5357F5D5
P 7300 4050
F 0 "C20" H 7320 4020 50  0000 L TNN
F 1 "10p" H 7325 4070 30  0000 L BNN
F 2 "~" H 7300 4050 60  0000 C CNN
F 3 "~" H 7300 4050 60  0000 C CNN
	1    7300 4050
	1    0    0    -1  
$EndComp
$Comp
L TP TP3
U 1 1 5357F93F
P 8700 4650
F 0 "TP3" H 8700 4550 60  0000 C CNN
F 1 "TP" H 8700 4750 60  0000 C CNN
F 2 "~" H 8700 4650 60  0000 C CNN
F 3 "~" H 8700 4650 60  0000 C CNN
	1    8700 4650
	0    1    1    0   
$EndComp
$Comp
L TP TP2
U 1 1 5357F9F4
P 8700 3250
F 0 "TP2" H 8700 3150 60  0000 C CNN
F 1 "TP" H 8700 3350 60  0000 C CNN
F 2 "~" H 8700 3250 60  0000 C CNN
F 3 "~" H 8700 3250 60  0000 C CNN
	1    8700 3250
	0    -1   -1   0   
$EndComp
$Comp
L VCOM_VRT #PWR13
U 1 1 5357FD42
P 5700 5900
F 0 "#PWR13" H 5700 6100 40  0001 C CNN
F 1 "VCOM_VRT" H 5700 6050 40  0000 C CNN
F 2 "~" H 5700 5900 60  0000 C CNN
F 3 "~" H 5700 5900 60  0000 C CNN
	1    5700 5900
	1    0    0    -1  
$EndComp
$Comp
L CPOL C4
U 1 1 53580671
P 3900 5000
F 0 "C4" H 3930 4970 50  0000 L TNN
F 1 "100u 6.3V" H 3930 5020 30  0000 L BNN
F 2 "~" H 3900 5000 60  0000 C CNN
F 3 "~" H 3900 5000 60  0000 C CNN
	1    3900 5000
	0    1    1    0   
$EndComp
Connection ~ 4100 5250
Wire Wire Line
	3900 5100 3900 5250
Connection ~ 3900 4750
Wire Wire Line
	3900 4750 3900 4900
Wire Wire Line
	6000 5050 6000 6000
Wire Wire Line
	5700 5900 5700 6000
Wire Wire Line
	5700 6000 8650 6000
Connection ~ 7500 4050
Wire Wire Line
	7500 4050 7400 4050
Connection ~ 7100 4050
Wire Wire Line
	7200 4050 7100 4050
Wire Notes Line
	3700 2650 7000 2650
Wire Notes Line
	3700 2650 3700 2950
Wire Wire Line
	6050 3250 6750 3250
Wire Wire Line
	6750 3100 6450 3100
Wire Wire Line
	7100 3550 7100 4250
Connection ~ 6750 3550
Connection ~ 6750 3250
Wire Wire Line
	6750 3100 6750 3550
Connection ~ 8200 3950
Wire Wire Line
	7900 3750 8200 3750
Connection ~ 7500 3950
Wire Wire Line
	7700 3750 7500 3750
Connection ~ 7700 3550
Wire Wire Line
	7700 3550 7700 3450
Wire Wire Line
	3600 3150 3600 3250
Wire Wire Line
	6650 3550 6850 3550
Wire Wire Line
	2800 3000 3150 3000
Wire Wire Line
	2600 3000 2450 3000
Wire Wire Line
	3700 4500 3700 4750
Wire Wire Line
	3000 4500 3700 4500
Wire Wire Line
	3000 4650 3000 4500
Wire Wire Line
	3100 4650 3000 4650
Connection ~ 2500 4850
Wire Wire Line
	2300 4850 3100 4850
Wire Wire Line
	2500 4750 2500 4950
Wire Wire Line
	2500 5250 2500 5450
Wire Wire Line
	2500 4350 2500 4450
Connection ~ 6000 6000
Wire Wire Line
	2850 3250 3150 3250
Wire Notes Line
	8300 4800 8300 4550
Wire Notes Line
	6900 4800 8300 4800
Wire Notes Line
	6900 4550 6900 4800
Wire Notes Line
	7000 2650 7000 2950
Connection ~ 6850 2200
Wire Wire Line
	6700 2000 6700 2200
Connection ~ 7000 2200
Wire Wire Line
	6850 2000 6850 2200
Connection ~ 7150 2200
Wire Wire Line
	7000 2200 7000 2000
Connection ~ 7300 2200
Wire Wire Line
	7150 2200 7150 2000
Connection ~ 6850 1600
Wire Wire Line
	6700 1800 6700 1600
Connection ~ 7000 1600
Wire Wire Line
	6850 1800 6850 1600
Connection ~ 7150 1600
Wire Wire Line
	7000 1600 7000 1800
Connection ~ 7300 1600
Wire Wire Line
	7150 1600 7150 1800
Connection ~ 7400 2200
Wire Wire Line
	7300 2200 7300 2000
Wire Wire Line
	7400 2200 7400 2300
Wire Wire Line
	6700 2200 7500 2200
Wire Wire Line
	7500 2200 7500 2000
Connection ~ 7400 1600
Wire Wire Line
	7500 1600 7500 1800
Wire Wire Line
	6700 1600 7500 1600
Wire Wire Line
	7400 1600 7400 1500
Wire Wire Line
	7300 1600 7300 1800
Wire Wire Line
	4100 5100 4100 5250
Connection ~ 4100 4750
Wire Wire Line
	4100 4750 4100 4900
Connection ~ 8550 6000
Wire Wire Line
	8550 5800 8550 6000
Connection ~ 8550 5400
Wire Wire Line
	8550 5400 8550 5600
Wire Wire Line
	8350 5400 8650 5400
Wire Wire Line
	6550 5500 6650 5500
Connection ~ 7050 6000
Connection ~ 7950 5400
Wire Wire Line
	7050 5600 7050 5500
Wire Wire Line
	7050 6000 7050 5900
Wire Wire Line
	6000 5050 6550 5050
Wire Wire Line
	6750 5050 6850 5050
Wire Wire Line
	7800 5400 8050 5400
Wire Wire Line
	7950 5050 7950 5400
Wire Wire Line
	7700 5050 7950 5050
Connection ~ 7250 5050
Wire Wire Line
	7150 5050 7400 5050
Wire Wire Line
	7250 5300 7250 5050
Wire Wire Line
	7300 5300 7250 5300
Connection ~ 7050 5500
Wire Wire Line
	6850 5500 7300 5500
Wire Wire Line
	1550 3750 2550 3750
Connection ~ 3150 3250
Connection ~ 3150 3650
Wire Wire Line
	1500 3250 1650 3250
Wire Wire Line
	1500 3350 1500 3250
Wire Wire Line
	1850 3250 2050 3250
Connection ~ 2450 3250
Wire Wire Line
	3150 3000 3150 3650
Wire Wire Line
	2350 3250 2550 3250
Wire Wire Line
	2450 3000 2450 3550
Wire Wire Line
	2450 3550 2550 3550
Connection ~ 8700 4350
Connection ~ 8700 3550
Wire Wire Line
	8500 3550 8800 3550
Wire Wire Line
	8700 3350 8700 3850
Connection ~ 8200 4350
Wire Wire Line
	8600 4350 8800 4350
Wire Wire Line
	8700 4050 8700 4550
Connection ~ 7100 3550
Wire Wire Line
	7100 4250 7150 4250
Connection ~ 7500 4250
Wire Wire Line
	7450 4250 7550 4250
Wire Wire Line
	8050 4350 8300 4350
Wire Wire Line
	8200 3750 8200 4350
Wire Wire Line
	7950 3950 8200 3950
Wire Wire Line
	7500 3950 7650 3950
Wire Wire Line
	7500 3750 7500 4250
Wire Wire Line
	7200 4450 7550 4450
Wire Wire Line
	6100 4000 6100 4100
Connection ~ 6100 3650
Wire Wire Line
	6100 3800 6100 3650
Connection ~ 4500 3650
Wire Wire Line
	4500 3800 4500 3650
Wire Wire Line
	4500 4100 4500 4000
Connection ~ 5200 3550
Connection ~ 5700 3650
Wire Wire Line
	5700 3100 5700 3650
Wire Wire Line
	6250 3100 5700 3100
Wire Wire Line
	6050 3650 6150 3650
Wire Wire Line
	7050 3550 8200 3550
Wire Wire Line
	6050 3450 6050 3250
Wire Wire Line
	6150 3450 6050 3450
Wire Wire Line
	5650 3650 5750 3650
Wire Wire Line
	5200 3650 5350 3650
Connection ~ 4100 3650
Wire Wire Line
	4100 3100 4100 3650
Wire Wire Line
	4650 3100 4100 3100
Connection ~ 5200 3250
Wire Wire Line
	4850 3100 5200 3100
Wire Wire Line
	4450 3650 4550 3650
Wire Wire Line
	5200 3550 5050 3550
Wire Wire Line
	5200 3100 5200 3650
Wire Wire Line
	4450 3250 5200 3250
Wire Wire Line
	4450 3450 4450 3250
Wire Wire Line
	4550 3450 4450 3450
Wire Wire Line
	4050 3650 4150 3650
Wire Wire Line
	3050 3650 3300 3650
Connection ~ 4350 4750
Wire Wire Line
	4350 4750 4350 4900
Connection ~ 3700 4750
Wire Wire Line
	4600 4750 4600 4900
Wire Wire Line
	3600 4750 4600 4750
Connection ~ 4350 5250
Wire Wire Line
	4350 5250 4350 5100
Wire Wire Line
	4600 5250 4600 5100
Wire Wire Line
	3900 5250 4600 5250
Wire Wire Line
	8600 2200 8600 2300
Wire Wire Line
	8600 1500 8600 1650
Wire Wire Line
	8100 2200 8100 2300
Wire Wire Line
	8100 1500 8100 1600
$Comp
L CAP C2
U 1 1 53580DA8
P 1750 3250
F 0 "C2" H 1780 3220 50  0000 L TNN
F 1 "10u 6.3V" H 1780 3270 30  0000 L BNN
F 2 "~" H 1750 3250 60  0000 C CNN
F 3 "~" H 1750 3250 60  0000 C CNN
	1    1750 3250
	-1   0    0    1   
$EndComp
$Comp
L AGND_IN #PWR10
U 1 1 5359DFBD
P 4200 5450
F 0 "#PWR10" H 4200 5450 40  0001 C CNN
F 1 "AGND_IN" H 4200 5380 50  0000 C CNN
F 2 "" H 4200 5450 60  0000 C CNN
F 3 "" H 4200 5450 60  0000 C CNN
	1    4200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5450 4200 5250
Connection ~ 4200 5250
$Comp
L CAP C69
U 1 1 535C1599
P 2300 5100
F 0 "C69" H 2320 5070 50  0000 L TNN
F 1 "0.1u" H 2325 5120 30  0000 L BNN
F 2 "~" H 2300 5100 60  0000 C CNN
F 3 "~" H 2300 5100 60  0000 C CNN
	1    2300 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 5000 2300 4850
Wire Wire Line
	2300 5200 2300 5350
Wire Wire Line
	2300 5350 2500 5350
Connection ~ 2500 5350
$Comp
L AGND_IN #PWR11
U 1 1 535F1A3A
P 4500 4100
F 0 "#PWR11" H 4500 4100 40  0001 C CNN
F 1 "AGND_IN" H 4500 4030 50  0000 C CNN
F 2 "" H 4500 4100 60  0000 C CNN
F 3 "" H 4500 4100 60  0000 C CNN
	1    4500 4100
	1    0    0    -1  
$EndComp
$Comp
L AGND_IN #PWR14
U 1 1 535F1A56
P 6100 4100
F 0 "#PWR14" H 6100 4100 40  0001 C CNN
F 1 "AGND_IN" H 6100 4030 50  0000 C CNN
F 2 "" H 6100 4100 60  0000 C CNN
F 3 "" H 6100 4100 60  0000 C CNN
	1    6100 4100
	1    0    0    -1  
$EndComp
$Comp
L AGND_IN #PWR6
U 1 1 535F1C48
P 1500 3350
F 0 "#PWR6" H 1500 3350 40  0001 C CNN
F 1 "AGND_IN" H 1500 3280 50  0000 C CNN
F 2 "" H 1500 3350 60  0000 C CNN
F 3 "" H 1500 3350 60  0000 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
$Comp
L CAP C70
U 1 1 53685897
P 3400 3650
F 0 "C70" H 3420 3620 50  0000 L TNN
F 1 "0.01u" H 3425 3670 30  0000 L BNN
F 2 "~" H 3400 3750 60  0000 C CNN
F 3 "~" H 3400 3650 60  0000 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3650 3750 3650
Wire Wire Line
	3600 3650 3600 3550
Connection ~ 3600 3650
$EndSCHEMATC
