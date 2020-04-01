EESchema Schematic File Version 4
LIBS:multisensor-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR02
U 1 1 5D5A2948
P 1600 1100
F 0 "#PWR02" H 1600 950 50  0001 C CNN
F 1 "+5V" H 1615 1273 50  0000 C CNN
F 2 "" H 1600 1100 50  0001 C CNN
F 3 "" H 1600 1100 50  0001 C CNN
	1    1600 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D5A3F4B
P 1500 2900
F 0 "#PWR01" H 1500 2650 50  0001 C CNN
F 1 "GND" V 1505 2772 50  0000 R CNN
F 2 "" H 1500 2900 50  0001 C CNN
F 3 "" H 1500 2900 50  0001 C CNN
	1    1500 2900
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 5D5A3676
P 1800 1100
F 0 "#PWR03" H 1800 950 50  0001 C CNN
F 1 "+3V3" H 1815 1273 50  0000 C CNN
F 2 "" H 1800 1100 50  0001 C CNN
F 3 "" H 1800 1100 50  0001 C CNN
	1    1800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1100 1600 1200
$Comp
L Connector:Conn_01x03_Female PIR1
U 1 1 5D5BBE0F
P 5400 1250
F 0 "PIR1" H 5428 1276 50  0000 L CNN
F 1 "Conn_01x03_Female" H 5428 1185 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 5400 1250 50  0001 C CNN
F 3 "~" H 5400 1250 50  0001 C CNN
	1    5400 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5D5BCA44
P 4950 1150
F 0 "#PWR06" H 4950 1000 50  0001 C CNN
F 1 "+5V" V 4965 1278 50  0000 L CNN
F 2 "" H 4950 1150 50  0001 C CNN
F 3 "" H 4950 1150 50  0001 C CNN
	1    4950 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D5BD26F
P 4950 1350
F 0 "#PWR07" H 4950 1100 50  0001 C CNN
F 1 "GND" V 4955 1222 50  0000 R CNN
F 2 "" H 4950 1350 50  0001 C CNN
F 3 "" H 4950 1350 50  0001 C CNN
	1    4950 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1150 4950 1150
Wire Wire Line
	5200 1350 4950 1350
$Comp
L Connector:Conn_01x03_Female MICRO1
U 1 1 5D5C4729
P 5450 1700
F 0 "MICRO1" H 5478 1726 50  0000 L CNN
F 1 "Conn_01x03_Female" H 5478 1635 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 5450 1700 50  0001 C CNN
F 3 "~" H 5450 1700 50  0001 C CNN
	1    5450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5D5C472F
P 5000 1600
F 0 "#PWR08" H 5000 1450 50  0001 C CNN
F 1 "+5V" V 5015 1728 50  0000 L CNN
F 2 "" H 5000 1600 50  0001 C CNN
F 3 "" H 5000 1600 50  0001 C CNN
	1    5000 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D5C4735
P 5000 1800
F 0 "#PWR09" H 5000 1550 50  0001 C CNN
F 1 "GND" V 5005 1672 50  0000 R CNN
F 2 "" H 5000 1800 50  0001 C CNN
F 3 "" H 5000 1800 50  0001 C CNN
	1    5000 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 1600 5000 1600
Wire Wire Line
	5250 1800 5000 1800
$Comp
L power:+5V #PWR010
U 1 1 5D5C5E3F
P 5000 2000
F 0 "#PWR010" H 5000 1850 50  0001 C CNN
F 1 "+5V" V 5015 2128 50  0000 L CNN
F 2 "" H 5000 2000 50  0001 C CNN
F 3 "" H 5000 2000 50  0001 C CNN
	1    5000 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D5C5E45
P 5000 2400
F 0 "#PWR011" H 5000 2150 50  0001 C CNN
F 1 "GND" V 5005 2272 50  0000 R CNN
F 2 "" H 5000 2400 50  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
	1    5000 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2000 5100 2000
$Comp
L power:+5V #PWR04
U 1 1 5D599295
P 4550 2700
F 0 "#PWR04" H 4550 2550 50  0001 C CNN
F 1 "+5V" H 4565 2873 50  0000 C CNN
F 2 "" H 4550 2700 50  0001 C CNN
F 3 "" H 4550 2700 50  0001 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3300 4850 3300
Wire Wire Line
	5300 2950 4900 2950
Wire Wire Line
	4900 2950 4900 3300
Wire Wire Line
	5300 3050 5300 3600
$Comp
L Device:R R1
U 1 1 5D603D61
P 4100 3100
F 0 "R1" V 4307 3100 50  0000 C CNN
F 1 "100R" V 4216 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4030 3100 50  0001 C CNN
F 3 "~" H 4100 3100 50  0001 C CNN
	1    4100 3100
	-1   0    0    1   
$EndComp
$Comp
L LED:WS2812B NEOPIXEL_0
U 1 1 5D5D91F3
P 4550 3300
F 0 "NEOPIXEL_0" H 4894 3346 50  0000 L BNN
F 1 "Inolux_IN-PI556FCH" H 4894 3255 50  0001 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4600 3000 50  0001 L TNN
F 3 "http://www.inolux-corp.com/datasheet/SMDLED/Addressable%20LED/IN-PI556FCH.pdf" H 4650 2925 50  0001 L TNN
	1    4550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2850 4550 3000
$Comp
L Device:R R2
U 1 1 5D5AAE01
P 5050 1250
F 0 "R2" V 4843 1250 50  0000 C CNN
F 1 "100R" V 4934 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4980 1250 50  0001 C CNN
F 3 "~" H 5050 1250 50  0001 C CNN
	1    5050 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D5AF840
P 5100 1700
F 0 "R3" V 4893 1700 50  0000 C CNN
F 1 "100R" V 4984 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5030 1700 50  0001 C CNN
F 3 "~" H 5100 1700 50  0001 C CNN
	1    5100 1700
	0    1    1    0   
$EndComp
Connection ~ 4550 2850
Wire Wire Line
	4550 2850 4550 2700
Wire Wire Line
	4550 3600 4550 3700
$Comp
L power:GND #PWR05
U 1 1 5D5BF4D3
P 4550 3700
F 0 "#PWR05" H 4550 3450 50  0001 C CNN
F 1 "GND" H 4555 3527 50  0000 C CNN
F 2 "" H 4550 3700 50  0001 C CNN
F 3 "" H 4550 3700 50  0001 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
Connection ~ 4550 3600
Wire Wire Line
	4100 3250 4100 3300
Text Label 4100 2950 1    50   ~ 0
NEOPIXEL_S
Text Label 2100 1700 0    50   ~ 0
GPIO16_S
Text Label 2100 1800 0    50   ~ 0
TEMP_SENSOR_S
Text Label 2100 1900 0    50   ~ 0
PIR_S
Text Label 2100 2300 0    50   ~ 0
NEOPIXEL_S
Text Label 2100 2100 0    50   ~ 0
GPIO2_S
Text Label 2100 2200 0    50   ~ 0
GPIO14_S
Text Label 2100 2000 0    50   ~ 0
GPIO0_S
Text Label 2100 2500 0    50   ~ 0
GPIO15_S
Text Label 2100 2400 0    50   ~ 0
MICRO_S
Text Label 4900 1250 2    50   ~ 0
PIR_S
Text Label 4950 1700 2    50   ~ 0
MICRO_S
Text Label 5050 2300 2    50   ~ 0
TEMP_SENSOR_S
$Comp
L Connector:Conn_01x05_Male GND1
U 1 1 5D61EEAB
P 8400 1600
F 0 "GND1" H 8508 1881 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8508 1790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8400 1600 50  0001 C CNN
F 3 "~" H 8400 1600 50  0001 C CNN
	1    8400 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male POWER_SELECT1
U 1 1 5D620D45
P 7300 2150
F 0 "POWER_SELECT1" H 7272 2082 50  0000 R CNN
F 1 "Conn_01x04_Male" H 7272 2173 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7300 2150 50  0001 C CNN
F 3 "~" H 7300 2150 50  0001 C CNN
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5D621448
P 7750 2050
F 0 "#PWR012" H 7750 1900 50  0001 C CNN
F 1 "+3.3V" V 7765 2178 50  0000 L CNN
F 2 "" H 7750 2050 50  0001 C CNN
F 3 "" H 7750 2050 50  0001 C CNN
	1    7750 2050
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5D6227D9
P 7750 2250
F 0 "#PWR013" H 7750 2100 50  0001 C CNN
F 1 "+5V" V 7765 2378 50  0000 L CNN
F 2 "" H 7750 2250 50  0001 C CNN
F 3 "" H 7750 2250 50  0001 C CNN
	1    7750 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2250 7750 2250
Wire Wire Line
	7500 2050 7750 2050
Text Label 7750 2150 0    50   ~ 0
POWER
Wire Wire Line
	7750 2150 7500 2150
$Comp
L power:GND #PWR015
U 1 1 5D627D96
P 8750 1650
F 0 "#PWR015" H 8750 1400 50  0001 C CNN
F 1 "GND" V 8755 1522 50  0000 R CNN
F 2 "" H 8750 1650 50  0001 C CNN
F 3 "" H 8750 1650 50  0001 C CNN
	1    8750 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 1500 8750 1500
Wire Wire Line
	8750 1500 8750 1600
Wire Wire Line
	8600 1600 8750 1600
Connection ~ 8750 1600
Wire Wire Line
	8600 1700 8750 1700
Wire Wire Line
	8750 1700 8750 1650
Wire Wire Line
	8600 1800 8750 1800
Wire Wire Line
	8750 1800 8750 1700
Connection ~ 8750 1700
Connection ~ 8750 1650
Wire Wire Line
	8750 1650 8750 1600
Wire Wire Line
	7650 1500 7650 1600
Wire Wire Line
	7650 1800 7500 1800
Wire Wire Line
	7500 1500 7650 1500
Wire Wire Line
	7500 1600 7650 1600
Connection ~ 7650 1600
Wire Wire Line
	7500 1700 7650 1700
Connection ~ 7650 1700
Wire Wire Line
	7650 1700 7650 1800
Wire Wire Line
	7650 1600 7650 1650
Wire Wire Line
	7650 1650 7700 1650
Connection ~ 7650 1650
Wire Wire Line
	7650 1650 7650 1700
Text Label 7700 1650 0    50   ~ 0
POWER
Text Label 7350 3050 0    50   ~ 0
GPIO0_S
Text Label 7350 2950 0    50   ~ 0
GPIO15_S
Text Label 7350 3150 0    50   ~ 0
GPIO14_S
Text Label 7350 3250 0    50   ~ 0
GPIO16_S
$Comp
L Connector:Conn_01x05_Male SIGNAL1
U 1 1 5D620461
P 7150 3150
F 0 "SIGNAL1" V 7100 3150 50  0000 C CNN
F 1 "Conn_01x05_Male" V 6950 3150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7150 3150 50  0001 C CNN
F 3 "~" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
Text Label 7700 3350 0    50   ~ 0
ANALOG_S
$Comp
L Device:R R5
U 1 1 5D638F6D
P 7500 3500
F 0 "R5" V 7293 3500 50  0000 C CNN
F 1 "1M" V 7384 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7430 3500 50  0001 C CNN
F 3 "~" H 7500 3500 50  0001 C CNN
	1    7500 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D63CC22
P 7650 3500
F 0 "#PWR014" H 7650 3250 50  0001 C CNN
F 1 "GND" V 7655 3372 50  0000 R CNN
F 2 "" H 7650 3500 50  0001 C CNN
F 3 "" H 7650 3500 50  0001 C CNN
	1    7650 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 3350 7350 3500
Wire Wire Line
	7350 3350 7700 3350
$Comp
L Device:CP C1
U 1 1 5D64669C
P 3700 3300
F 0 "C1" H 3818 3346 50  0000 L CNN
F 1 "220uF 16V" V 3818 3255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3738 3150 50  0001 C CNN
F 3 "~" H 3700 3300 50  0001 C CNN
	1    3700 3300
	1    0    0    -1  
$EndComp
NoConn ~ 1300 1700
NoConn ~ 1300 2000
NoConn ~ 1300 2100
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D64DE9E
P 1500 1200
F 0 "#FLG01" H 1500 1275 50  0001 C CNN
F 1 "PWR_FLAG" V 1500 1327 50  0000 L CNN
F 2 "" H 1500 1200 50  0001 C CNN
F 3 "~" H 1500 1200 50  0001 C CNN
	1    1500 1200
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini Wemos_D1_Mini1
U 1 1 5D59554F
P 1700 2100
F 0 "Wemos_D1_Mini1" H 1700 1211 50  0000 L CNN
F 1 "WeMos_D1_mini" H 1700 1120 50  0000 L CNN
F 2 "Module:WEMOS_D1_mini_light" H 1700 950 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H -150 950 50  0001 C CNN
	1    1700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1200 1500 1200
Connection ~ 1600 1200
Wire Wire Line
	1600 1200 1600 1300
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D6589E7
P 1800 2900
F 0 "#FLG02" H 1800 2975 50  0001 C CNN
F 1 "PWR_FLAG" V 1800 3028 50  0000 L CNN
F 2 "" H 1800 2900 50  0001 C CNN
F 3 "~" H 1800 2900 50  0001 C CNN
	1    1800 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2900 1700 2900
Wire Wire Line
	1800 2900 1700 2900
Connection ~ 1700 2900
Wire Wire Line
	4550 3600 5300 3600
Wire Wire Line
	4100 3300 4250 3300
Wire Wire Line
	4550 2850 5300 2850
Wire Wire Line
	4550 2850 3700 2850
Wire Wire Line
	3700 2850 3700 3150
Wire Wire Line
	3700 3450 3700 3600
Wire Wire Line
	3700 3600 4550 3600
Wire Wire Line
	1800 1100 1800 1300
$Comp
L Connector:Conn_01x03_Female NEOPIXEL1
U 1 1 5D5C7338
P 5500 2950
F 0 "NEOPIXEL1" H 5528 2976 50  0000 L CNN
F 1 "Conn_01x03_Female" H 5528 2885 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 5500 2950 50  0001 C CNN
F 3 "~" H 5500 2950 50  0001 C CNN
	1    5500 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female TEMP_SENSOR1
U 1 1 5D5C5E39
P 5500 2300
F 0 "TEMP_SENSOR1" H 5528 2326 50  0000 L CNN
F 1 "Conn_01x03_Female" H 5528 2235 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 5500 2300 50  0001 C CNN
F 3 "~" H 5500 2300 50  0001 C CNN
	1    5500 2300
	1    0    0    -1  
$EndComp
Text Label 2100 1600 0    50   ~ 0
ANALOG_S
Wire Wire Line
	5050 2300 5100 2300
Wire Wire Line
	5300 2400 5000 2400
Wire Wire Line
	5300 2200 5250 2200
Wire Wire Line
	5250 2200 5250 2000
$Comp
L Device:R R4
U 1 1 5E45876E
P 5100 2150
F 0 "R4" H 5170 2196 50  0000 L CNN
F 1 "4.7k" H 5170 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5030 2150 50  0001 C CNN
F 3 "~" H 5100 2150 50  0001 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
Connection ~ 5100 2000
Wire Wire Line
	5100 2000 5000 2000
Connection ~ 5100 2300
Wire Wire Line
	5100 2300 5300 2300
Connection ~ 7350 3350
$Comp
L Connector:Conn_01x05_Male POWER1
U 1 1 5D61DB8B
P 7300 1600
F 0 "POWER1" H 7408 1881 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7408 1790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7300 1600 50  0001 C CNN
F 3 "~" H 7300 1600 50  0001 C CNN
	1    7300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1400 7650 1400
Wire Wire Line
	7650 1400 7650 1500
Connection ~ 7650 1500
Wire Wire Line
	8750 1500 8750 1400
Wire Wire Line
	8750 1400 8600 1400
Connection ~ 8750 1500
NoConn ~ 2100 2100
$EndSCHEMATC
