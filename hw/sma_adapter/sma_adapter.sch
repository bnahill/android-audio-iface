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
LIBS:sma_adapter-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "12 feb 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_2 J5
U 1 1 54DC22D5
P 5000 1950
F 0 "J5" V 4950 1950 40  0000 C CNN
F 1 "CONN_2" V 5050 1950 40  0000 C CNN
F 2 "~" H 5000 1950 60  0000 C CNN
F 3 "~" H 5000 1950 60  0000 C CNN
	1    5000 1950
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 J6
U 1 1 54DC22E2
P 5000 2400
F 0 "J6" V 4950 2400 40  0000 C CNN
F 1 "CONN_2" V 5050 2400 40  0000 C CNN
F 2 "~" H 5000 2400 60  0000 C CNN
F 3 "~" H 5000 2400 60  0000 C CNN
	1    5000 2400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 J7
U 1 1 54DC22E8
P 5000 2850
F 0 "J7" V 4950 2850 40  0000 C CNN
F 1 "CONN_2" V 5050 2850 40  0000 C CNN
F 2 "~" H 5000 2850 60  0000 C CNN
F 3 "~" H 5000 2850 60  0000 C CNN
	1    5000 2850
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 J8
U 1 1 54DC230A
P 5000 3300
F 0 "J8" V 4950 3300 40  0000 C CNN
F 1 "CONN_2" V 5050 3300 40  0000 C CNN
F 2 "~" H 5000 3300 60  0000 C CNN
F 3 "~" H 5000 3300 60  0000 C CNN
	1    5000 3300
	-1   0    0    -1  
$EndComp
$Comp
L COAX J1
U 1 1 54DC264D
P 6150 1850
F 0 "J1" H 6200 1650 60  0000 L CNN
F 1 "COAX" H 6150 2050 60  0000 C CNN
F 2 "" H 6150 1850 60  0000 C CNN
F 3 "" H 6150 1850 60  0000 C CNN
	1    6150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2100 6150 2200
Wire Wire Line
	6150 2200 5700 2200
Wire Wire Line
	5700 2200 5700 2050
Wire Wire Line
	5700 2050 5350 2050
Wire Wire Line
	5350 1850 5900 1850
$Comp
L COAX J2
U 1 1 54DC2663
P 6550 2300
F 0 "J2" H 6600 2100 60  0000 L CNN
F 1 "COAX" H 6550 2500 60  0000 C CNN
F 2 "" H 6550 2300 60  0000 C CNN
F 3 "" H 6550 2300 60  0000 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2500 6050 2500
Wire Wire Line
	6050 2500 6050 2300
Wire Wire Line
	6050 2300 6300 2300
Wire Wire Line
	5350 2300 5950 2300
Wire Wire Line
	5950 2300 5950 2650
Wire Wire Line
	5950 2650 6550 2650
Wire Wire Line
	6550 2650 6550 2550
$Comp
L COAX J3
U 1 1 54DC267B
P 6850 2750
F 0 "J3" H 6900 2550 60  0000 L CNN
F 1 "COAX" H 6850 2950 60  0000 C CNN
F 2 "" H 6850 2750 60  0000 C CNN
F 3 "" H 6850 2750 60  0000 C CNN
	1    6850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2750 5350 2750
Wire Wire Line
	5350 2950 6600 2950
Wire Wire Line
	6600 2950 6600 3100
Wire Wire Line
	6600 3100 6850 3100
Wire Wire Line
	6850 3100 6850 3000
$Comp
L COAX J4
U 1 1 54DC26A8
P 6050 3200
F 0 "J4" H 6100 3000 60  0000 L CNN
F 1 "COAX" H 6050 3400 60  0000 C CNN
F 2 "" H 6050 3200 60  0000 C CNN
F 3 "" H 6050 3200 60  0000 C CNN
	1    6050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3200 5350 3200
Wire Wire Line
	5350 3400 5750 3400
Wire Wire Line
	5750 3400 5750 3550
Wire Wire Line
	5750 3550 6050 3550
Wire Wire Line
	6050 3550 6050 3450
$EndSCHEMATC
