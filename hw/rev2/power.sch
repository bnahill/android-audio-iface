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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date "13 may 2015"
Rev "2b"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AGND_IN #PWR048
U 1 1 524EE50E
P 9000 5400
F 0 "#PWR048" H 9000 5400 40  0001 C CNN
F 1 "AGND_IN" H 9000 5330 50  0000 C CNN
F 2 "~" H 9000 5400 60  0000 C CNN
F 3 "~" H 9000 5400 60  0000 C CNN
	1    9000 5400
	1    0    0    -1  
$EndComp
$Comp
L AGND_OUT #PWR049
U 1 1 524EE514
P 9800 5400
F 0 "#PWR049" H 9800 5400 40  0001 C CNN
F 1 "AGND_OUT" H 9800 5330 50  0000 C CNN
F 2 "~" H 9800 5400 60  0000 C CNN
F 3 "~" H 9800 5400 60  0000 C CNN
	1    9800 5400
	1    0    0    -1  
$EndComp
Text Notes 8650 5050 0    60   ~ 0
Join nets once layout is complete
$Comp
L CAP C43
U 1 1 524F0A86
P 5000 2300
F 0 "C43" H 5020 2270 50  0000 L TNN
F 1 "10u" H 5025 2320 30  0000 L BNN
F 2 "lib:SMD0805" H 5000 2300 60  0001 C CNN
F 3 "~" H 5000 2300 60  0000 C CNN
	1    5000 2300
	0    -1   -1   0   
$EndComp
$Comp
L CAP C42
U 1 1 524F0A93
P 4850 2300
F 0 "C42" H 4870 2270 50  0000 L TNN
F 1 "2.2u" H 4875 2320 30  0000 L BNN
F 2 "lib:SMD0402" H 4850 2300 60  0001 C CNN
F 3 "~" H 4850 2300 60  0000 C CNN
	1    4850 2300
	0    -1   -1   0   
$EndComp
$Comp
L CAP C41
U 1 1 524F0AA8
P 4700 2300
F 0 "C41" H 4720 2270 50  0000 L TNN
F 1 "10n 16V" H 4725 2320 30  0000 L BNN
F 2 "lib:SMD0402" H 4700 2300 60  0001 C CNN
F 3 "~" H 4700 2300 60  0000 C CNN
	1    4700 2300
	0    -1   -1   0   
$EndComp
$Comp
L CAP C45
U 1 1 524F0BD2
P 6350 4650
F 0 "C45" H 6370 4620 50  0000 L TNN
F 1 "10n 16V" H 6375 4670 30  0000 L BNN
F 2 "lib:SMD0402" H 6350 4650 60  0001 C CNN
F 3 "~" H 6350 4650 60  0000 C CNN
	1    6350 4650
	0    -1   -1   0   
$EndComp
$Comp
L CPOL C50
U 1 1 524F0C1F
P 8400 4450
F 0 "C50" H 8430 4420 50  0000 L TNN
F 1 "100u 6.3V" H 8430 4470 30  0000 L BNN
F 2 "lib:SMD1411_POL" H 8400 4450 60  0001 C CNN
F 3 "~" H 8400 4450 60  0000 C CNN
	1    8400 4450
	0    1    1    0   
$EndComp
$Comp
L CPOL C49
U 1 1 524F0C2C
P 8250 4450
F 0 "C49" H 8280 4420 50  0000 L TNN
F 1 "10u 6.3V" H 8280 4470 30  0000 L BNN
F 2 "lib:SMD0805" H 8250 4450 60  0001 C CNN
F 3 "~" H 8250 4450 60  0000 C CNN
	1    8250 4450
	0    1    1    0   
$EndComp
$Comp
L CAP C46
U 1 1 524F0C3F
P 7800 4450
F 0 "C46" H 7820 4420 50  0000 L TNN
F 1 "10n 6.3V" H 7825 4470 30  0000 L BNN
F 2 "lib:SMD0402" H 7800 4450 60  0001 C CNN
F 3 "~" H 7800 4450 60  0000 C CNN
	1    7800 4450
	0    1    1    0   
$EndComp
$Comp
L +5VA #PWR050
U 1 1 524F286A
P 8400 4150
F 0 "#PWR050" H 8400 4280 20  0001 C CNN
F 1 "+5VA" H 8400 4250 30  0000 C CNN
F 2 "" H 8400 4150 60  0000 C CNN
F 3 "" H 8400 4150 60  0000 C CNN
	1    8400 4150
	1    0    0    -1  
$EndComp
$Comp
L CAP C47
U 1 1 524F2A55
P 7950 4450
F 0 "C47" H 7970 4420 50  0000 L TNN
F 1 "0.1u 6.3V" H 7975 4470 30  0000 L BNN
F 2 "lib:SMD0402" H 7950 4450 60  0001 C CNN
F 3 "~" H 7950 4450 60  0000 C CNN
	1    7950 4450
	0    1    1    0   
$EndComp
$Comp
L CAP C48
U 1 1 524F2A66
P 8100 4450
F 0 "C48" H 8120 4420 50  0000 L TNN
F 1 "0.1u 6.3V" H 8125 4470 30  0000 L BNN
F 2 "lib:SMD0603" H 8100 4450 60  0001 C CNN
F 3 "~" H 8100 4450 60  0000 C CNN
	1    8100 4450
	0    1    1    0   
$EndComp
$Comp
L LP2992_WSON U6
U 1 1 5251C8A8
P 7200 4400
F 0 "U6" H 7400 4150 60  0000 R CNN
F 1 "LP2992AILD-5.0" H 7200 4650 60  0000 C CNN
F 2 "lib:TI_WSON6" H 7200 4350 60  0001 C CNN
F 3 "~" H 7200 4350 60  0000 C CNN
	1    7200 4400
	1    0    0    -1  
$EndComp
$Comp
L IND L1
U 1 1 53512D6C
P 3900 2150
F 0 "L1" H 3970 2115 50  0000 L TNN
F 1 "MLZ2012A1R5WT000" H 3900 2205 30  0000 C BNN
F 2 "lib:SMD0805" H 3900 2150 60  0001 C CNN
F 3 "~" H 3900 2150 60  0000 C CNN
	1    3900 2150
	1    0    0    -1  
$EndComp
Text HLabel 4050 2250 2    60   Input ~ 0
ANALOG_EN
$Comp
L RES R28
U 1 1 53512E4F
P 4000 2500
F 0 "R28" H 4070 2465 50  0000 L TNN
F 1 "1Meg" H 4000 2555 30  0000 C BNN
F 2 "lib:SMD0402" H 4000 2500 60  0001 C CNN
F 3 "~" H 4000 2500 60  0000 C CNN
	1    4000 2500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR051
U 1 1 53512E5E
P 4000 2750
F 0 "#PWR051" H 4000 2750 30  0001 C CNN
F 1 "GND" H 4000 2680 30  0001 C CNN
F 2 "" H 4000 2750 60  0000 C CNN
F 3 "" H 4000 2750 60  0000 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L RES R25
U 1 1 53512F00
P 2500 2350
F 0 "R25" H 2570 2315 50  0000 L TNN
F 1 "RES" H 2500 2405 30  0000 C BNN
F 2 "lib:SMD0402" H 2500 2350 60  0001 C CNN
F 3 "~" H 2500 2350 60  0000 C CNN
	1    2500 2350
	0    -1   -1   0   
$EndComp
$Comp
L RES R26
U 1 1 53512F0D
P 2500 2750
F 0 "R26" H 2570 2715 50  0000 L TNN
F 1 "RES" H 2500 2805 30  0000 C BNN
F 2 "lib:SMD0402" H 2500 2750 60  0001 C CNN
F 3 "~" H 2500 2750 60  0000 C CNN
	1    2500 2750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR052
U 1 1 53513050
P 2300 3000
F 0 "#PWR052" H 2300 3000 30  0001 C CNN
F 1 "GND" H 2300 2930 30  0001 C CNN
F 2 "" H 2300 3000 60  0000 C CNN
F 3 "" H 2300 3000 60  0000 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
$Comp
L RES R27
U 1 1 53513303
P 2950 2700
F 0 "R27" H 3020 2665 50  0000 L TNN
F 1 "20k" H 2950 2755 30  0000 C BNN
F 2 "lib:SMD0402" H 2950 2700 60  0001 C CNN
F 3 "~" H 2950 2700 60  0000 C CNN
	1    2950 2700
	0    -1   -1   0   
$EndComp
$Comp
L CPOL C37
U 1 1 535133C9
P 1900 2300
F 0 "C37" H 1930 2270 50  0000 L TNN
F 1 "22u" H 1930 2320 30  0000 L BNN
F 2 "lib:SMD1206_POL" H 1900 2300 60  0001 C CNN
F 3 "~" H 1900 2300 60  0000 C CNN
	1    1900 2300
	0    1    1    0   
$EndComp
$Comp
L CAP C39
U 1 1 53513401
P 2300 2350
F 0 "C39" H 2320 2320 50  0000 L TNN
F 1 "10n" H 2325 2370 30  0000 L BNN
F 2 "lib:SMD0402" H 2300 2350 60  0001 C CNN
F 3 "~" H 2300 2350 60  0000 C CNN
	1    2300 2350
	0    -1   -1   0   
$EndComp
$Comp
L CAP C38
U 1 1 535135C6
P 2100 2350
F 0 "C38" H 2120 2320 50  0000 L TNN
F 1 "100n" H 2125 2370 30  0000 L BNN
F 2 "lib:SMD0402" H 2100 2350 60  0001 C CNN
F 3 "~" H 2100 2350 60  0000 C CNN
	1    2100 2350
	0    -1   -1   0   
$EndComp
$Comp
L CAP C40
U 1 1 53513CE3
P 2700 2350
F 0 "C40" H 2720 2320 50  0000 L TNN
F 1 "100p" H 2725 2370 30  0000 L BNN
F 2 "lib:SMD0402" H 2700 2350 60  0001 C CNN
F 3 "~" H 2700 2350 60  0000 C CNN
	1    2700 2350
	0    -1   -1   0   
$EndComp
$Comp
L +6V #PWR053
U 1 1 5351D85D
P 1900 2150
F 0 "#PWR053" H 1900 2110 30  0001 C CNN
F 1 "+6V" H 1900 2260 30  0000 C CNN
F 2 "~" H 1900 2150 60  0000 C CNN
F 3 "~" H 1900 2150 60  0000 C CNN
	1    1900 2150
	1    0    0    -1  
$EndComp
$Comp
L +6V #PWR054
U 1 1 5351DA70
P 5800 4200
F 0 "#PWR054" H 5800 4160 30  0001 C CNN
F 1 "+6V" H 5800 4310 30  0000 C CNN
F 2 "~" H 5800 4200 60  0000 C CNN
F 3 "~" H 5800 4200 60  0000 C CNN
	1    5800 4200
	1    0    0    -1  
$EndComp
$Comp
L CAP C44
U 1 1 5351DFE8
P 6000 4650
F 0 "C44" H 6020 4620 50  0000 L TNN
F 1 "10n" H 6025 4670 30  0000 L BNN
F 2 "lib:SMD0402" H 6000 4650 60  0001 C CNN
F 3 "~" H 6000 4650 60  0000 C CNN
	1    6000 4650
	0    -1   -1   0   
$EndComp
$Comp
L USB_5V #PWR055
U 1 1 5357BECD
P 1150 1050
F 0 "#PWR055" H 1150 1010 30  0001 C CNN
F 1 "USB_5V" H 1150 1160 30  0000 C CNN
F 2 "~" H 1150 1050 60  0000 C CNN
F 3 "~" H 1150 1050 60  0000 C CNN
	1    1150 1050
	1    0    0    -1  
$EndComp
$Comp
L RES R29
U 1 1 5357C0DF
P 4100 1750
F 0 "R29" H 4170 1715 50  0000 L TNN
F 1 "0R" H 4100 1805 30  0000 C BNN
F 2 "lib:SMD0402" H 4100 1750 60  0001 C CNN
F 3 "~" H 4100 1750 60  0000 C CNN
	1    4100 1750
	0    -1   -1   0   
$EndComp
Text Notes 4200 1750 0    60   ~ 0
DNP for external supply
$Comp
L TPS61252 U5
U 1 1 535D8A60
P 3300 2200
F 0 "U5" H 3450 1950 60  0000 C CNN
F 1 "TPS61252" H 3300 2450 60  0000 C CNN
F 2 "lib:TPS61252_QFN8" H 3250 2250 60  0001 C CNN
F 3 "~" H 3250 2250 60  0000 C CNN
	1    3300 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 535D962B
P 10150 5400
F 0 "#PWR056" H 10150 5400 30  0001 C CNN
F 1 "GND" H 10150 5330 30  0001 C CNN
F 2 "" H 10150 5400 60  0000 C CNN
F 3 "" H 10150 5400 60  0000 C CNN
	1    10150 5400
	1    0    0    -1  
$EndComp
$Comp
L TP TP5
U 1 1 53AF6D72
P 7800 3950
F 0 "TP5" H 7800 3850 60  0000 C CNN
F 1 "TP" H 7800 4050 60  0000 C CNN
F 2 "lib:TP_HOLE" H 7800 3950 60  0001 C CNN
F 3 "~" H 7800 3950 60  0000 C CNN
	1    7800 3950
	0    -1   -1   0   
$EndComp
$Comp
L TP TP6
U 1 1 53AF7518
P 6550 3950
F 0 "TP6" H 6550 3850 60  0000 C CNN
F 1 "TP" H 6550 4050 60  0000 C CNN
F 2 "lib:TP_HOLE" H 6550 3950 60  0001 C CNN
F 3 "~" H 6550 3950 60  0000 C CNN
	1    6550 3950
	0    -1   -1   0   
$EndComp
$Comp
L GNDD #PWR057
U 1 1 57D6373F
P 9400 5400
F 0 "#PWR057" H 9400 5150 50  0001 C CNN
F 1 "GNDD" H 9400 5250 50  0000 C CNN
F 2 "" H 9400 5400 50  0000 C CNN
F 3 "" H 9400 5400 50  0000 C CNN
	1    9400 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J9
U 1 1 57D639BC
P 5550 2100
F 0 "J9" H 5550 2250 50  0000 C CNN
F 1 "CONN_01X02" V 5650 2100 50  0000 C CNN
F 2 "lib:HDR_2X1_50MIL" H 5550 2100 50  0001 C CNN
F 3 "" H 5550 2100 50  0000 C CNN
	1    5550 2100
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR058
U 1 1 57D65DAE
P 6550 5100
F 0 "#PWR058" H 6550 4850 50  0001 C CNN
F 1 "GNDD" H 6550 4950 50  0000 C CNN
F 2 "" H 6550 5100 50  0000 C CNN
F 3 "" H 6550 5100 50  0000 C CNN
	1    6550 5100
	1    0    0    -1  
$EndComp
$Comp
L TP TP7
U 1 1 57EB7321
P 8800 4400
F 0 "TP7" H 8800 4300 60  0000 C CNN
F 1 "TP" H 8800 4500 60  0000 C CNN
F 2 "lib:TP_HOLE" H 8800 4400 60  0001 C CNN
F 3 "~" H 8800 4400 60  0000 C CNN
	1    8800 4400
	0    -1   -1   0   
$EndComp
$Comp
L TP TP12
U 1 1 57EC7546
P 9200 4400
F 0 "TP12" H 9200 4300 60  0000 C CNN
F 1 "TP" H 9200 4500 60  0000 C CNN
F 2 "lib:TP_HOLE" H 9200 4400 60  0001 C CNN
F 3 "~" H 9200 4400 60  0000 C CNN
	1    9200 4400
	0    -1   -1   0   
$EndComp
Text Notes 2300 5400 0    60   ~ 0
FAN53610AUC33X
$Comp
L FAN536xx U9
U 1 1 5824823D
P 2750 5700
F 0 "U9" H 2750 5500 60  0000 C CNN
F 1 "FAN536xx" H 2750 5900 60  0000 C CNN
F 2 "lib:FAN53600_WLCSP6" H 2750 5800 60  0001 C CNN
F 3 "" H 2750 5800 60  0001 C CNN
	1    2750 5700
	1    0    0    -1  
$EndComp
$Comp
L IND L2
U 1 1 58248489
P 2050 5700
F 0 "L2" H 2120 5665 50  0000 L TNN
F 1 "MLZ2012A1R5WT000" H 2050 5755 30  0000 C BNN
F 2 "lib:SMD0805" H 2050 5700 60  0001 C CNN
F 3 "~" H 2050 5700 60  0000 C CNN
	1    2050 5700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR059
U 1 1 58248961
P 1700 6150
F 0 "#PWR059" H 1700 6150 30  0001 C CNN
F 1 "GND" H 1700 6080 30  0001 C CNN
F 2 "" H 1700 6150 60  0000 C CNN
F 3 "" H 1700 6150 60  0000 C CNN
	1    1700 6150
	1    0    0    -1  
$EndComp
$Comp
L CPOL C82
U 1 1 58248E68
P 1700 5950
F 0 "C82" H 1730 5920 50  0000 L TNN
F 1 "10u 6.3V" H 1730 5970 30  0000 L BNN
F 2 "lib:SMD0805" H 1700 5950 60  0001 C CNN
F 3 "~" H 1700 5950 60  0000 C CNN
	1    1700 5950
	0    1    1    0   
$EndComp
$Comp
L USB_5V #PWR060
U 1 1 58249708
P 3600 5450
F 0 "#PWR060" H 3600 5410 30  0001 C CNN
F 1 "USB_5V" H 3600 5560 30  0000 C CNN
F 2 "~" H 3600 5450 60  0000 C CNN
F 3 "~" H 3600 5450 60  0000 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 58249A00
P 3200 6150
F 0 "#PWR061" H 3200 6150 30  0001 C CNN
F 1 "GND" H 3200 6080 30  0001 C CNN
F 2 "" H 3200 6150 60  0000 C CNN
F 3 "" H 3200 6150 60  0000 C CNN
	1    3200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5150 10150 5150
Wire Wire Line
	9000 5150 9000 5400
Wire Wire Line
	9400 5150 9400 5400
Connection ~ 9400 5150
Wire Wire Line
	9800 5150 9800 5400
Wire Wire Line
	4850 2050 4850 2200
Wire Wire Line
	5000 2050 5000 2200
Wire Wire Line
	6900 4550 6800 4550
Wire Wire Line
	6800 4550 6800 4950
Wire Wire Line
	6350 4550 6350 4450
Wire Wire Line
	6350 4450 6900 4450
Wire Wire Line
	7800 4050 7800 4350
Wire Wire Line
	7500 4250 8400 4250
Wire Wire Line
	8250 4250 8250 4350
Connection ~ 7800 4250
Connection ~ 8250 4250
Connection ~ 8400 4250
Wire Wire Line
	7800 4950 7800 4550
Wire Wire Line
	8250 4950 8250 4550
Connection ~ 7800 4950
Wire Wire Line
	8400 4950 8400 4550
Connection ~ 8250 4950
Wire Wire Line
	8400 4150 8400 4350
Wire Wire Line
	8100 4350 8100 4250
Connection ~ 8100 4250
Wire Wire Line
	7950 4250 7950 4350
Connection ~ 7950 4250
Wire Wire Line
	7950 4950 7950 4550
Connection ~ 7950 4950
Wire Wire Line
	8100 4950 8100 4550
Connection ~ 8100 4950
Wire Wire Line
	3600 2150 3750 2150
Wire Wire Line
	3600 2050 5350 2050
Wire Wire Line
	4100 1900 4100 2150
Wire Wire Line
	4100 2150 4050 2150
Wire Wire Line
	3600 2250 4050 2250
Wire Wire Line
	4000 2650 4000 2750
Wire Wire Line
	4000 2350 4000 2250
Connection ~ 4000 2250
Wire Wire Line
	3000 2250 2850 2250
Wire Wire Line
	2850 2250 2850 2550
Wire Wire Line
	2850 2550 2500 2550
Wire Wire Line
	2500 2500 2500 2600
Connection ~ 2500 2550
Wire Wire Line
	1900 2150 3000 2150
Wire Wire Line
	2500 2150 2500 2200
Wire Wire Line
	1750 2950 1750 2050
Wire Wire Line
	2500 2950 2500 2900
Wire Wire Line
	1750 2050 3000 2050
Wire Wire Line
	2950 2550 2950 2350
Wire Wire Line
	2950 2350 3000 2350
Wire Wire Line
	2950 2950 2950 2850
Connection ~ 2500 2950
Wire Wire Line
	2300 2250 2300 2150
Connection ~ 2500 2150
Wire Wire Line
	2300 2450 2300 3000
Connection ~ 2300 2950
Wire Wire Line
	1900 2200 1900 2150
Connection ~ 2300 2150
Wire Wire Line
	1900 2400 1900 2950
Connection ~ 1900 2950
Wire Wire Line
	2100 2250 2100 2150
Connection ~ 2100 2150
Wire Wire Line
	2100 2950 2100 2450
Connection ~ 2100 2950
Wire Wire Line
	2700 2250 2700 2150
Connection ~ 2700 2150
Wire Wire Line
	2700 2450 2700 2550
Connection ~ 2700 2550
Wire Wire Line
	5800 4200 5800 4250
Connection ~ 4100 2050
Wire Wire Line
	5350 2150 5150 2150
Wire Wire Line
	5150 2150 5150 2700
Wire Wire Line
	5150 2700 4000 2700
Connection ~ 4000 2700
Connection ~ 5000 2050
Connection ~ 4850 2050
Wire Wire Line
	4700 2200 4700 2050
Connection ~ 4700 2050
Wire Wire Line
	4700 2400 4700 2700
Connection ~ 4700 2700
Wire Wire Line
	4850 2400 4850 2700
Connection ~ 4850 2700
Wire Wire Line
	5000 2400 5000 2700
Connection ~ 5000 2700
Wire Wire Line
	5800 4250 6900 4250
Wire Wire Line
	6350 4950 6350 4750
Wire Wire Line
	6550 4950 6550 5100
Connection ~ 6550 4950
Wire Wire Line
	6000 4950 6000 4750
Connection ~ 6350 4950
Wire Wire Line
	6000 4550 6000 4250
Connection ~ 6000 4250
Connection ~ 6800 4950
Wire Wire Line
	6000 4950 9200 4950
Wire Wire Line
	4100 1200 4100 1600
Wire Wire Line
	6800 4350 6800 4250
Connection ~ 6800 4250
Wire Wire Line
	6800 4350 6900 4350
Wire Wire Line
	10150 5150 10150 5400
Connection ~ 9800 5150
Wire Wire Line
	6550 4050 6550 4250
Connection ~ 6550 4250
Wire Wire Line
	1150 1050 1150 1200
Wire Wire Line
	1150 1200 4100 1200
Wire Wire Line
	1750 2950 2950 2950
Wire Wire Line
	8800 4950 8800 4500
Connection ~ 8400 4950
Wire Wire Line
	9200 4950 9200 4500
Connection ~ 8800 4950
Wire Wire Line
	1700 6050 1700 6150
Wire Wire Line
	1700 5350 1700 5850
Wire Wire Line
	1700 5700 1900 5700
Wire Wire Line
	2400 5800 1700 5800
Connection ~ 1700 5800
Wire Wire Line
	2200 5700 2400 5700
Wire Wire Line
	3600 5450 3600 5600
Wire Wire Line
	3600 5600 3100 5600
Wire Wire Line
	3100 5700 3200 5700
Wire Wire Line
	3200 5700 3200 5600
Connection ~ 3200 5600
Wire Wire Line
	3200 6150 3200 5800
Wire Wire Line
	3200 5800 3100 5800
Wire Wire Line
	2400 5600 1550 5600
Wire Wire Line
	1550 5600 1550 6100
Wire Wire Line
	1550 6100 1700 6100
Connection ~ 1700 6100
$Comp
L +3V #PWR062
U 1 1 58249F3F
P 1700 5350
F 0 "#PWR062" H 1700 5310 30  0001 C CNN
F 1 "+3V" H 1700 5460 30  0000 C CNN
F 2 "" H 1700 5350 60  0000 C CNN
F 3 "" H 1700 5350 60  0000 C CNN
	1    1700 5350
	1    0    0    -1  
$EndComp
Connection ~ 1700 5700
$EndSCHEMATC
