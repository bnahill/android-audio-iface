EESchema Schematic File Version 4
LIBS:audio_iface_rev2-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 3
Title "Android DPOAE Interface"
Date "13 may 2015"
Rev "2b"
Comp "Sana AudioPulse"
Comment1 "Ben Nahill <bnahill@gmail.com>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5200 4600 1300 1400
U 523BF424
F0 "Microcontroller" 50
F1 "micro.sch" 50
F2 "USB_D_P" B L 5200 5700 60 
F3 "USB_D_N" B L 5200 5800 60 
F4 "USB_ID" B L 5200 5900 50 
F5 "USB_VBUS" B L 5200 5600 50 
F6 "MIC0_IN" I L 5200 4700 50 
F7 "HP_LP" O R 6500 4700 50 
F8 "HP_LN" O R 6500 4800 50 
F9 "HP_RP" O R 6500 4900 50 
F10 "HP_RN" O R 6500 5000 50 
F11 "MIC1_IN" I L 5200 4800 50 
F12 "ANALOG_EN" O R 6500 5200 50 
$EndSheet
$Sheet
S 4600 800  1000 1300
U 524EE3EB
F0 "Power" 50
F1 "power.sch" 50
F2 "ANALOG_EN" I L 4600 950 60 
$EndSheet
$Comp
L symbols:TP TP1
U 1 1 5251B035
P 4650 6700
F 0 "TP1" H 4650 6600 60  0000 C CNN
F 1 "TP_USB_ID" H 4650 6800 60  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1mmDrill" H 4650 6700 60  0001 C CNN
F 3 "~" H 4650 6700 60  0000 C CNN
	1    4650 6700
	0    1    1    0   
$EndComp
Text Notes 5000 6150 3    60   ~ 0
Floating for USB device
$Comp
L symbols:USB_5V #PWR05
U 1 1 5350403E
P 3950 4600
F 0 "#PWR05" H 3950 4560 30  0001 C CNN
F 1 "USB_5V" H 3950 4710 30  0000 C CNN
F 2 "~" H 3950 4600 60  0000 C CNN
F 3 "~" H 3950 4600 60  0000 C CNN
	1    3950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6750 3350 6650
Wire Wire Line
	7400 5200 6500 5200
Wire Wire Line
	4100 950  4600 950 
$Comp
L power:GNDD #PWR02
U 1 1 57D4EA5B
P 3350 7150
F 0 "#PWR02" H 3350 6900 50  0001 C CNN
F 1 "GNDD" H 3350 7000 50  0000 C CNN
F 2 "" H 3350 7150 50  0000 C CNN
F 3 "" H 3350 7150 50  0000 C CNN
	1    3350 7150
	1    0    0    -1  
$EndComp
$Comp
L symbols:FB FB1
U 1 1 57D53855
P 3350 6900
F 0 "FB1" H 3420 6865 50  0000 L TNN
F 1 "BLM18PG221SN1D" H 3285 6975 30  0000 C BNN
F 2 "Inductors_SMD:L_0805" H 3330 6920 60  0001 C CNN
F 3 "" H 3330 6920 60  0000 C CNN
	1    3350 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 7150 3350 7050
$Comp
L symbols:CAP C2
U 1 1 57D66AF8
P 3400 4850
F 0 "C2" H 3420 4820 50  0000 L TNN
F 1 "2.2u" H 3425 4870 30  0000 L BNN
F 2 "Capacitors_SMD:C_0603" H 3400 4850 60  0001 C CNN
F 3 "" H 3400 4850 60  0000 C CNN
	1    3400 4850
	0    1    1    0   
$EndComp
$Comp
L symbols:FB FB2
U 1 1 57D66D61
P 3600 4700
F 0 "FB2" H 3670 4665 50  0000 L TNN
F 1 "BLM18PG221SN1D" H 3535 4775 30  0000 C BNN
F 2 "Inductors_SMD:L_0805" H 3580 4720 60  0001 C CNN
F 3 "" H 3580 4720 60  0000 C CNN
	1    3600 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 4700 3400 4750
Connection ~ 3400 4700
$Comp
L power:GNDD #PWR03
U 1 1 57D676D1
P 3400 5150
F 0 "#PWR03" H 3400 4900 50  0001 C CNN
F 1 "GNDD" H 3400 5000 50  0000 C CNN
F 2 "" H 3400 5150 50  0000 C CNN
F 3 "" H 3400 5150 50  0000 C CNN
	1    3400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4950 3400 5050
$Comp
L symbols:CAP C3
U 1 1 57D6798C
P 3850 4850
F 0 "C3" H 3870 4820 50  0000 L TNN
F 1 "0.1u" H 3875 4870 30  0000 L BNN
F 2 "Capacitors_SMD:C_0402" H 3850 4850 60  0001 C CNN
F 3 "" H 3850 4850 60  0000 C CNN
	1    3850 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 4700 3850 4700
Wire Wire Line
	3850 4700 3850 4750
Wire Wire Line
	3850 4950 3850 5050
Wire Wire Line
	3850 5050 3400 5050
Connection ~ 3400 5050
Wire Wire Line
	3950 4700 3950 4600
Connection ~ 3850 4700
Wire Wire Line
	3400 4700 3450 4700
Wire Wire Line
	3400 5050 3400 5150
Wire Wire Line
	3850 4700 3950 4700
Wire Wire Line
	5200 5900 4650 5900
Wire Wire Line
	7400 5200 7400 2700
Wire Wire Line
	7400 2700 4100 2700
Wire Wire Line
	4100 2700 4100 950 
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C51D316
P 800 5800
F 0 "J1" H 855 6267 50  0000 C CNN
F 1 "USB_B_Micro" H 855 6176 50  0000 C CNN
F 2 "Connectors:USB_Micro-B_10103594-0001LF" H 950 5750 50  0001 C CNN
F 3 "~" H 950 5750 50  0001 C CNN
	1    800  5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5600 1350 5600
Wire Wire Line
	1350 6000 1100 6000
Wire Wire Line
	800  6650 800  6200
Wire Wire Line
	1150 5800 1100 5800
Wire Wire Line
	1100 5900 1250 5900
Wire Wire Line
	1250 5900 1250 5850
$Comp
L symbols:CAP C1
U 1 1 5C59A595
P 700 6400
F 0 "C1" H 720 6370 50  0000 L TNN
F 1 "2.2u" H 725 6420 30  0000 L BNN
F 2 "Capacitors_SMD:C_0603" H 700 6400 60  0001 C CNN
F 3 "" H 700 6400 60  0000 C CNN
	1    700  6400
	0    1    1    0   
$EndComp
Wire Wire Line
	700  6200 700  6300
Wire Wire Line
	700  6500 700  6600
$Comp
L power:GNDD #PWR01
U 1 1 5C59BE8E
P 700 6600
F 0 "#PWR01" H 700 6350 50  0001 C CNN
F 1 "GNDD" H 700 6450 50  0000 C CNN
F 2 "" H 700 6600 50  0000 C CNN
F 3 "" H 700 6600 50  0000 C CNN
	1    700  6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5650 1150 5800
Wire Wire Line
	3400 5800 5200 5800
Wire Wire Line
	3400 5700 3400 5650
Wire Wire Line
	3400 5650 2700 5650
Wire Wire Line
	3400 5700 5200 5700
Wire Wire Line
	1350 5600 1350 5200
Wire Wire Line
	1350 5200 2200 5200
Wire Wire Line
	2200 5200 2200 5250
Connection ~ 2200 5200
Wire Wire Line
	2200 6650 2200 6250
Wire Wire Line
	800  6650 2200 6650
Connection ~ 2200 6650
Wire Wire Line
	1350 6000 1350 6450
Wire Wire Line
	1350 6450 4650 6450
Wire Wire Line
	4650 6450 4650 5900
Connection ~ 4650 6450
Wire Wire Line
	4650 6450 4650 6600
Wire Wire Line
	2200 6650 3350 6650
Wire Wire Line
	2900 5450 3500 5450
Wire Wire Line
	3500 5450 3500 5600
Wire Wire Line
	3500 5600 5200 5600
Wire Wire Line
	2900 5450 2900 5200
Wire Wire Line
	2900 5200 2900 4700
Connection ~ 2900 5200
Wire Wire Line
	2900 4700 3400 4700
Wire Wire Line
	2200 5200 2900 5200
Wire Wire Line
	1150 5650 1550 5650
Wire Wire Line
	1550 5650 1550 5400
Wire Wire Line
	3400 5800 3400 6150
Text Label 4500 3650 2    50   ~ 0
MIC0
Text Label 4500 3850 2    50   ~ 0
MIC1
$Comp
L power:GNDD #PWR04
U 1 1 5C51DAE2
P 3700 4100
F 0 "#PWR04" H 3700 3850 50  0001 C CNN
F 1 "GNDD" H 3700 3950 50  0000 C CNN
F 2 "" H 3700 4100 50  0000 C CNN
F 3 "" H 3700 4100 50  0000 C CNN
	1    3700 4100
	-1   0    0    -1  
$EndComp
Text Label 4500 4150 2    50   ~ 0
HP_LP
Text Label 4500 4050 2    50   ~ 0
HP_LN
Wire Wire Line
	3700 3750 3700 3950
Connection ~ 3700 3950
Wire Wire Line
	3700 3950 3700 4100
Text Label 4500 4350 2    50   ~ 0
HP_RP
Text Label 4500 4250 2    50   ~ 0
HP_RN
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5C524BA8
P 4850 3950
F 0 "J2" H 4930 3942 50  0000 L CNN
F 1 "Conn_01x08" H 4930 3851 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch1.27mm" H 4850 3950 50  0001 C CNN
F 3 "~" H 4850 3950 50  0001 C CNN
	1    4850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3650 4650 3650
Wire Wire Line
	4500 3850 4650 3850
Wire Wire Line
	3700 3750 4650 3750
Wire Wire Line
	3700 3950 4650 3950
Wire Wire Line
	4500 4050 4650 4050
Wire Wire Line
	4500 4150 4650 4150
Wire Wire Line
	4500 4250 4650 4250
Wire Wire Line
	4500 4350 4650 4350
Text Label 6950 4700 0    50   ~ 0
HP_LP
Text Label 6950 4800 0    50   ~ 0
HP_LN
Text Label 6950 4900 0    50   ~ 0
HP_RP
Text Label 6950 5000 0    50   ~ 0
HP_RN
Wire Wire Line
	6500 4700 6950 4700
Wire Wire Line
	6500 4800 6950 4800
Wire Wire Line
	6500 4900 6950 4900
Wire Wire Line
	6950 5000 6500 5000
Text Label 4800 4700 2    50   ~ 0
MIC0
Wire Wire Line
	4800 4700 5200 4700
Text Label 4800 4800 2    50   ~ 0
MIC1
Wire Wire Line
	4800 4800 5200 4800
Wire Wire Line
	1250 5850 1700 5850
Wire Wire Line
	1650 6150 1650 5650
Wire Wire Line
	1650 5650 1700 5650
Wire Wire Line
	1650 6150 3400 6150
$Comp
L Power_Protection:USBLC6-2SC6 U1
U 1 1 5C59C6CB
P 2200 5750
F 0 "U1" H 2200 6428 50  0000 C CNN
F 1 "USBLC6-2SC6" H 2200 6337 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 1450 6150 50  0001 C CNN
F 3 "http://www2.st.com/resource/en/datasheet/CD00050750.pdf" H 2400 6100 50  0001 C CNN
	1    2200 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5400 2750 5850
Wire Wire Line
	2750 5850 2700 5850
Wire Wire Line
	1550 5400 2750 5400
$EndSCHEMATC
