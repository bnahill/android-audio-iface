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
Sheet 4 6
Title "Android DPOAE Interface"
Date "6 may 2014"
Rev "2a"
Comp "Sana AudioPulse"
Comment1 "Ben Nahill <bnahill@gmail.com>"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7250 2800 2    60   Output ~ 0
HP_~SD
$Comp
L +3V #PWR35
U 1 1 524A6D6E
P 4050 4200
F 0 "#PWR35" H 4050 4160 30  0001 C CNN
F 1 "+3V" H 4050 4310 30  0000 C CNN
F 2 "" H 4050 4200 60  0000 C CNN
F 3 "" H 4050 4200 60  0000 C CNN
	1    4050 4200
	1    0    0    -1  
$EndComp
$Comp
L CAP C34
U 1 1 524A6DA1
P 4050 4650
F 0 "C34" H 4070 4620 50  0000 L TNN
F 1 "10n" H 4075 4670 30  0000 L BNN
F 2 "~" H 4050 4650 60  0000 C CNN
F 3 "~" H 4050 4650 60  0000 C CNN
	1    4050 4650
	0    -1   -1   0   
$EndComp
$Comp
L CAP C33
U 1 1 524A6DB4
P 3750 4650
F 0 "C33" H 3770 4620 50  0000 L TNN
F 1 "0.1u" H 3775 4670 30  0000 L BNN
F 2 "~" H 3750 4650 60  0000 C CNN
F 3 "~" H 3750 4650 60  0000 C CNN
	1    3750 4650
	0    -1   -1   0   
$EndComp
$Comp
L CAP C31
U 1 1 524A6DBA
P 3300 4650
F 0 "C31" H 3320 4620 50  0000 L TNN
F 1 "2.2u" H 3325 4670 30  0000 L BNN
F 2 "~" H 3300 4650 60  0000 C CNN
F 3 "~" H 3300 4650 60  0000 C CNN
	1    3300 4650
	0    -1   -1   0   
$EndComp
$Comp
L CAP C32
U 1 1 524A7184
P 3450 4650
F 0 "C32" H 3470 4620 50  0000 L TNN
F 1 "1u" H 3475 4670 30  0000 L BNN
F 2 "~" H 3450 4650 60  0000 C CNN
F 3 "~" H 3450 4650 60  0000 C CNN
	1    3450 4650
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR32
U 1 1 524A769B
P 2900 4950
F 0 "#PWR32" H 2900 4950 40  0001 C CNN
F 1 "DGND" H 2900 4880 40  0000 C CNN
F 2 "" H 2900 4950 60  0000 C CNN
F 3 "" H 2900 4950 60  0000 C CNN
	1    2900 4950
	1    0    0    -1  
$EndComp
$Comp
L XTAL X1
U 1 1 524D93F7
P 4300 6600
F 0 "X1" H 4300 6540 40  0000 C TNN
F 1 "XTAL" H 4300 6660 40  0000 C BNN
F 2 "~" H 4300 6600 60  0000 C CNN
F 3 "~" H 4300 6600 60  0000 C CNN
	1    4300 6600
	0    1    -1   0   
$EndComp
$Comp
L CAP C35
U 1 1 524D946B
P 4050 6500
F 0 "C35" H 4070 6470 50  0000 L TNN
F 1 "CAP" H 4075 6520 30  0000 L BNN
F 2 "~" H 4050 6500 60  0000 C CNN
F 3 "~" H 4050 6500 60  0000 C CNN
	1    4050 6500
	-1   0    0    -1  
$EndComp
$Comp
L CAP C36
U 1 1 524D9478
P 4050 6700
F 0 "C36" H 4070 6670 50  0000 L TNN
F 1 "CAP" H 4075 6720 30  0000 L BNN
F 2 "~" H 4050 6700 60  0000 C CNN
F 3 "~" H 4050 6700 60  0000 C CNN
	1    4050 6700
	-1   0    0    -1  
$EndComp
$Comp
L DGND #PWR33
U 1 1 524D9525
P 3750 6650
F 0 "#PWR33" H 3750 6650 40  0001 C CNN
F 1 "DGND" H 3750 6580 40  0000 C CNN
F 2 "" H 3750 6650 60  0000 C CNN
F 3 "" H 3750 6650 60  0000 C CNN
	1    3750 6650
	-1   0    0    -1  
$EndComp
Text Label 4500 5700 2    60   ~ 0
SWCLK
Text Label 4500 5900 2    60   ~ 0
SWO
Text Label 4500 6000 2    60   ~ 0
SWDIO
Text HLabel 7250 4200 2    60   Output ~ 0
CODEC_MCLK
Text HLabel 7250 4100 2    60   Input ~ 0
CODEC_SDIN
Text HLabel 7250 3800 2    60   Output ~ 0
CODEC_LRCK
Text HLabel 7250 3900 2    60   Output ~ 0
CODEC_BCLK
Text HLabel 7250 3700 2    60   Output ~ 0
CODEC_SDO
Text HLabel 6400 5700 2    60   Output ~ 0
UART0_TX
Text HLabel 6400 5600 2    60   Input ~ 0
UART0_RX
Text HLabel 4450 5400 0    60   BiDi ~ 0
USB_D+
Text HLabel 4450 5500 0    60   BiDi ~ 0
USB_D-
$Comp
L CAP C30
U 1 1 524DA378
P 2900 3950
F 0 "C30" H 2920 3920 50  0000 L TNN
F 1 "0.1u" H 2925 3970 30  0000 L BNN
F 2 "~" H 2900 3950 60  0000 C CNN
F 3 "~" H 2900 3950 60  0000 C CNN
	1    2900 3950
	0    -1   -1   0   
$EndComp
$Comp
L CAP C29
U 1 1 524DA385
P 2750 3950
F 0 "C29" H 2770 3920 50  0000 L TNN
F 1 "2.2u" H 2775 3970 30  0000 L BNN
F 2 "~" H 2750 3950 60  0000 C CNN
F 3 "~" H 2750 3950 60  0000 C CNN
	1    2750 3950
	0    -1   -1   0   
$EndComp
Text Label 4400 2600 2    60   ~ 0
~RESET
Text HLabel 7250 2900 2    60   Output ~ 0
CODEC_PDN
NoConn ~ 4700 3500
NoConn ~ 4700 3600
Text Notes 6000 4200 0    40   ~ 0
Fs*256: 25.476MHz (for 96kHz)
Text Notes 6000 3900 0    40   ~ 0
>Fs*48
Text Notes 6000 3800 0    40   ~ 0
Fs*2
Text Label 5300 1150 2    60   ~ 0
SWDIO
Text Label 5300 1350 2    60   ~ 0
SWCLK
Text Label 5300 1050 2    60   ~ 0
~RESET
Text Label 5300 1250 2    60   ~ 0
SWO
$Comp
L RES R20
U 1 1 524F1C32
P 3500 2600
F 0 "R20" H 3570 2565 50  0000 L TNN
F 1 "10k" H 3500 2655 30  0000 C BNN
F 2 "~" H 3500 2600 60  0000 C CNN
F 3 "~" H 3500 2600 60  0000 C CNN
	1    3500 2600
	-1   0    0    1   
$EndComp
$Comp
L CONN_6 J8
U 1 1 5251A967
P 5650 1300
F 0 "J8" V 5600 1300 60  0000 C CNN
F 1 "CONN_6" V 5700 1300 60  0000 C CNN
F 2 "~" H 5650 1300 60  0000 C CNN
F 3 "~" H 5650 1300 60  0000 C CNN
	1    5650 1300
	1    0    0    -1  
$EndComp
$Comp
L +3V #PWR36
U 1 1 5251A974
P 4900 1350
F 0 "#PWR36" H 4900 1310 30  0001 C CNN
F 1 "+3V" H 4900 1460 30  0000 C CNN
F 2 "" H 4900 1350 60  0000 C CNN
F 3 "" H 4900 1350 60  0000 C CNN
	1    4900 1350
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR37
U 1 1 5251A9DC
P 4900 1650
F 0 "#PWR37" H 4900 1650 40  0001 C CNN
F 1 "DGND" H 4900 1580 40  0000 C CNN
F 2 "" H 4900 1650 60  0000 C CNN
F 3 "" H 4900 1650 60  0000 C CNN
	1    4900 1650
	1    0    0    -1  
$EndComp
$Comp
L TP TP6
U 1 1 5251B77F
P 8200 3000
F 0 "TP6" H 8200 2900 60  0000 C CNN
F 1 "TP_PTB16" H 8200 3100 60  0000 C CNN
F 2 "~" H 8200 3000 60  0000 C CNN
F 3 "~" H 8200 3000 60  0000 C CNN
	1    8200 3000
	1    0    0    -1  
$EndComp
$Comp
L RES R23
U 1 1 5251B82C
P 8300 5850
F 0 "R23" H 8370 5815 50  0000 L TNN
F 1 "RES" H 8300 5905 30  0000 C BNN
F 2 "~" H 8300 5850 60  0000 C CNN
F 3 "~" H 8300 5850 60  0000 C CNN
	1    8300 5850
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR41
U 1 1 5251B8ED
P 8300 6650
F 0 "#PWR41" H 8300 6650 40  0001 C CNN
F 1 "DGND" H 8300 6580 40  0000 C CNN
F 2 "" H 8300 6650 60  0000 C CNN
F 3 "" H 8300 6650 60  0000 C CNN
	1    8300 6650
	1    0    0    -1  
$EndComp
$Comp
L TP TP5
U 1 1 5251B955
P 7800 3100
F 0 "TP5" H 7800 3000 60  0000 C CNN
F 1 "TP_PTB3" H 7800 3200 60  0000 C CNN
F 2 "~" H 7800 3100 60  0000 C CNN
F 3 "~" H 7800 3100 60  0000 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
$Comp
L TP TP4
U 1 1 5251BBAF
P 6500 6000
F 0 "TP4" H 6500 5900 60  0000 C CNN
F 1 "TP_PTE0" H 6500 6100 60  0000 C CNN
F 2 "~" H 6500 6000 60  0000 C CNN
F 3 "~" H 6500 6000 60  0000 C CNN
	1    6500 6000
	1    0    0    -1  
$EndComp
$Comp
L K20X7_QFP64 U4
U 1 1 5255CF3B
P 5350 4700
F 0 "U4" H 5850 2650 60  0000 R CNN
F 1 "K20X7_QFP64" H 5350 6950 60  0000 C CNN
F 2 "" H 8900 6600 60  0000 C CNN
F 3 "" H 8900 6600 60  0000 C CNN
	1    5350 4700
	1    0    0    -1  
$EndComp
Text HLabel 6250 5100 2    60   Output ~ 0
SPI1_SCK
Text HLabel 6250 5200 2    60   Output ~ 0
SPI1_SOUT
Text HLabel 6250 5000 2    60   Output ~ 0
SPI1_CS_CODEC
Text HLabel 4350 2800 0    60   Input ~ 0
PGA0_D+
Text HLabel 4350 2900 0    60   Input ~ 0
PGA0_D-
$Comp
L USB_5V #PWR34
U 1 1 535048A3
P 3850 3600
F 0 "#PWR34" H 3850 3560 30  0001 C CNN
F 1 "USB_5V" H 3850 3710 30  0000 C CNN
F 2 "~" H 3850 3600 60  0000 C CNN
F 3 "~" H 3850 3600 60  0000 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
$Comp
L RES R24
U 1 1 5352B52D
P 8500 5850
F 0 "R24" H 8570 5815 50  0000 L TNN
F 1 "RES" H 8500 5905 30  0000 C BNN
F 2 "~" H 8500 5850 60  0000 C CNN
F 3 "~" H 8500 5850 60  0000 C CNN
	1    8500 5850
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR42
U 1 1 5352B535
P 8500 6650
F 0 "#PWR42" H 8500 6650 40  0001 C CNN
F 1 "DGND" H 8500 6580 40  0000 C CNN
F 2 "" H 8500 6650 60  0000 C CNN
F 3 "" H 8500 6650 60  0000 C CNN
	1    8500 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2600 3300 4550
Wire Wire Line
	2750 4800 4700 4800
Connection ~ 4050 4800
Wire Wire Line
	3750 4800 3750 4750
Wire Wire Line
	3300 4800 3300 4750
Connection ~ 3750 4800
Wire Wire Line
	4600 4500 4700 4500
Connection ~ 4050 4400
Wire Wire Line
	3750 4400 3750 4550
Connection ~ 3750 4400
Wire Wire Line
	3450 4400 3450 4550
Connection ~ 3450 4400
Wire Wire Line
	3450 4750 3450 4800
Connection ~ 3450 4800
Wire Wire Line
	4150 6700 4450 6700
Wire Wire Line
	4150 6500 4700 6500
Connection ~ 4300 6700
Connection ~ 4300 6500
Wire Wire Line
	3950 6500 3850 6500
Wire Wire Line
	3850 6500 3850 6700
Wire Wire Line
	3850 6700 3950 6700
Wire Wire Line
	3750 6650 3750 6600
Wire Wire Line
	3750 6600 3850 6600
Connection ~ 3850 6600
Wire Wire Line
	4500 5700 4700 5700
Wire Wire Line
	4700 5900 4500 5900
Wire Wire Line
	4500 6000 4700 6000
Wire Wire Line
	5950 3700 7250 3700
Wire Wire Line
	7250 3800 5950 3800
Wire Wire Line
	5950 3900 7250 3900
Wire Wire Line
	7250 4100 5950 4100
Wire Wire Line
	5950 4200 7250 4200
Wire Wire Line
	6400 5600 5950 5600
Wire Wire Line
	5950 5700 6400 5700
Wire Wire Line
	4450 5500 4700 5500
Wire Wire Line
	4700 5400 4450 5400
Wire Wire Line
	2900 3700 2900 3850
Wire Wire Line
	2750 3700 2750 3850
Connection ~ 2900 3700
Wire Wire Line
	2750 4050 2750 4800
Wire Wire Line
	4900 1350 4900 1450
Wire Wire Line
	4900 1450 5300 1450
Wire Wire Line
	4900 1650 4900 1550
Wire Wire Line
	4900 1550 5300 1550
Wire Wire Line
	8300 5400 8300 5700
Wire Wire Line
	8300 6000 8300 6100
Wire Wire Line
	8300 6650 8300 6500
Wire Wire Line
	4700 4700 4600 4700
Wire Wire Line
	4600 4700 4600 5200
Wire Wire Line
	4600 4900 4700 4900
Connection ~ 4600 4800
Wire Wire Line
	4600 5000 4700 5000
Connection ~ 4600 4900
Wire Wire Line
	4600 5100 4700 5100
Connection ~ 4600 5000
Wire Wire Line
	4600 5200 4700 5200
Connection ~ 4600 5100
Wire Wire Line
	4700 4000 4600 4000
Wire Wire Line
	4600 3800 4600 4500
Wire Wire Line
	4600 4100 4700 4100
Wire Wire Line
	4600 4200 4700 4200
Connection ~ 4600 4100
Wire Wire Line
	4600 4300 4700 4300
Connection ~ 4600 4200
Connection ~ 4600 4300
Connection ~ 4600 4400
Wire Wire Line
	4600 3800 4700 3800
Connection ~ 4600 4000
Wire Wire Line
	4450 6700 4450 6600
Wire Wire Line
	4450 6600 4700 6600
Wire Wire Line
	4050 4200 4050 4550
Wire Wire Line
	4050 4800 4050 4750
Wire Wire Line
	2900 4050 2900 4950
Connection ~ 2900 4800
Connection ~ 3300 4800
Wire Wire Line
	3650 2600 4700 2600
Wire Wire Line
	3350 2600 3300 2600
Connection ~ 3300 4400
Wire Wire Line
	6250 5100 5950 5100
Wire Wire Line
	6250 5200 5950 5200
Wire Wire Line
	6250 5000 5950 5000
Wire Wire Line
	7250 2800 5950 2800
Wire Wire Line
	4350 2900 4700 2900
Wire Wire Line
	4700 2800 4350 2800
Wire Wire Line
	6400 6000 5950 6000
Wire Wire Line
	8100 3000 5950 3000
Wire Wire Line
	5950 3100 7700 3100
Wire Wire Line
	3850 3700 3850 3600
Connection ~ 3850 3700
Wire Wire Line
	2750 3700 4700 3700
Wire Wire Line
	8500 6000 8500 6100
Wire Wire Line
	8500 6650 8500 6500
Text Label 6900 3100 0    60   ~ 0
UART_TX
Text Label 6900 3000 0    60   ~ 0
UART_RX
Text HLabel 7250 2600 2    60   BiDi ~ 0
I2C_SCL
Text HLabel 7250 2700 2    60   BiDi ~ 0
I2C_SDA
Wire Wire Line
	5950 2700 7250 2700
Wire Wire Line
	5950 2600 7250 2600
$Comp
L RES R21
U 1 1 53570B82
P 6700 2300
F 0 "R21" H 6770 2265 50  0000 L TNN
F 1 "10k" H 6700 2355 30  0000 C BNN
F 2 "~" H 6700 2300 60  0000 C CNN
F 3 "~" H 6700 2300 60  0000 C CNN
	1    6700 2300
	0    -1   -1   0   
$EndComp
$Comp
L RES R22
U 1 1 53570B8F
P 6850 2300
F 0 "R22" H 6920 2265 50  0000 L TNN
F 1 "10k" H 6850 2355 30  0000 C BNN
F 2 "~" H 6850 2300 60  0000 C CNN
F 3 "~" H 6850 2300 60  0000 C CNN
	1    6850 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 2450 6850 2600
Connection ~ 6850 2600
Wire Wire Line
	6700 2450 6700 2700
Connection ~ 6700 2700
$Comp
L +3V #PWR39
U 1 1 53570C75
P 6700 2000
F 0 "#PWR39" H 6700 1960 30  0001 C CNN
F 1 "+3V" H 6700 2110 30  0000 C CNN
F 2 "" H 6700 2000 60  0000 C CNN
F 3 "" H 6700 2000 60  0000 C CNN
	1    6700 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2000 6700 2150
Wire Wire Line
	6700 2050 6850 2050
Wire Wire Line
	6850 2050 6850 2150
Connection ~ 6700 2050
Wire Wire Line
	3300 4400 4700 4400
Text HLabel 6250 5300 2    60   Output ~ 0
ANALOG_EN
Wire Wire Line
	5950 4000 8700 4000
$Comp
L RES R30
U 1 1 5363BE41
P 8700 5850
F 0 "R30" H 8770 5815 50  0000 L TNN
F 1 "RES" H 8700 5905 30  0000 C BNN
F 2 "~" H 8700 5850 60  0000 C CNN
F 3 "~" H 8700 5850 60  0000 C CNN
	1    8700 5850
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR43
U 1 1 5363BE47
P 8700 6650
F 0 "#PWR43" H 8700 6650 40  0001 C CNN
F 1 "DGND" H 8700 6580 40  0000 C CNN
F 2 "" H 8700 6650 60  0000 C CNN
F 3 "" H 8700 6650 60  0000 C CNN
	1    8700 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4000 8700 5700
Wire Wire Line
	8700 6650 8700 6500
Wire Wire Line
	6250 5300 5950 5300
Wire Wire Line
	7250 2900 5950 2900
$Comp
L LED3 D1
U 1 1 53645218
P 8500 6300
F 0 "D1" H 8500 6650 50  0000 C CNN
F 1 "LTST-C19FD1WT" H 8500 5950 50  0000 C CNN
F 2 "~" H 8500 6500 60  0000 C CNN
F 3 "~" H 8500 6500 60  0000 C CNN
	1    8500 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 6000 8700 6100
Wire Wire Line
	8300 5400 5950 5400
Wire Wire Line
	8500 5700 8500 5500
Wire Wire Line
	8500 5500 5950 5500
$Comp
L OSC_W_EN X2
U 1 1 53695566
P 6750 4550
F 0 "X2" H 6900 4400 60  0000 C CNN
F 1 "ASFLM2-12.288MHZ" H 6750 4700 60  0000 C CNN
F 2 "" H 6750 4550 60  0000 C CNN
F 3 "" H 6750 4550 60  0000 C CNN
	1    6750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4600 7200 4600
Wire Wire Line
	7200 4600 7200 4200
Connection ~ 7200 4200
$Comp
L +3V #PWR40
U 1 1 536955E4
P 7300 4350
F 0 "#PWR40" H 7300 4310 30  0001 C CNN
F 1 "+3V" H 7300 4460 30  0000 C CNN
F 2 "" H 7300 4350 60  0000 C CNN
F 3 "" H 7300 4350 60  0000 C CNN
	1    7300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4350 7300 4500
Wire Wire Line
	7300 4500 7050 4500
$Comp
L DGND #PWR38
U 1 1 5369565E
P 6350 4850
F 0 "#PWR38" H 6350 4850 40  0001 C CNN
F 1 "DGND" H 6350 4780 40  0000 C CNN
F 2 "" H 6350 4850 60  0000 C CNN
F 3 "" H 6350 4850 60  0000 C CNN
	1    6350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4600 6350 4850
Wire Wire Line
	6350 4600 6450 4600
Wire Wire Line
	5950 3200 6250 3200
Wire Wire Line
	6250 3200 6250 4500
Wire Wire Line
	6250 4500 6450 4500
$Comp
L CAP C71
U 1 1 53697AF9
P 7400 4550
F 0 "C71" H 7420 4520 50  0000 L TNN
F 1 "10n" H 7425 4570 30  0000 L BNN
F 2 "~" H 7400 4550 60  0000 C CNN
F 3 "~" H 7400 4550 60  0000 C CNN
	1    7400 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 4750 7400 4750
Wire Wire Line
	7400 4750 7400 4650
Connection ~ 6350 4750
Wire Wire Line
	7400 4450 7400 4400
Wire Wire Line
	7400 4400 7300 4400
Connection ~ 7300 4400
$EndSCHEMATC
