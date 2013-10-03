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
Sheet 2 5
Title "Android DPOAE Interface"
Date "3 oct 2013"
Rev "1a"
Comp "Sana AudioPulse"
Comment1 "Ben Nahill <bnahill@gmail.com>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OPAMP_DUAL U?
U 1 1 523B0E52
P 4250 3700
F 0 "U?" H 4325 3550 60  0000 L CNN
F 1 "LT6201" H 4300 3850 60  0000 L CNN
F 2 "~" H 4250 3750 60  0000 C CNN
F 3 "~" H 4250 3750 60  0000 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_DUAL U?
U 3 1 523B0E5F
P 8100 1900
F 0 "U?" H 8175 1750 60  0000 L CNN
F 1 "LT6201" H 8150 2050 60  0000 L CNN
F 2 "~" H 8100 1950 60  0000 C CNN
F 3 "~" H 8100 1950 60  0000 C CNN
	3    8100 1900
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U?
U 1 1 523B0E67
P 5900 4200
F 0 "U?" H 5975 4050 60  0000 L CNN
F 1 "LTC6242" H 5950 4350 60  0000 L CNN
F 2 "~" H 5900 4200 60  0000 C CNN
F 3 "~" H 5900 4200 60  0000 C CNN
	1    5900 4200
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U?
U 3 1 523B0E7A
P 8650 5000
F 0 "U?" H 8725 4850 60  0000 L CNN
F 1 "LTC6242" H 8700 5150 60  0000 L CNN
F 2 "~" H 8650 5000 60  0000 C CNN
F 3 "~" H 8650 5000 60  0000 C CNN
	3    8650 5000
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_QUAD U?
U 5 1 523B0E80
P 8600 1850
F 0 "U?" H 8675 1700 60  0000 L CNN
F 1 "LTC6242" H 8650 2000 60  0000 L CNN
F 2 "~" H 8600 1850 60  0000 C CNN
F 3 "~" H 8600 1850 60  0000 C CNN
	5    8600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1500 8100 1600
Wire Wire Line
	8100 2200 8100 2300
Wire Wire Line
	8600 1500 8600 1650
Wire Wire Line
	8600 2200 8600 2300
$Comp
L RES R?
U 1 1 523B0F77
P 3700 3600
F 0 "R?" H 3770 3565 50  0000 L TNN
F 1 "RES" H 3700 3655 30  0000 C BNN
F 2 "" H 3700 3600 60  0000 C CNN
F 3 "" H 3700 3600 60  0000 C CNN
	1    3700 3600
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 523B0F84
P 4300 3300
F 0 "R?" H 4370 3265 50  0000 L TNN
F 1 "RES" H 4300 3355 30  0000 C BNN
F 2 "" H 4300 3300 60  0000 C CNN
F 3 "" H 4300 3300 60  0000 C CNN
	1    4300 3300
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 523B0F92
P 4300 3050
F 0 "C?" H 4320 3020 50  0000 L TNN
F 1 "CAP" H 4325 3070 30  0000 L BNN
F 2 "" H 4300 3050 60  0000 C CNN
F 3 "" H 4300 3050 60  0000 C CNN
	1    4300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1150 5050 1250
Wire Wire Line
	5050 2050 5050 2150
Wire Wire Line
	5050 2150 5050 2250
$Comp
L RES R?
U 1 1 523B0FAB
P 5050 1400
F 0 "R?" H 5120 1365 50  0000 L TNN
F 1 "1k (1%)" H 5050 1455 30  0000 C BNN
F 2 "" H 5050 1400 60  0000 C CNN
F 3 "" H 5050 1400 60  0000 C CNN
	1    5050 1400
	0    -1   -1   0   
$EndComp
$Comp
L RES R?
U 1 1 523B0FB8
P 5050 1900
F 0 "R?" H 5120 1865 50  0000 L TNN
F 1 "1k (1%)" H 5050 1955 30  0000 C BNN
F 2 "" H 5050 1900 60  0000 C CNN
F 3 "" H 5050 1900 60  0000 C CNN
	1    5050 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1550 5050 1650
Wire Wire Line
	5050 1650 5050 1750
$Comp
L CAP C?
U 1 1 523B0FEA
P 5400 1900
F 0 "C?" H 5420 1870 50  0000 L TNN
F 1 "10u" H 5425 1920 30  0000 L BNN
F 2 "" H 5400 1900 60  0000 C CNN
F 3 "" H 5400 1900 60  0000 C CNN
	1    5400 1900
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 523B0FF7
P 5650 1900
F 0 "C?" H 5670 1870 50  0000 L TNN
F 1 "1u" H 5675 1920 30  0000 L BNN
F 2 "" H 5650 1900 60  0000 C CNN
F 3 "" H 5650 1900 60  0000 C CNN
	1    5650 1900
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 523B0FFD
P 5900 1900
F 0 "C?" H 5920 1870 50  0000 L TNN
F 1 "0.1u" H 5925 1920 30  0000 L BNN
F 2 "" H 5900 1900 60  0000 C CNN
F 3 "" H 5900 1900 60  0000 C CNN
	1    5900 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 2150 5400 2150
Wire Wire Line
	5400 2150 5650 2150
Wire Wire Line
	5650 2150 5900 2150
Wire Wire Line
	5900 2150 5900 2000
Connection ~ 5050 2150
Wire Wire Line
	5650 2000 5650 2150
Connection ~ 5650 2150
Wire Wire Line
	5400 2000 5400 2150
Connection ~ 5400 2150
Wire Wire Line
	5050 1650 5400 1650
Wire Wire Line
	5400 1650 5650 1650
Wire Wire Line
	5650 1650 5900 1650
Wire Wire Line
	5900 1650 5900 1800
Connection ~ 5050 1650
Wire Wire Line
	5650 1800 5650 1650
Connection ~ 5650 1650
Wire Wire Line
	5400 1800 5400 1650
Connection ~ 5400 1650
Wire Wire Line
	3700 3800 4050 3800
Wire Wire Line
	3850 3600 3950 3600
Wire Wire Line
	3950 3600 4050 3600
Wire Wire Line
	3950 3050 3950 3300
Wire Wire Line
	3950 3300 3950 3600
Wire Wire Line
	3950 3300 4150 3300
Connection ~ 3950 3600
Wire Wire Line
	4450 3300 4800 3300
Wire Wire Line
	4800 3050 4800 3300
Wire Wire Line
	4800 3300 4800 3700
Wire Wire Line
	4800 3700 4800 3850
Wire Wire Line
	4800 3700 4550 3700
Wire Wire Line
	3950 3050 4200 3050
Connection ~ 3950 3300
Wire Wire Line
	4400 3050 4800 3050
Connection ~ 4800 3300
Wire Wire Line
	3200 3600 3300 3600
Wire Wire Line
	3300 3600 3400 3600
Wire Wire Line
	3400 3600 3550 3600
$Comp
L NPN Q?
U 1 1 523B11D8
P 1650 3050
F 0 "Q?" H 1650 2900 50  0000 R CNN
F 1 "BC550" H 1650 3200 50  0000 R CNN
F 2 "~" H 1650 3050 60  0000 C CNN
F 3 "~" H 1650 3050 60  0000 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
$Comp
L NPN Q?
U 1 1 523B11E5
P 2650 3350
F 0 "Q?" H 2650 3200 50  0000 R CNN
F 1 "BC550" H 2650 3500 50  0000 R CNN
F 2 "~" H 2650 3350 60  0000 C CNN
F 3 "~" H 2650 3350 60  0000 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 523B11ED
P 3100 3600
F 0 "C?" H 3120 3570 50  0000 L TNN
F 1 "CAP" H 3125 3620 30  0000 L BNN
F 2 "" H 3100 3600 60  0000 C CNN
F 3 "" H 3100 3600 60  0000 C CNN
	1    3100 3600
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 523B11FC
P 3300 3900
F 0 "R?" H 3370 3865 50  0000 L TNN
F 1 "RES" H 3300 3955 30  0000 C BNN
F 2 "" H 3300 3900 60  0000 C CNN
F 3 "" H 3300 3900 60  0000 C CNN
	1    3300 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 4200 3300 4050
Wire Wire Line
	3300 3750 3300 3600
Connection ~ 3300 3600
Wire Wire Line
	1750 3250 1750 3350
Wire Wire Line
	1750 3350 1750 3600
Wire Wire Line
	1750 3350 1900 3350
Wire Wire Line
	1900 3350 2000 3350
Wire Wire Line
	2000 3350 2100 3350
$Comp
L RES R?
U 1 1 523B12BD
P 1750 3750
F 0 "R?" H 1820 3715 50  0000 L TNN
F 1 "RES" H 1750 3805 30  0000 C BNN
F 2 "" H 1750 3750 60  0000 C CNN
F 3 "" H 1750 3750 60  0000 C CNN
	1    1750 3750
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 523B12D6
P 1900 3750
F 0 "C?" H 1920 3720 50  0000 L TNN
F 1 "CAP" H 1925 3770 30  0000 L BNN
F 2 "" H 1900 3750 60  0000 C CNN
F 3 "" H 1900 3750 60  0000 C CNN
	1    1900 3750
	0    -1   -1   0   
$EndComp
$Comp
L RES R?
U 1 1 523B12E3
P 2750 3900
F 0 "R?" H 2820 3865 50  0000 L TNN
F 1 "RES" H 2750 3955 30  0000 C BNN
F 2 "" H 2750 3900 60  0000 C CNN
F 3 "" H 2750 3900 60  0000 C CNN
	1    2750 3900
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 523B12E9
P 2900 3900
F 0 "C?" H 2920 3870 50  0000 L TNN
F 1 "CAP" H 2925 3920 30  0000 L BNN
F 2 "" H 2900 3900 60  0000 C CNN
F 3 "" H 2900 3900 60  0000 C CNN
	1    2900 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 3550 2750 3600
Wire Wire Line
	2750 3600 2750 3750
Wire Wire Line
	2750 3600 2900 3600
Wire Wire Line
	2900 3600 3000 3600
Connection ~ 2750 3600
Wire Wire Line
	2900 3600 2900 3800
Connection ~ 2900 3600
Wire Wire Line
	2900 4200 2900 4000
Wire Wire Line
	1750 4200 1900 4200
Wire Wire Line
	1900 4200 2350 4200
Wire Wire Line
	2350 4200 2750 4200
Wire Wire Line
	2750 4200 2900 4200
Wire Wire Line
	2750 4200 2750 4050
Wire Wire Line
	1900 3850 1900 4200
Connection ~ 2750 4200
Wire Wire Line
	1750 3900 1750 4200
Connection ~ 1900 4200
Wire Wire Line
	1900 3350 1900 3650
Connection ~ 1900 3350
Connection ~ 1750 3350
Wire Wire Line
	1750 2650 1750 2850
Wire Wire Line
	2750 3150 2750 2650
Wire Wire Line
	2350 4300 2350 4200
Connection ~ 2350 4200
$Comp
L RES R?
U 1 1 523B158E
P 5050 4300
F 0 "R?" H 5120 4265 50  0000 L TNN
F 1 "RES" H 5050 4355 30  0000 C BNN
F 2 "" H 5050 4300 60  0000 C CNN
F 3 "" H 5050 4300 60  0000 C CNN
	1    5050 4300
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 523B159B
P 5450 4300
F 0 "R?" H 5520 4265 50  0000 L TNN
F 1 "RES" H 5450 4355 30  0000 C BNN
F 2 "" H 5450 4300 60  0000 C CNN
F 3 "" H 5450 4300 60  0000 C CNN
	1    5450 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4300 4900 4300
Connection ~ 4800 3700
Wire Wire Line
	5200 4300 5250 4300
Wire Wire Line
	5250 4300 5300 4300
Wire Wire Line
	5700 4100 5600 4100
Wire Wire Line
	5600 4100 5600 3900
Wire Wire Line
	5600 3900 6400 3900
Wire Wire Line
	6400 3750 6400 3900
Wire Wire Line
	6400 3900 6400 4200
Wire Wire Line
	6400 4200 6400 4300
Wire Wire Line
	6400 4200 6200 4200
Wire Wire Line
	5600 4300 5650 4300
Wire Wire Line
	5650 4300 5700 4300
$Comp
L CAP C?
U 1 1 523B16A0
P 5900 3750
F 0 "C?" H 5920 3720 50  0000 L TNN
F 1 "CAP" H 5925 3770 30  0000 L BNN
F 2 "" H 5900 3750 60  0000 C CNN
F 3 "" H 5900 3750 60  0000 C CNN
	1    5900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3750 6400 3750
Connection ~ 6400 3900
Wire Wire Line
	5800 3750 5250 3750
Wire Wire Line
	5250 3750 5250 4300
Connection ~ 5250 4300
$Comp
L OPAMP_QUAD U?
U 2 1 523B17B7
P 7500 4200
F 0 "U?" H 7575 4050 60  0000 L CNN
F 1 "LTC6242" H 7550 4350 60  0000 L CNN
F 2 "~" H 7500 4200 60  0000 C CNN
F 3 "~" H 7500 4200 60  0000 C CNN
	2    7500 4200
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 523B17BD
P 6650 4300
F 0 "R?" H 6720 4265 50  0000 L TNN
F 1 "RES" H 6650 4355 30  0000 C BNN
F 2 "" H 6650 4300 60  0000 C CNN
F 3 "" H 6650 4300 60  0000 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 523B17C3
P 7050 4300
F 0 "R?" H 7120 4265 50  0000 L TNN
F 1 "RES" H 7050 4355 30  0000 C BNN
F 2 "" H 7050 4300 60  0000 C CNN
F 3 "" H 7050 4300 60  0000 C CNN
	1    7050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4300 6500 4300
Wire Wire Line
	6800 4300 6850 4300
Wire Wire Line
	6850 4300 6900 4300
Wire Wire Line
	7300 4100 7200 4100
Wire Wire Line
	7200 4100 7200 3900
Wire Wire Line
	7200 3900 7950 3900
Wire Wire Line
	7950 3750 7950 3900
Wire Wire Line
	7950 3900 7950 4200
Wire Wire Line
	7950 4200 7950 4900
Wire Wire Line
	7800 4200 7950 4200
Wire Wire Line
	7950 4200 9200 4200
Wire Wire Line
	7200 4300 7250 4300
Wire Wire Line
	7250 4300 7300 4300
$Comp
L CAP C?
U 1 1 523B17D1
P 7500 3750
F 0 "C?" H 7520 3720 50  0000 L TNN
F 1 "CAP" H 7525 3770 30  0000 L BNN
F 2 "" H 7500 3750 60  0000 C CNN
F 3 "" H 7500 3750 60  0000 C CNN
	1    7500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3750 7950 3750
Connection ~ 7950 3900
Wire Wire Line
	7400 3750 6850 3750
Wire Wire Line
	6850 3750 6850 4300
Connection ~ 6850 4300
Connection ~ 6400 4200
$Comp
L CAP C?
U 1 1 523B1832
P 5650 4550
F 0 "C?" H 5670 4520 50  0000 L TNN
F 1 "CAP" H 5675 4570 30  0000 L BNN
F 2 "" H 5650 4550 60  0000 C CNN
F 3 "" H 5650 4550 60  0000 C CNN
	1    5650 4550
	0    -1   -1   0   
$EndComp
$Comp
L CAP C?
U 1 1 523B1838
P 7250 4550
F 0 "C?" H 7270 4520 50  0000 L TNN
F 1 "CAP" H 7275 4570 30  0000 L BNN
F 2 "" H 7250 4550 60  0000 C CNN
F 3 "" H 7250 4550 60  0000 C CNN
	1    7250 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 4750 5650 4650
Wire Wire Line
	5650 4450 5650 4300
Connection ~ 5650 4300
Wire Wire Line
	7250 4450 7250 4300
Connection ~ 7250 4300
Wire Wire Line
	7250 4650 7250 4750
Wire Wire Line
	8100 5100 8450 5100
$Comp
L RES R?
U 1 1 523B1A3F
P 8200 4900
F 0 "R?" H 8270 4865 50  0000 L TNN
F 1 "RES" H 8200 4955 30  0000 C BNN
F 2 "" H 8200 4900 60  0000 C CNN
F 3 "" H 8200 4900 60  0000 C CNN
	1    8200 4900
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 523B1A4C
P 8700 4600
F 0 "R?" H 8770 4565 50  0000 L TNN
F 1 "RES" H 8700 4655 30  0000 C BNN
F 2 "" H 8700 4600 60  0000 C CNN
F 3 "" H 8700 4600 60  0000 C CNN
	1    8700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4900 8400 4600
Wire Wire Line
	8400 4600 8550 4600
Wire Wire Line
	8850 4600 9100 4600
Wire Wire Line
	9100 4600 9100 5000
Wire Wire Line
	8950 5000 9100 5000
Wire Wire Line
	9100 5000 9200 5000
Wire Wire Line
	8350 4900 8400 4900
Wire Wire Line
	8400 4900 8450 4900
Connection ~ 8400 4900
Wire Wire Line
	7950 4900 8050 4900
Connection ~ 7950 4200
$Comp
L RES R?
U 1 1 523B1CA9
P 9350 4200
F 0 "R?" H 9420 4165 50  0000 L TNN
F 1 "RES" H 9350 4255 30  0000 C BNN
F 2 "" H 9350 4200 60  0000 C CNN
F 3 "" H 9350 4200 60  0000 C CNN
	1    9350 4200
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 523B1CB6
P 9350 5000
F 0 "R?" H 9420 4965 50  0000 L TNN
F 1 "RES" H 9350 5055 30  0000 C BNN
F 2 "" H 9350 5000 60  0000 C CNN
F 3 "" H 9350 5000 60  0000 C CNN
	1    9350 5000
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 523B1CBE
P 9700 4600
F 0 "C?" H 9720 4570 50  0000 L TNN
F 1 "CAP" H 9725 4620 30  0000 L BNN
F 2 "" H 9700 4600 60  0000 C CNN
F 3 "" H 9700 4600 60  0000 C CNN
	1    9700 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 4700 9700 5000
Wire Wire Line
	9500 5000 9700 5000
Wire Wire Line
	9700 5000 9800 5000
Connection ~ 9100 5000
Wire Wire Line
	9700 4500 9700 4200
Wire Wire Line
	9500 4200 9700 4200
Wire Wire Line
	9700 4200 9800 4200
Text HLabel 850  3050 0    60   Input ~ 0
MIC_IN
Wire Wire Line
	850  3050 900  3050
Wire Wire Line
	900  3050 1000 3050
Wire Wire Line
	1000 3050 1100 3050
$Comp
L RES R?
U 1 1 523B1F9B
P 900 2850
F 0 "R?" H 970 2815 50  0000 L TNN
F 1 "3.9k" H 900 2905 30  0000 C BNN
F 2 "" H 900 2850 60  0000 C CNN
F 3 "" H 900 2850 60  0000 C CNN
	1    900  2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  2650 900  2700
Text HLabel 9800 4200 2    60   Output ~ 0
MIC_DIFF_N
Connection ~ 9700 4200
Connection ~ 9700 5000
Text HLabel 9800 5000 2    60   Output ~ 0
MIC_DIFF_P
$Comp
L AGND_IN #PWR?
U 1 1 523BB57F
P 8100 2300
F 0 "#PWR?" H 8100 2300 40  0001 C CNN
F 1 "AGND_IN" H 8100 2230 50  0000 C CNN
F 2 "" H 8100 2300 60  0000 C CNN
F 3 "" H 8100 2300 60  0000 C CNN
	1    8100 2300
	1    0    0    -1  
$EndComp
$Comp
L AGND_IN #PWR?
U 1 1 523BB58F
P 8600 2300
F 0 "#PWR?" H 8600 2300 40  0001 C CNN
F 1 "AGND_IN" H 8600 2230 50  0000 C CNN
F 2 "" H 8600 2300 60  0000 C CNN
F 3 "" H 8600 2300 60  0000 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 523BB67C
P 8100 1500
F 0 "#PWR?" H 8100 1590 20  0001 C CNN
F 1 "+5V" H 8100 1590 30  0000 C CNN
F 2 "" H 8100 1500 60  0000 C CNN
F 3 "" H 8100 1500 60  0000 C CNN
	1    8100 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 523BB689
P 8600 1500
F 0 "#PWR?" H 8600 1590 20  0001 C CNN
F 1 "+5V" H 8600 1590 30  0000 C CNN
F 2 "" H 8600 1500 60  0000 C CNN
F 3 "" H 8600 1500 60  0000 C CNN
	1    8600 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 523BB68F
P 5050 1150
F 0 "#PWR?" H 5050 1240 20  0001 C CNN
F 1 "+5V" H 5050 1240 30  0000 C CNN
F 2 "" H 5050 1150 60  0000 C CNN
F 3 "" H 5050 1150 60  0000 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L AGND_IN #PWR?
U 1 1 523BB695
P 5050 2250
F 0 "#PWR?" H 5050 2250 40  0001 C CNN
F 1 "AGND_IN" H 5050 2180 50  0000 C CNN
F 2 "" H 5050 2250 60  0000 C CNN
F 3 "" H 5050 2250 60  0000 C CNN
	1    5050 2250
	1    0    0    -1  
$EndComp
$Comp
L VCOM_VRT #PWR?
U 1 1 523BB830
P 3700 3800
F 0 "#PWR?" H 3700 4000 40  0001 C CNN
F 1 "VCOM_VRT" H 3700 3950 40  0000 C CNN
F 2 "" H 3700 3800 60  0000 C CNN
F 3 "" H 3700 3800 60  0000 C CNN
	1    3700 3800
	0    -1   -1   0   
$EndComp
$Comp
L VCOM_VRT #PWR?
U 1 1 523BBA68
P 7250 4750
F 0 "#PWR?" H 7250 4950 40  0001 C CNN
F 1 "VCOM_VRT" H 7250 4900 40  0000 C CNN
F 2 "" H 7250 4750 60  0000 C CNN
F 3 "" H 7250 4750 60  0000 C CNN
	1    7250 4750
	-1   0    0    1   
$EndComp
$Comp
L VCOM_VRT #PWR?
U 1 1 523BBA77
P 8100 5100
F 0 "#PWR?" H 8100 5300 40  0001 C CNN
F 1 "VCOM_VRT" H 8100 5250 40  0000 C CNN
F 2 "" H 8100 5100 60  0000 C CNN
F 3 "" H 8100 5100 60  0000 C CNN
	1    8100 5100
	0    -1   -1   0   
$EndComp
$Comp
L VCOM_VRT #PWR?
U 1 1 523BBA86
P 5650 4750
F 0 "#PWR?" H 5650 4950 40  0001 C CNN
F 1 "VCOM_VRT" H 5650 4900 40  0000 C CNN
F 2 "" H 5650 4750 60  0000 C CNN
F 3 "" H 5650 4750 60  0000 C CNN
	1    5650 4750
	-1   0    0    1   
$EndComp
$Comp
L VCOM_VRT #PWR?
U 1 1 523BBA95
P 3300 4200
F 0 "#PWR?" H 3300 4400 40  0001 C CNN
F 1 "VCOM_VRT" H 3300 4350 40  0000 C CNN
F 2 "" H 3300 4200 60  0000 C CNN
F 3 "" H 3300 4200 60  0000 C CNN
	1    3300 4200
	-1   0    0    1   
$EndComp
$Comp
L AGND_IN #PWR?
U 1 1 523BBAA4
P 2350 4300
F 0 "#PWR?" H 2350 4300 40  0001 C CNN
F 1 "AGND_IN" H 2350 4230 50  0000 C CNN
F 2 "" H 2350 4300 60  0000 C CNN
F 3 "" H 2350 4300 60  0000 C CNN
	1    2350 4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 523BBAB3
P 900 2650
F 0 "#PWR?" H 900 2740 20  0001 C CNN
F 1 "+5V" H 900 2740 30  0000 C CNN
F 2 "" H 900 2650 60  0000 C CNN
F 3 "" H 900 2650 60  0000 C CNN
	1    900  2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 523BBAC0
P 1750 2650
F 0 "#PWR?" H 1750 2740 20  0001 C CNN
F 1 "+5V" H 1750 2740 30  0000 C CNN
F 2 "" H 1750 2650 60  0000 C CNN
F 3 "" H 1750 2650 60  0000 C CNN
	1    1750 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 523BBAC7
P 2750 2650
F 0 "#PWR?" H 2750 2740 20  0001 C CNN
F 1 "+5V" H 2750 2740 30  0000 C CNN
F 2 "" H 2750 2650 60  0000 C CNN
F 3 "" H 2750 2650 60  0000 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L VCOM_VRT #PWR?
U 1 1 523BBACF
P 5900 1650
F 0 "#PWR?" H 5900 1850 40  0001 C CNN
F 1 "VCOM_VRT" H 5900 1800 40  0000 C CNN
F 2 "" H 5900 1650 60  0000 C CNN
F 3 "" H 5900 1650 60  0000 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
$Comp
L OPAMP_DUAL U?
U 2 1 5245ECEA
P 4200 5300
F 0 "U?" H 4275 5150 60  0000 L CNN
F 1 "LT6201" H 4250 5450 60  0000 L CNN
F 2 "~" H 4200 5350 60  0000 C CNN
F 3 "~" H 4200 5350 60  0000 C CNN
	2    4200 5300
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 5245ECF0
P 3650 4900
F 0 "R?" H 3720 4865 50  0000 L TNN
F 1 "RES" H 3650 4955 30  0000 C BNN
F 2 "" H 3650 4900 60  0000 C CNN
F 3 "" H 3650 4900 60  0000 C CNN
	1    3650 4900
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 5245ECF6
P 4150 4900
F 0 "R?" H 4220 4865 50  0000 L TNN
F 1 "RES" H 4150 4955 30  0000 C BNN
F 2 "" H 4150 4900 60  0000 C CNN
F 3 "" H 4150 4900 60  0000 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 5245ECFC
P 3200 4900
F 0 "C?" H 3220 4870 50  0000 L TNN
F 1 "CAP" H 3225 4920 30  0000 L BNN
F 2 "" H 3200 4900 60  0000 C CNN
F 3 "" H 3200 4900 60  0000 C CNN
	1    3200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5200 3900 5200
Wire Wire Line
	3900 5200 3900 4900
Wire Wire Line
	3800 4900 3900 4900
Wire Wire Line
	3900 4900 4000 4900
Wire Wire Line
	4300 4900 4600 4900
Wire Wire Line
	4600 4900 4800 4900
Wire Wire Line
	4600 4900 4600 5300
Wire Wire Line
	4600 5300 4500 5300
Connection ~ 3900 4900
Wire Wire Line
	3500 4900 3300 4900
$Comp
L AGND_IN #PWR?
U 1 1 5245EFD4
P 3000 5000
F 0 "#PWR?" H 3000 5000 40  0001 C CNN
F 1 "AGND_IN" H 3000 4930 50  0000 C CNN
F 2 "" H 3000 5000 60  0000 C CNN
F 3 "" H 3000 5000 60  0000 C CNN
	1    3000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5000 3000 4900
Wire Wire Line
	3000 4900 3100 4900
$Comp
L RES R?
U 1 1 5245F056
P 4800 4000
F 0 "R?" H 4870 3965 50  0000 L TNN
F 1 "RES" H 4800 4055 30  0000 C BNN
F 2 "~" H 4800 4000 60  0000 C CNN
F 3 "~" H 4800 4000 60  0000 C CNN
	1    4800 4000
	0    -1   -1   0   
$EndComp
$Comp
L RES R?
U 1 1 5245F121
P 4800 4600
F 0 "R?" H 4870 4565 50  0000 L TNN
F 1 "RES" H 4800 4655 30  0000 C BNN
F 2 "~" H 4800 4600 60  0000 C CNN
F 3 "~" H 4800 4600 60  0000 C CNN
	1    4800 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4150 4800 4300
Wire Wire Line
	4800 4300 4800 4450
Connection ~ 4800 4300
Wire Wire Line
	4800 4900 4800 4750
Connection ~ 4600 4900
$Comp
L RES R?
U 1 1 5245F2AB
P 1250 3050
F 0 "R?" H 1320 3015 50  0000 L TNN
F 1 "0R" H 1250 3105 30  0000 C BNN
F 2 "~" H 1250 3050 60  0000 C CNN
F 3 "~" H 1250 3050 60  0000 C CNN
	1    1250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3050 1450 3050
Wire Wire Line
	2400 3350 2450 3350
Connection ~ 2000 3350
$Comp
L RES R?
U 1 1 5245F51C
P 2250 3350
F 0 "R?" H 2320 3315 50  0000 L TNN
F 1 "0R" H 2250 3405 30  0000 C BNN
F 2 "" H 2250 3350 60  0000 C CNN
F 3 "" H 2250 3350 60  0000 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 5245FA1E
P 2650 2350
F 0 "R?" H 2720 2315 50  0000 L TNN
F 1 "0R" H 2650 2405 30  0000 C BNN
F 2 "~" H 2650 2350 60  0000 C CNN
F 3 "~" H 2650 2350 60  0000 C CNN
	1    2650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2350 2000 2350
Wire Wire Line
	2000 2350 2500 2350
Wire Wire Line
	2000 2350 2000 3350
Wire Wire Line
	2800 2350 3400 2350
Wire Wire Line
	3400 2350 3400 3600
Wire Wire Line
	3400 3600 3400 5400
Connection ~ 3400 3600
$Comp
L RES R?
U 1 1 5245FB59
P 3700 5400
F 0 "R?" H 3770 5365 50  0000 L TNN
F 1 "RES" H 3700 5455 30  0000 C BNN
F 2 "~" H 3700 5400 60  0000 C CNN
F 3 "~" H 3700 5400 60  0000 C CNN
	1    3700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5400 3550 5400
Wire Wire Line
	3850 5400 4000 5400
$Comp
L RES R?
U 1 1 5245FCCE
P 1500 2350
F 0 "R?" H 1570 2315 50  0000 L TNN
F 1 "0R" H 1500 2405 30  0000 C BNN
F 2 "~" H 1500 2350 60  0000 C CNN
F 3 "~" H 1500 2350 60  0000 C CNN
	1    1500 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3000 900  3050
Connection ~ 900  3050
Wire Wire Line
	1350 2350 1000 2350
Wire Wire Line
	1000 2350 1000 3050
Connection ~ 1000 3050
Connection ~ 2000 2350
Wire Notes Line
	1150 2150 1150 2500
Wire Notes Line
	1150 2500 3000 2500
Wire Notes Line
	3000 2500 3000 2150
Wire Notes Line
	3000 2150 1150 2150
$Comp
L OPAMP_QUAD U?
U 4 1 5248471B
P 8650 6050
F 0 "U?" H 8725 5900 60  0000 L CNN
F 1 "LTC6242" H 8700 6200 60  0000 L CNN
F 2 "~" H 8650 6050 60  0000 C CNN
F 3 "~" H 8650 6050 60  0000 C CNN
	4    8650 6050
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 52484728
P 6550 6450
F 0 "R?" H 6620 6415 50  0000 L TNN
F 1 "1k" H 6550 6505 30  0000 C BNN
F 2 "~" H 6550 6450 60  0000 C CNN
F 3 "~" H 6550 6450 60  0000 C CNN
	1    6550 6450
	0    -1   -1   0   
$EndComp
$Comp
L RES R?
U 1 1 52484735
P 6550 6850
F 0 "R?" H 6620 6815 50  0000 L TNN
F 1 "1k" H 6550 6905 30  0000 C BNN
F 2 "~" H 6550 6850 60  0000 C CNN
F 3 "~" H 6550 6850 60  0000 C CNN
	1    6550 6850
	0    -1   -1   0   
$EndComp
$Comp
L RES R?
U 1 1 524847D3
P 8150 5700
F 0 "R?" H 8220 5665 50  0000 L TNN
F 1 "RES" H 8150 5755 30  0000 C BNN
F 2 "~" H 8150 5700 60  0000 C CNN
F 3 "~" H 8150 5700 60  0000 C CNN
	1    8150 5700
	1    0    0    -1  
$EndComp
$Comp
L RES R?
U 1 1 524847D9
P 8700 5700
F 0 "R?" H 8770 5665 50  0000 L TNN
F 1 "RES" H 8700 5755 30  0000 C BNN
F 2 "~" H 8700 5700 60  0000 C CNN
F 3 "~" H 8700 5700 60  0000 C CNN
	1    8700 5700
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 524847E1
P 7250 6150
F 0 "C?" H 7270 6120 50  0000 L TNN
F 1 "CAP" H 7275 6170 30  0000 L BNN
F 2 "~" H 7250 6150 60  0000 C CNN
F 3 "~" H 7250 6150 60  0000 C CNN
	1    7250 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6150 7500 6150
Wire Wire Line
	7500 6150 8450 6150
Wire Wire Line
	6550 6600 6550 6650
Wire Wire Line
	6550 6650 6550 6700
Connection ~ 7500 6150
Wire Wire Line
	8450 5950 8400 5950
Wire Wire Line
	8400 5950 8400 5700
Wire Wire Line
	8300 5700 8400 5700
Wire Wire Line
	8400 5700 8550 5700
Connection ~ 8400 5700
Wire Wire Line
	8850 5700 9100 5700
Wire Wire Line
	9100 5700 9100 6050
Wire Wire Line
	8950 6050 9100 6050
Wire Wire Line
	9100 6050 9200 6050
Wire Wire Line
	8000 5700 7900 5700
$Comp
L +5V #PWR?
U 1 1 52484CCB
P 6550 6250
F 0 "#PWR?" H 6550 6340 20  0001 C CNN
F 1 "+5V" H 6550 6340 30  0000 C CNN
F 2 "" H 6550 6250 60  0000 C CNN
F 3 "" H 6550 6250 60  0000 C CNN
	1    6550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6250 6550 6300
$Comp
L CAP C?
U 1 1 52484DFB
P 7800 5700
F 0 "C?" H 7820 5670 50  0000 L TNN
F 1 "CAP" H 7825 5720 30  0000 L BNN
F 2 "~" H 7800 5700 60  0000 C CNN
F 3 "~" H 7800 5700 60  0000 C CNN
	1    7800 5700
	1    0    0    -1  
$EndComp
$Comp
L AGND_IN #PWR?
U 1 1 52484E08
P 7650 5800
F 0 "#PWR?" H 7650 5800 40  0001 C CNN
F 1 "AGND_IN" H 7650 5730 50  0000 C CNN
F 2 "" H 7650 5800 60  0000 C CNN
F 3 "" H 7650 5800 60  0000 C CNN
	1    7650 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5800 7650 5700
Wire Wire Line
	7650 5700 7700 5700
$Comp
L AGND_IN #PWR?
U 1 1 52484F02
P 6550 7050
F 0 "#PWR?" H 6550 7050 40  0001 C CNN
F 1 "AGND_IN" H 6550 6980 50  0000 C CNN
F 2 "" H 6550 7050 60  0000 C CNN
F 3 "" H 6550 7050 60  0000 C CNN
	1    6550 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 7050 6550 7000
$Comp
L RES R?
U 1 1 52485104
P 7500 6400
F 0 "R?" H 7570 6365 50  0000 L TNN
F 1 "250k" H 7500 6455 30  0000 C BNN
F 2 "~" H 7500 6400 60  0000 C CNN
F 3 "~" H 7500 6400 60  0000 C CNN
	1    7500 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 6650 7500 6650
Wire Wire Line
	7500 6650 9700 6650
Wire Wire Line
	9700 6650 9800 6650
Wire Wire Line
	7500 6650 7500 6550
Connection ~ 6550 6650
Wire Wire Line
	7500 6250 7500 6150
Text HLabel 9800 6050 2    60   Output ~ 0
EXT_DIFF_N
Text HLabel 9800 6650 2    60   Output ~ 0
EXT_DIFF_P
Connection ~ 9100 6050
Connection ~ 7500 6650
Text HLabel 7050 6150 0    60   Input ~ 0
EXT_IN
Wire Wire Line
	7050 6150 7150 6150
$Comp
L RES R?
U 1 1 52485A6B
P 9350 6050
F 0 "R?" H 9420 6015 50  0000 L TNN
F 1 "RES" H 9350 6105 30  0000 C BNN
F 2 "" H 9350 6050 60  0000 C CNN
F 3 "" H 9350 6050 60  0000 C CNN
	1    9350 6050
	1    0    0    -1  
$EndComp
$Comp
L CAP C?
U 1 1 52485A77
P 9700 6350
F 0 "C?" H 9720 6320 50  0000 L TNN
F 1 "CAP" H 9725 6370 30  0000 L BNN
F 2 "" H 9700 6350 60  0000 C CNN
F 3 "" H 9700 6350 60  0000 C CNN
	1    9700 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 6050 9700 6050
Wire Wire Line
	9700 6050 9800 6050
Wire Wire Line
	9700 6050 9700 6250
Connection ~ 9700 6050
Wire Wire Line
	9700 6450 9700 6650
Connection ~ 9700 6650
$EndSCHEMATC
