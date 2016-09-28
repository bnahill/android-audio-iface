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
$Descr A 11000 8500
encoding utf-8
Sheet 1 6
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
L RES R1
U 1 1 523BEA36
P 2050 2650
F 0 "R1" H 2120 2615 50  0000 L TNN
F 1 "3.9k (1%)" H 2050 2705 30  0000 C BNN
F 2 "lib:SMD0402" H 2050 2650 60  0001 C CNN
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
F21 "SPI1_SIN" I R 6100 5900 60 
F22 "SPI1_CS_FLASH" O R 6100 6000 60 
$EndSheet
$Comp
L USBMICROCONN J3
U 1 1 523BF69D
P 2050 5750
F 0 "J3" H 2100 5350 60  0001 C CNN
F 1 "USBMICROCONN" H 2100 5350 60  0000 C CNN
F 2 "lib:FCI_10118194" H 2050 5750 60  0001 C CNN
F 3 "" H 2050 5750 60  0000 C CNN
	1    2050 5750
	0    1    1    0   
$EndComp
$Comp
L AGND_IN #PWR01
U 1 1 52486D6B
P 2050 3600
F 0 "#PWR01" H 2050 3600 40  0001 C CNN
F 1 "AGND_IN" H 2050 3530 50  0000 C CNN
F 2 "" H 2050 3600 60  0000 C CNN
F 3 "" H 2050 3600 60  0000 C CNN
	1    2050 3600
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
L TP TP1
U 1 1 5251B035
P 3600 6200
F 0 "TP1" H 3600 6100 60  0000 C CNN
F 1 "TP_USB_ID" H 3600 6300 60  0000 C CNN
F 2 "lib:TP_HOLE" H 3600 6200 60  0001 C CNN
F 3 "~" H 3600 6200 60  0000 C CNN
	1    3600 6200
	0    1    1    0   
$EndComp
Text Notes 3850 5950 3    60   ~ 0
Floating for USB device
$Comp
L +5VA #PWR02
U 1 1 525790A9
P 2050 2400
F 0 "#PWR02" H 2050 2530 20  0001 C CNN
F 1 "+5VA" H 2050 2500 30  0000 C CNN
F 2 "" H 2050 2400 60  0000 C CNN
F 3 "" H 2050 2400 60  0000 C CNN
	1    2050 2400
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
$Comp
L USB_5V #PWR03
U 1 1 5350403E
P 3950 4900
F 0 "#PWR03" H 3950 4860 30  0001 C CNN
F 1 "USB_5V" H 3950 5010 30  0000 C CNN
F 2 "~" H 3950 4900 60  0000 C CNN
F 3 "~" H 3950 4900 60  0000 C CNN
	1    3950 4900
	1    0    0    -1  
$EndComp
$Comp
L AGND_OUT #PWR04
U 1 1 53573760
P 8600 4000
F 0 "#PWR04" H 8600 4000 40  0001 C CNN
F 1 "AGND_OUT" H 8600 3930 50  0000 C CNN
F 2 "~" H 8600 4000 60  0000 C CNN
F 3 "~" H 8600 4000 60  0000 C CNN
	1    8600 4000
	1    0    0    -1  
$EndComp
$Comp
L CAP C1
U 1 1 535741F7
P 2300 3100
F 0 "C1" H 2320 3070 50  0000 L TNN
F 1 "10n" H 2325 3120 30  0000 L BNN
F 2 "lib:SMD0402" H 2300 3100 60  0001 C CNN
F 3 "~" H 2300 3100 60  0000 C CNN
	1    2300 3100
	0    -1   -1   0   
$EndComp
Text Notes 2100 3250 0    60   ~ 0
DNP
$Comp
L RES R2
U 1 1 5357CAB5
P 3850 5700
F 0 "R2" H 3920 5665 50  0000 L TNN
F 1 "22R" H 3850 5755 30  0000 C BNN
F 2 "lib:SMD0402" H 3850 5700 60  0001 C CNN
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
F 2 "lib:SMD0402" H 4200 5800 60  0001 C CNN
F 3 "~" H 4200 5800 60  0000 C CNN
	1    4200 5800
	1    0    0    -1  
$EndComp
$Comp
L MT29FXX01A U9
U 1 1 55517642
P 8450 5850
F 0 "U9" H 8550 6200 60  0000 L BNN
F 1 "MT29FXX01A" H 8550 5500 60  0000 L TNN
F 2 "MICRON_VFBGA63:MICRON_VFBGA63" H 8450 5850 60  0001 C CNN
F 3 "~" H 8450 5850 60  0000 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
$Comp
L +3V #PWR05
U 1 1 5551B31B
P 8450 5350
F 0 "#PWR05" H 8450 5310 30  0001 C CNN
F 1 "+3V" H 8450 5460 30  0000 C CNN
F 2 "~" H 8450 5350 60  0000 C CNN
F 3 "~" H 8450 5350 60  0000 C CNN
	1    8450 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5551C3F8
P 8450 6400
F 0 "#PWR06" H 8450 6400 30  0001 C CNN
F 1 "GND" H 8450 6330 30  0001 C CNN
F 2 "" H 8450 6400 60  0000 C CNN
F 3 "" H 8450 6400 60  0000 C CNN
	1    8450 6400
	1    0    0    -1  
$EndComp
$Comp
L RES R39
U 1 1 5551D023
P 8000 5600
F 0 "R39" H 8070 5565 50  0000 L TNN
F 1 "100k" H 8000 5655 30  0000 C BNN
F 2 "lib:SMD0402" H 8000 5600 60  0001 C CNN
F 3 "~" H 8000 5600 60  0000 C CNN
	1    8000 5600
	0    -1   -1   0   
$EndComp
$Comp
L CAP C16
U 1 1 5551E392
P 9300 5750
F 0 "C16" H 9320 5720 50  0000 L TNN
F 1 "0.1u" H 9325 5770 30  0000 L BNN
F 2 "lib:SMD0402" H 9050 5700 60  0001 C CNN
F 3 "~" H 9300 5750 60  0000 C CNN
	1    9300 5750
	0    -1   -1   0   
$EndComp
$Comp
L CAP C73
U 1 1 5551E951
P 9450 5750
F 0 "C73" H 9470 5720 50  0000 L TNN
F 1 "1u" H 9475 5770 30  0000 L BNN
F 2 "lib:SMD0402" H 9200 5650 60  0001 C CNN
F 3 "~" H 9450 5750 60  0000 C CNN
	1    9450 5750
	0    -1   -1   0   
$EndComp
$Comp
L COAX J7
U 1 1 5552CC5E
P 9950 3400
F 0 "J7" H 10000 3200 60  0000 L CNN
F 1 "COAX" H 9950 3600 60  0000 C CNN
F 2 "lib:SMA_EDGE" H 9950 3400 60  0001 C CNN
F 3 "~" H 9950 3400 60  0000 C CNN
	1    9950 3400
	1    0    0    -1  
$EndComp
$Comp
L COAX J6
U 1 1 5552D17B
P 9950 2800
F 0 "J6" H 10000 2600 60  0000 L CNN
F 1 "COAX" H 9950 3000 60  0000 C CNN
F 2 "lib:SMA_EDGE" H 9950 2800 60  0001 C CNN
F 3 "~" H 9950 2800 60  0000 C CNN
	1    9950 2800
	1    0    0    -1  
$EndComp
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
	1300 2900 2500 2900
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
	2050 3400 2050 3600
Wire Wire Line
	1950 3400 2300 3400
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
	3300 6000 2300 6000
Wire Wire Line
	9050 2900 8100 2900
Wire Wire Line
	7400 5200 6100 5200
Wire Wire Line
	6100 5300 7400 5300
Wire Wire Line
	3600 6100 3600 5900
Wire Wire Line
	3600 5900 2300 5900
Wire Wire Line
	6100 5600 6200 5600
Wire Wire Line
	6200 5600 6200 3800
Wire Wire Line
	6200 3800 6100 3800
Wire Wire Line
	6100 5700 7800 5700
Wire Wire Line
	6300 5700 6300 3700
Wire Wire Line
	6300 3700 6100 3700
Wire Wire Line
	6100 5800 8100 5800
Wire Wire Line
	6400 5800 6400 3600
Wire Wire Line
	6400 3600 6100 3600
Wire Wire Line
	7400 6100 6100 6100
Wire Wire Line
	6100 6200 7400 6200
Wire Wire Line
	6700 3500 7000 3500
Wire Wire Line
	8600 3100 9950 3100
Wire Wire Line
	8100 3400 9700 3400
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
	8600 3100 8600 4000
Connection ~ 2050 3400
Wire Wire Line
	2300 3400 2300 3200
Wire Wire Line
	2300 3000 2300 2900
Connection ~ 2300 2900
Wire Wire Line
	4350 5800 4800 5800
Wire Wire Line
	4800 5700 4000 5700
Wire Wire Line
	4050 5800 2300 5800
Wire Wire Line
	2300 5700 3700 5700
Wire Wire Line
	4800 5500 4100 5500
Wire Wire Line
	4100 5500 4100 950 
Wire Wire Line
	4100 950  4600 950 
Connection ~ 6400 5800
Wire Wire Line
	7100 5900 8100 5900
Wire Wire Line
	7100 5900 7100 6000
Wire Wire Line
	7100 6000 6100 6000
Wire Wire Line
	6100 5900 7000 5900
Wire Wire Line
	7000 5900 7000 6450
Wire Wire Line
	7000 6450 9150 6450
Wire Wire Line
	9150 6450 9150 5800
Wire Wire Line
	9150 5800 8800 5800
Wire Wire Line
	8450 5400 8450 5350
Wire Wire Line
	8000 5400 9450 5400
Wire Wire Line
	8500 5400 8500 5450
Wire Wire Line
	8400 5400 8400 5450
Connection ~ 8450 5400
Wire Wire Line
	8800 5700 9150 5700
Wire Wire Line
	9150 5700 9150 5200
Wire Wire Line
	9150 5200 7800 5200
Wire Wire Line
	7800 5200 7800 5700
Connection ~ 6300 5700
Wire Wire Line
	8450 6400 8450 6350
Wire Wire Line
	8400 6350 9450 6350
Wire Wire Line
	8500 6350 8500 6250
Wire Wire Line
	8400 6350 8400 6250
Connection ~ 8450 6350
Wire Wire Line
	8800 5900 8900 5900
Wire Wire Line
	8900 5400 8900 6000
Connection ~ 8500 5400
Wire Wire Line
	8900 6000 8800 6000
Connection ~ 8900 5900
Wire Wire Line
	8000 5750 8000 5900
Connection ~ 8000 5900
Wire Wire Line
	8000 5450 8000 5400
Connection ~ 8400 5400
Wire Wire Line
	9300 5400 9300 5650
Connection ~ 8900 5400
Wire Wire Line
	9300 6350 9300 5850
Connection ~ 8500 6350
Wire Wire Line
	9450 5400 9450 5650
Connection ~ 9300 5400
Wire Wire Line
	9450 6350 9450 5850
Connection ~ 9300 6350
Wire Wire Line
	8600 3850 9950 3850
Wire Wire Line
	9950 3850 9950 3650
Connection ~ 8600 3850
Wire Wire Line
	9950 3100 9950 3050
Wire Wire Line
	9050 2900 9050 2800
Wire Wire Line
	9050 2800 9700 2800
$Comp
L COAX J1
U 1 1 5552E623
P 1050 2900
F 0 "J1" H 1100 2700 60  0000 L CNN
F 1 "COAX" H 1050 3100 60  0000 C CNN
F 2 "lib:SMA_EDGE" H 1050 2900 60  0001 C CNN
F 3 "~" H 1050 2900 60  0000 C CNN
	1    1050 2900
	-1   0    0    -1  
$EndComp
$Comp
L AGND_IN #PWR07
U 1 1 5552EDD2
P 1050 3800
F 0 "#PWR07" H 1050 3800 40  0001 C CNN
F 1 "AGND_IN" H 1050 3730 50  0000 C CNN
F 2 "" H 1050 3800 60  0000 C CNN
F 3 "" H 1050 3800 60  0000 C CNN
	1    1050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3800 1050 3150
$Comp
L GNDD #PWR08
U 1 1 57D4EA5B
P 3300 6500
F 0 "#PWR08" H 3300 6250 50  0001 C CNN
F 1 "GNDD" H 3300 6350 50  0000 C CNN
F 2 "" H 3300 6500 50  0000 C CNN
F 3 "" H 3300 6500 50  0000 C CNN
	1    3300 6500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J5
U 1 1 57D4EFF8
P 7600 6150
F 0 "J5" H 7600 6300 50  0000 C CNN
F 1 "CONN_01X02" V 7700 6150 50  0000 C CNN
F 2 "lib:HDR_2X1_50MIL" H 7600 6150 50  0001 C CNN
F 3 "" H 7600 6150 50  0000 C CNN
	1    7600 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J4
U 1 1 57D5084F
P 7600 5250
F 0 "J4" H 7600 5400 50  0000 C CNN
F 1 "CONN_01X02" V 7700 5250 50  0000 C CNN
F 2 "lib:HDR_2X1_50MIL" H 7600 5250 50  0001 C CNN
F 3 "" H 7600 5250 50  0000 C CNN
	1    7600 5250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J2
U 1 1 57D51C49
P 1750 3350
F 0 "J2" H 1750 3500 50  0000 C CNN
F 1 "CONN_01X02" V 1850 3350 50  0000 C CNN
F 2 "lib:HDR_2X1_50MIL" H 1750 3350 50  0001 C CNN
F 3 "" H 1750 3350 50  0000 C CNN
	1    1750 3350
	-1   0    0    1   
$EndComp
$Comp
L FB FB1
U 1 1 57D53855
P 3300 6250
F 0 "FB1" H 3370 6215 50  0000 L TNN
F 1 "BLM18PG221SN1D" H 3235 6325 30  0000 C BNN
F 2 "lib:SMD0805" H 3280 6270 60  0001 C CNN
F 3 "" H 3280 6270 60  0000 C CNN
	1    3300 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 6500 3300 6400
$Comp
L CAP C75
U 1 1 57D66AF8
P 3400 5150
F 0 "C75" H 3420 5120 50  0000 L TNN
F 1 "10u" H 3425 5170 30  0000 L BNN
F 2 "lib:SMD0805" H 3400 5150 60  0001 C CNN
F 3 "" H 3400 5150 60  0000 C CNN
	1    3400 5150
	0    1    1    0   
$EndComp
$Comp
L FB FB2
U 1 1 57D66D61
P 3600 5000
F 0 "FB2" H 3670 4965 50  0000 L TNN
F 1 "BLM18PG221SN1D" H 3535 5075 30  0000 C BNN
F 2 "lib:SMD0805" H 3580 5020 60  0001 C CNN
F 3 "" H 3580 5020 60  0000 C CNN
	1    3600 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 5600 2550 5600
Wire Wire Line
	2550 5600 2550 5000
Wire Wire Line
	2550 5000 3450 5000
Wire Wire Line
	3400 5000 3400 5050
Connection ~ 3400 5000
$Comp
L GNDD #PWR09
U 1 1 57D676D1
P 3400 5500
F 0 "#PWR09" H 3400 5250 50  0001 C CNN
F 1 "GNDD" H 3400 5350 50  0000 C CNN
F 2 "" H 3400 5500 50  0000 C CNN
F 3 "" H 3400 5500 50  0000 C CNN
	1    3400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5250 3400 5500
$Comp
L CAP C76
U 1 1 57D6798C
P 3850 5150
F 0 "C76" H 3870 5120 50  0000 L TNN
F 1 "0.1u" H 3875 5170 30  0000 L BNN
F 2 "lib:SMD0402" H 3850 5150 60  0001 C CNN
F 3 "" H 3850 5150 60  0000 C CNN
	1    3850 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 5000 3950 5000
Wire Wire Line
	3850 5000 3850 5050
Wire Wire Line
	3850 5250 3850 5450
Wire Wire Line
	3850 5450 3400 5450
Connection ~ 3400 5450
Wire Wire Line
	3950 5000 3950 4900
Connection ~ 3850 5000
$Comp
L CAP C74
U 1 1 57D6B4C5
P 2400 6300
F 0 "C74" H 2420 6270 50  0000 L TNN
F 1 "47p" H 2425 6320 30  0000 L BNN
F 2 "lib:SMD0402" H 2400 6300 60  0001 C CNN
F 3 "" H 2400 6300 60  0000 C CNN
	1    2400 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6100 2400 6100
Wire Wire Line
	2400 6100 2400 6200
$Comp
L GNDD #PWR010
U 1 1 57D6BD63
P 2400 6500
F 0 "#PWR010" H 2400 6250 50  0001 C CNN
F 1 "GNDD" H 2400 6350 50  0000 C CNN
F 2 "" H 2400 6500 50  0000 C CNN
F 3 "" H 2400 6500 50  0000 C CNN
	1    2400 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6400 2400 6500
Text Notes 2200 6250 0    60   ~ 0
DNP
$EndSCHEMATC
