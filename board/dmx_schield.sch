EESchema Schematic File Version 4
EELAYER 26 0
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
L arduino:Arduino_Micro_Socket XA1
U 1 1 5D0B6A09
P 3550 2450
F 0 "XA1" H 3550 3687 60  0000 C CNN
F 1 "Arduino_Micro_Socket" H 3550 3581 60  0000 C CNN
F 2 "Arduino:Arduino_Micro_Socket" H 5350 6200 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-micro" H 5350 6200 60  0001 C CNN
	1    3550 2450
	-1   0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX481E U2
U 1 1 5D0B6B8B
P 7450 1650
F 0 "U2" H 7450 2328 50  0000 C CNN
F 1 "MAX481E" H 7450 2237 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7450 950 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 7450 1700 50  0001 C CNN
	1    7450 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D0B6CED
P 8150 1700
F 0 "R12" H 8220 1746 50  0000 L CNN
F 1 "120" H 8220 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8080 1700 50  0001 C CNN
F 3 "~" H 8150 1700 50  0001 C CNN
	1    8150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1850 8150 1850
Connection ~ 8150 1850
Wire Wire Line
	7850 1550 8150 1550
Connection ~ 8150 1550
Wire Wire Line
	8150 1550 8650 1550
Wire Wire Line
	8650 1750 9000 1750
Wire Wire Line
	8650 1550 8650 1750
Wire Wire Line
	8650 2300 8650 1950
Wire Wire Line
	8650 1950 9000 1950
Wire Wire Line
	7050 1650 7000 1700
Wire Wire Line
	7050 1550 4850 1550
Wire Wire Line
	4850 1650 6800 1650
Wire Wire Line
	6800 1650 6800 1850
Wire Wire Line
	6800 1850 7050 1850
Wire Wire Line
	7000 1700 6900 1700
Connection ~ 7000 1700
Wire Wire Line
	7000 1700 7050 1750
Wire Wire Line
	6900 1700 6900 1050
$Comp
L power:VCC #PWR07
U 1 1 5D0B8C56
P 7450 900
F 0 "#PWR07" H 7450 750 50  0001 C CNN
F 1 "VCC" H 7467 1073 50  0000 C CNN
F 2 "" H 7450 900 50  0001 C CNN
F 3 "" H 7450 900 50  0001 C CNN
	1    7450 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D0B8F88
P 7450 2400
F 0 "#PWR08" H 7450 2150 50  0001 C CNN
F 1 "GND" H 7455 2227 50  0000 C CNN
F 2 "" H 7450 2400 50  0001 C CNN
F 3 "" H 7450 2400 50  0001 C CNN
	1    7450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2250 7450 2300
Wire Wire Line
	7450 900  7450 1150
$Comp
L my_lib:EADOGM162 LCD1
U 1 1 5D0BBC50
P 2300 5600
F 0 "LCD1" H 2375 6525 50  0000 C CNN
F 1 "EADOGM162" H 2375 6434 50  0000 C CNN
F 2 "my_LCD:EA DOGM 162" H 1300 6050 50  0001 C CNN
F 3 "" H 1300 6050 50  0001 C CNN
	1    2300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6000 1550 6000
Text Label 1550 6000 0    50   ~ 0
RESET
Wire Wire Line
	2750 4900 2800 4900
Wire Wire Line
	2800 4900 2800 5000
Wire Wire Line
	2800 5400 2750 5400
Wire Wire Line
	2800 5400 2800 5900
Wire Wire Line
	2800 5900 2750 5900
Connection ~ 2800 5400
Wire Wire Line
	2750 5000 2800 5000
Connection ~ 2800 5000
Wire Wire Line
	2800 5000 2800 5100
Wire Wire Line
	2750 5100 2800 5100
Connection ~ 2800 5100
Wire Wire Line
	2800 5100 2800 5200
Wire Wire Line
	2750 5200 2800 5200
Connection ~ 2800 5200
Wire Wire Line
	2800 5200 2800 5300
Wire Wire Line
	2750 5300 2800 5300
Connection ~ 2800 5300
Wire Wire Line
	2800 5300 2800 5400
Wire Wire Line
	2000 5500 1650 5500
Wire Wire Line
	1650 5500 1650 4900
Wire Wire Line
	1650 4900 2000 4900
Wire Wire Line
	1650 4900 1650 4600
Wire Wire Line
	1650 4600 2350 4600
Wire Wire Line
	2800 4600 2800 4900
Connection ~ 1650 4900
Connection ~ 2800 4900
Wire Wire Line
	1650 5600 1650 5500
Connection ~ 1650 5500
Wire Wire Line
	2000 5000 1900 5000
Wire Wire Line
	1900 5000 1900 5800
Wire Wire Line
	1900 5800 2000 5800
Wire Wire Line
	1900 5800 1900 6500
Connection ~ 1900 5800
Wire Wire Line
	2750 5800 2850 5800
Wire Wire Line
	2850 5800 2850 6500
Wire Wire Line
	2850 6500 2350 6500
Wire Wire Line
	2350 6500 2350 6600
Connection ~ 2350 6500
Wire Wire Line
	2350 6500 1900 6500
Wire Wire Line
	2350 4600 2350 4500
Connection ~ 2350 4600
Wire Wire Line
	2350 4600 2800 4600
$Comp
L power:VCC #PWR01
U 1 1 5D0D5560
P 2350 4500
F 0 "#PWR01" H 2350 4350 50  0001 C CNN
F 1 "VCC" H 2367 4673 50  0000 C CNN
F 2 "" H 2350 4500 50  0001 C CNN
F 3 "" H 2350 4500 50  0001 C CNN
	1    2350 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D0D557F
P 2350 6600
F 0 "#PWR02" H 2350 6350 50  0001 C CNN
F 1 "GND" H 2355 6427 50  0000 C CNN
F 2 "" H 2350 6600 50  0001 C CNN
F 3 "" H 2350 6600 50  0001 C CNN
	1    2350 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5500 3300 5500
Wire Wire Line
	2750 5600 3300 5600
Wire Wire Line
	2750 5700 3300 5700
Wire Wire Line
	2750 6000 3300 6000
Text Label 3200 6000 0    50   ~ 0
CS
Text Label 3200 5700 0    50   ~ 0
RS
Text Label 3200 5600 0    50   ~ 0
SI
Text Label 3150 5500 0    50   ~ 0
CLK
$Comp
L Device:R R2
U 1 1 5D0CC0BD
P 2300 7150
F 0 "R2" V 2093 7150 50  0000 C CNN
F 1 "1,0k" V 2184 7150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2230 7150 50  0001 C CNN
F 3 "~" H 2300 7150 50  0001 C CNN
	1    2300 7150
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D0CC1CE
P 1650 6450
F 0 "R1" H 1720 6496 50  0000 L CNN
F 1 "56" H 1720 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1580 6450 50  0001 C CNN
F 3 "~" H 1650 6450 50  0001 C CNN
	1    1650 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D0CC29F
P 3100 6450
F 0 "R3" H 3170 6496 50  0000 L CNN
F 1 "56" H 3170 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 6450 50  0001 C CNN
F 3 "~" H 3100 6450 50  0001 C CNN
	1    3100 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6600 1650 6850
Wire Wire Line
	1650 6850 3100 6850
Wire Wire Line
	3100 6850 3100 6600
Connection ~ 1650 6850
Wire Wire Line
	1650 6850 1650 6950
Wire Wire Line
	3100 6300 2750 6300
Wire Wire Line
	1650 6300 2000 6300
NoConn ~ 2000 5200
NoConn ~ 2000 5300
Wire Wire Line
	1650 5600 2000 5600
Wire Wire Line
	1950 7150 2150 7150
Wire Wire Line
	2450 7150 3350 7150
Text Label 3200 7150 0    50   ~ 0
LED
$Comp
L Device:R_POT RV2
U 1 1 5D0E4931
P 5950 2650
F 0 "RV2" H 5881 2604 50  0000 R CNN
F 1 "10k" H 5881 2695 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5950 2650 50  0001 C CNN
F 3 "~" H 5950 2650 50  0001 C CNN
	1    5950 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 2650 5800 2650
$Comp
L power:GND #PWR05
U 1 1 5D0E644C
P 5950 4000
F 0 "#PWR05" H 5950 3750 50  0001 C CNN
F 1 "GND" H 5955 3827 50  0000 C CNN
F 2 "" H 5950 4000 50  0001 C CNN
F 3 "" H 5950 4000 50  0001 C CNN
	1    5950 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5D0E64AB
P 5950 2250
F 0 "#PWR04" H 5950 2100 50  0001 C CNN
F 1 "VCC" H 5967 2423 50  0000 C CNN
F 2 "" H 5950 2250 50  0001 C CNN
F 3 "" H 5950 2250 50  0001 C CNN
	1    5950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2500 5950 2300
$Comp
L Sensor_Temperature:LM75B U3
U 1 1 5D0EA04F
P 7450 3600
F 0 "U3" H 7450 4278 50  0000 C CNN
F 1 "LM75B" H 7450 4187 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7450 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm75b.pdf" H 7450 3600 50  0001 C CNN
	1    7450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1850 6350 1850
Wire Wire Line
	6350 1850 6350 3500
Wire Wire Line
	6350 3500 6850 3500
Wire Wire Line
	4850 1950 6250 1950
Wire Wire Line
	6250 1950 6250 3600
Wire Wire Line
	6250 3600 6550 3600
$Comp
L power:GND #PWR010
U 1 1 5D0EDBAB
P 7450 4250
F 0 "#PWR010" H 7450 4000 50  0001 C CNN
F 1 "GND" H 7455 4077 50  0000 C CNN
F 2 "" H 7450 4250 50  0001 C CNN
F 3 "" H 7450 4250 50  0001 C CNN
	1    7450 4250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5D0EDBDD
P 7450 2800
F 0 "#PWR09" H 7450 2650 50  0001 C CNN
F 1 "VCC" H 7467 2973 50  0000 C CNN
F 2 "" H 7450 2800 50  0001 C CNN
F 3 "" H 7450 2800 50  0001 C CNN
	1    7450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2800 7450 2850
Wire Wire Line
	7450 4250 7450 4150
Wire Wire Line
	7850 3500 7850 3600
Wire Wire Line
	7850 3700 7850 3600
Connection ~ 7850 3600
Wire Wire Line
	7850 3700 7850 4150
Wire Wire Line
	7850 4150 7450 4150
Connection ~ 7850 3700
Connection ~ 7450 4150
Wire Wire Line
	7450 4150 7450 4100
Wire Wire Line
	2250 1550 1850 1550
Wire Wire Line
	2250 1650 1850 1650
Wire Wire Line
	2250 1750 1850 1750
Wire Wire Line
	2250 1850 1850 1850
Wire Wire Line
	2250 1950 1850 1950
Wire Wire Line
	2250 2050 1850 2050
Text Label 1850 1550 0    50   ~ 0
REDE
Text Label 1850 1650 0    50   ~ 0
CS
Text Label 1850 1750 0    50   ~ 0
SI
Wire Wire Line
	1850 1550 1850 1050
Wire Wire Line
	1850 1050 6900 1050
Text Label 1850 1850 0    50   ~ 0
INTERUPT
Text Label 1850 1950 0    50   ~ 0
CLK
Text Label 1850 2050 0    50   ~ 0
RS
Wire Wire Line
	2250 2150 1850 2150
Wire Wire Line
	2250 2250 1850 2250
Text Label 1850 2150 0    50   ~ 0
RESET
Text Label 1850 2250 0    50   ~ 0
LED
$Comp
L Device:R_POT RV1
U 1 1 5D115EAC
P 5450 2450
F 0 "RV1" H 5381 2404 50  0000 R CNN
F 1 "10k" H 5381 2495 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5450 2450 50  0001 C CNN
F 3 "~" H 5450 2450 50  0001 C CNN
	1    5450 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2600 5450 2850
Wire Wire Line
	5450 2850 5950 2850
Connection ~ 5950 2850
Wire Wire Line
	5950 2850 5950 2800
Wire Wire Line
	5450 2300 5950 2300
Connection ~ 5950 2300
Wire Wire Line
	5950 2300 5950 2250
Wire Wire Line
	4850 2550 5250 2550
Wire Wire Line
	5250 2550 5250 2450
Wire Wire Line
	5250 2450 5300 2450
Text Label 4850 2550 0    50   ~ 0
POTI_WW
Text Label 4850 2650 0    50   ~ 0
POTI_KW
$Comp
L Device:R R10
U 1 1 5D0CF74A
P 6550 3200
F 0 "R10" H 6620 3246 50  0000 L CNN
F 1 "4,7k" H 6620 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 3200 50  0001 C CNN
F 3 "~" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D0D5794
P 6850 3200
F 0 "R11" H 6920 3246 50  0000 L CNN
F 1 "4,7k" H 6920 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6780 3200 50  0001 C CNN
F 3 "~" H 6850 3200 50  0001 C CNN
	1    6850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2850 6850 2850
Wire Wire Line
	6550 2850 6550 3050
Connection ~ 7450 2850
Wire Wire Line
	7450 2850 7450 3100
Wire Wire Line
	6850 3050 6850 2850
Connection ~ 6850 2850
Wire Wire Line
	6850 2850 6550 2850
Wire Wire Line
	6850 3350 6850 3500
Connection ~ 6850 3500
Wire Wire Line
	6850 3500 7050 3500
Wire Wire Line
	6550 3350 6550 3600
Connection ~ 6550 3600
Wire Wire Line
	6550 3600 7050 3600
NoConn ~ 7050 3700
$Comp
L Switch:SW_Push SW1
U 1 1 5D0EB8F9
P 4550 4900
F 0 "SW1" H 4550 5185 50  0000 C CNN
F 1 "SW_Push" H 4550 5094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 4550 5100 50  0001 C CNN
F 3 "" H 4550 5100 50  0001 C CNN
	1    4550 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D0EBA5B
P 5950 5650
F 0 "R7" H 6020 5696 50  0000 L CNN
F 1 "10k" H 6020 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 5650 50  0001 C CNN
F 3 "~" H 5950 5650 50  0001 C CNN
	1    5950 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D0EBAF7
P 6100 5950
F 0 "R8" H 6170 5996 50  0000 L CNN
F 1 "10k" H 6170 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 5950 50  0001 C CNN
F 3 "~" H 6100 5950 50  0001 C CNN
	1    6100 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5D0EBB9E
P 5150 6100
F 0 "R6" H 5220 6146 50  0000 L CNN
F 1 "1,0k" H 5220 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 6100 50  0001 C CNN
F 3 "~" H 5150 6100 50  0001 C CNN
	1    5150 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D0EBC5E
P 5150 5500
F 0 "R5" H 5220 5546 50  0000 L CNN
F 1 "1,0k" H 5220 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 5500 50  0001 C CNN
F 3 "~" H 5150 5500 50  0001 C CNN
	1    5150 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5D0EF50C
P 5500 5650
F 0 "C1" H 5615 5696 50  0000 L CNN
F 1 "1u" H 5615 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5538 5500 50  0001 C CNN
F 3 "~" H 5500 5650 50  0001 C CNN
	1    5500 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D0EF5AF
P 5650 5950
F 0 "C2" H 5765 5996 50  0000 L CNN
F 1 "1u" H 5765 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5688 5800 50  0001 C CNN
F 3 "~" H 5650 5950 50  0001 C CNN
	1    5650 5950
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5D0F67AB
P 6850 5650
F 0 "D2" V 6804 5571 50  0000 R CNN
F 1 "BAS85" V 6895 5571 50  0000 R CNN
F 2 "Diode_SMD:D_MicroMELF" H 6850 5650 50  0001 C CNN
F 3 "~" H 6850 5650 50  0001 C CNN
	1    6850 5650
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5D0F68AE
P 7000 5950
F 0 "D3" V 7046 6029 50  0000 L CNN
F 1 "BAS85" V 6955 6029 50  0000 L CNN
F 2 "Diode_SMD:D_MicroMELF" H 7000 5950 50  0001 C CNN
F 3 "~" H 7000 5950 50  0001 C CNN
	1    7000 5950
	0    1    -1   0   
$EndComp
Wire Wire Line
	4900 5500 5000 5500
Wire Wire Line
	4900 6100 5000 6100
Wire Wire Line
	5500 5800 5400 5800
Wire Wire Line
	5500 5800 5650 5800
Connection ~ 5500 5800
Wire Wire Line
	5300 5500 5500 5500
Wire Wire Line
	5500 5500 5950 5500
Connection ~ 5500 5500
Wire Wire Line
	5950 5500 6850 5500
Connection ~ 5950 5500
Wire Wire Line
	6850 5500 7750 5500
Connection ~ 6850 5500
Wire Wire Line
	6850 5800 7000 5800
Wire Wire Line
	7000 5800 7750 5800
Connection ~ 7000 5800
Wire Wire Line
	5300 6100 5650 6100
Connection ~ 5650 6100
Connection ~ 7000 6100
Wire Wire Line
	7000 6100 7750 6100
$Comp
L power:GND #PWR03
U 1 1 5D138096
P 5400 5850
F 0 "#PWR03" H 5400 5600 50  0001 C CNN
F 1 "GND" H 5405 5677 50  0000 C CNN
F 2 "" H 5400 5850 50  0001 C CNN
F 3 "" H 5400 5850 50  0001 C CNN
	1    5400 5850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5D1380F2
P 6300 5750
F 0 "#PWR06" H 6300 5600 50  0001 C CNN
F 1 "VCC" H 6317 5923 50  0000 C CNN
F 2 "" H 6300 5750 50  0001 C CNN
F 3 "" H 6300 5750 50  0001 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5750 6300 5800
Wire Wire Line
	5400 5850 5400 5800
Text Label 7400 5800 0    50   ~ 0
INTERUPT
Text Label 7450 5500 0    50   ~ 0
SW_WW
Text Label 7500 6100 0    50   ~ 0
SW_KW
Wire Wire Line
	4850 2150 5250 2150
Wire Wire Line
	4850 2250 5250 2250
Text Label 5000 2150 0    50   ~ 0
SW_COL
Text Label 5000 2250 0    50   ~ 0
SW_KW
$Comp
L Device:C C3
U 1 1 5D0FD2D6
P 5750 5050
F 0 "C3" H 5865 5096 50  0000 L CNN
F 1 "1u" H 5865 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 4900 50  0001 C CNN
F 3 "~" H 5750 5050 50  0001 C CNN
	1    5750 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5D0FD358
P 6200 5050
F 0 "R9" H 6270 5096 50  0000 L CNN
F 1 "10k" H 6270 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6130 5050 50  0001 C CNN
F 3 "~" H 6200 5050 50  0001 C CNN
	1    6200 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D0FD4BB
P 5150 4900
F 0 "R4" H 5220 4946 50  0000 L CNN
F 1 "1,0k" H 5220 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 4900 50  0001 C CNN
F 3 "~" H 5150 4900 50  0001 C CNN
	1    5150 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4900 5000 4900
Connection ~ 5750 4900
Wire Wire Line
	5300 4900 5750 4900
Wire Wire Line
	5750 4900 6200 4900
Wire Wire Line
	5750 5200 5750 5250
Wire Wire Line
	5750 5800 5650 5800
Connection ~ 5650 5800
Connection ~ 6200 4900
Wire Wire Line
	6200 5200 6200 5800
Wire Wire Line
	6200 4900 6700 4900
Connection ~ 6200 5800
Wire Wire Line
	6200 5800 6300 5800
$Comp
L Device:D_Schottky D1
U 1 1 5D1213C7
P 6700 5050
F 0 "D1" V 6654 4971 50  0000 R CNN
F 1 "BAS85" V 6745 4971 50  0000 R CNN
F 2 "Diode_SMD:D_MicroMELF" H 6700 5050 50  0001 C CNN
F 3 "~" H 6700 5050 50  0001 C CNN
	1    6700 5050
	0    -1   1    0   
$EndComp
Connection ~ 6700 4900
Wire Wire Line
	6700 4900 7750 4900
Wire Wire Line
	6700 5200 6700 5800
Wire Wire Line
	6700 5800 6850 5800
Connection ~ 6850 5800
Wire Wire Line
	5750 5250 4300 5250
Wire Wire Line
	4300 5250 4300 4900
Wire Wire Line
	4300 4900 4350 4900
Connection ~ 5750 5250
Wire Wire Line
	5750 5250 5750 5800
Wire Wire Line
	4600 5750 4600 5800
Wire Wire Line
	4600 5800 5400 5800
Connection ~ 4600 5800
Wire Wire Line
	4600 5800 4600 5850
Connection ~ 5400 5800
Wire Wire Line
	4900 5500 4900 5650
Wire Wire Line
	4900 5650 4600 5650
Wire Wire Line
	4600 5950 4900 5950
Wire Wire Line
	4900 5950 4900 6100
Text Label 7450 4900 0    50   ~ 0
SW_COL
Wire Wire Line
	4850 2350 5250 2350
Text Label 4950 2350 0    50   ~ 0
SW_WW
NoConn ~ 4850 2450
NoConn ~ 4850 2750
NoConn ~ 2250 2450
NoConn ~ 2250 2650
NoConn ~ 2250 2750
NoConn ~ 2250 2850
NoConn ~ 2250 2950
NoConn ~ 2250 3150
NoConn ~ 2250 3250
Wire Wire Line
	4850 2950 4850 3000
Wire Wire Line
	4850 3000 5950 3000
Connection ~ 4850 3000
Wire Wire Line
	4850 3000 4850 3050
Connection ~ 5950 3000
Wire Wire Line
	5950 3000 5950 2850
Wire Wire Line
	7450 2300 8650 2300
Connection ~ 7450 2300
Wire Wire Line
	7450 2300 7450 2400
$Comp
L Regulator_Switching:R-78E5.0-0.5 U1
U 1 1 5D1D4893
P 5350 3600
F 0 "U1" H 5350 3842 50  0000 C CNN
F 1 "R-78E5.0-0.5" H 5350 3751 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 5400 3350 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-0.5.pdf" H 5350 3600 50  0001 C CNN
	1    5350 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5350 3900 5350 3950
Wire Wire Line
	5450 4050 5450 4100
NoConn ~ 4850 3150
NoConn ~ 4850 3250
Wire Wire Line
	5950 3000 5950 3950
Wire Wire Line
	5350 3950 5950 3950
Connection ~ 5350 3950
Wire Wire Line
	5350 3950 5350 4100
Connection ~ 5950 3950
Wire Wire Line
	5950 3950 5950 4000
Wire Wire Line
	2000 6200 1650 6200
Wire Wire Line
	1650 6200 1650 5600
Connection ~ 1650 5600
Wire Wire Line
	2750 6200 2800 6200
Wire Wire Line
	2800 6200 2800 5900
Connection ~ 2800 5900
Wire Wire Line
	1650 7350 1650 7450
$Comp
L power:GND #PWR0101
U 1 1 5D23C7B1
P 1650 7450
F 0 "#PWR0101" H 1650 7200 50  0001 C CNN
F 1 "GND" H 1655 7277 50  0000 C CNN
F 2 "" H 1650 7450 50  0001 C CNN
F 3 "" H 1650 7450 50  0001 C CNN
	1    1650 7450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D23CD47
P 5700 3550
F 0 "#FLG0101" H 5700 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 3724 50  0000 C CNN
F 2 "" H 5700 3550 50  0001 C CNN
F 3 "~" H 5700 3550 50  0001 C CNN
	1    5700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3600 5700 3600
Wire Wire Line
	5700 3600 5700 4050
Wire Wire Line
	5450 4050 5700 4050
Wire Wire Line
	5700 3550 5700 3600
Connection ~ 5700 3600
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D2547B4
P 5250 4100
F 0 "#FLG0102" H 5250 4175 50  0001 C CNN
F 1 "PWR_FLAG" V 5250 4228 50  0000 L CNN
F 2 "" H 5250 4100 50  0001 C CNN
F 3 "~" H 5250 4100 50  0001 C CNN
	1    5250 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 4100 5350 4100
Connection ~ 5350 4100
Wire Wire Line
	5350 4100 5350 4450
$Comp
L power:VCC #PWR0102
U 1 1 5D25CDA9
P 4900 3600
F 0 "#PWR0102" H 4900 3450 50  0001 C CNN
F 1 "VCC" H 4917 3773 50  0000 C CNN
F 2 "" H 4900 3600 50  0001 C CNN
F 3 "" H 4900 3600 50  0001 C CNN
	1    4900 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 3350 4950 3600
Wire Wire Line
	4950 3600 5050 3600
Wire Wire Line
	4850 3350 4950 3350
Wire Wire Line
	4900 3600 4950 3600
Connection ~ 4950 3600
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5D2956B7
P 5450 4650
F 0 "J2" V 5323 4730 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 5414 4730 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type086_RT03402HBLC_1x02_P3.81mm_Horizontal" H 5450 4650 50  0001 C CNN
F 3 "~" H 5450 4650 50  0001 C CNN
	1    5450 4650
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J1
U 1 1 5D295810
P 4400 5850
F 0 "J1" H 4320 5425 50  0000 C CNN
F 1 "Screw_Terminal_01x04" H 4320 5516 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type086_RT03404HBLC_1x04_P3.81mm_Horizontal" H 4400 5850 50  0001 C CNN
F 3 "~" H 4400 5850 50  0001 C CNN
	1    4400 5850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5D2AF68C
P 9200 1850
F 0 "J3" H 9280 1892 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9280 1801 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type086_RT03403HBLC_1x03_P3.81mm_Horizontal" H 9200 1850 50  0001 C CNN
F 3 "~" H 9200 1850 50  0001 C CNN
	1    9200 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 5D100D8B
P 5450 4250
F 0 "D4" V 5404 4329 50  0000 L CNN
F 1 "1N4001" V 5495 4329 50  0000 L CNN
F 2 "Diode_SMD:D_MELF" H 5450 4250 50  0001 C CNN
F 3 "~" H 5450 4250 50  0001 C CNN
	1    5450 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 4400 5450 4450
$Comp
L Device:LED D5
U 1 1 5D193515
P 1550 2350
F 0 "D5" H 1541 2566 50  0000 C CNN
F 1 "LED" H 1541 2475 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 1550 2350 50  0001 C CNN
F 3 "~" H 1550 2350 50  0001 C CNN
	1    1550 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5D19399D
P 1600 3750
F 0 "D6" H 1591 3966 50  0000 C CNN
F 1 "LED" H 1591 3875 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 1600 3750 50  0001 C CNN
F 3 "~" H 1600 3750 50  0001 C CNN
	1    1600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2350 1700 2350
Wire Wire Line
	4950 3600 4950 3750
Wire Wire Line
	4950 3750 1750 3750
Wire Wire Line
	1400 2350 1300 2350
Wire Wire Line
	900  2350 900  3750
Wire Wire Line
	900  3750 1050 3750
Wire Wire Line
	5350 3950 900  3950
Wire Wire Line
	900  3750 900  3950
Connection ~ 900  3750
$Comp
L Device:R R14
U 1 1 5D1B7402
P 1200 3750
F 0 "R14" H 1270 3796 50  0000 L CNN
F 1 "100" H 1270 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1130 3750 50  0001 C CNN
F 3 "~" H 1200 3750 50  0001 C CNN
	1    1200 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 3750 1450 3750
$Comp
L Device:R R13
U 1 1 5D1B74FA
P 1150 2350
F 0 "R13" H 1220 2396 50  0000 L CNN
F 1 "100" H 1220 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1080 2350 50  0001 C CNN
F 3 "~" H 1150 2350 50  0001 C CNN
	1    1150 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 2350 900  2350
$Comp
L Mechanical:MountingHole H1
U 1 1 5D1E9D6A
P 4650 6800
F 0 "H1" H 4750 6846 50  0000 L CNN
F 1 "MountingHole" H 4750 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 4650 6800 50  0001 C CNN
F 3 "~" H 4650 6800 50  0001 C CNN
	1    4650 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D1E9DFE
P 4900 6800
F 0 "H2" H 5000 6846 50  0000 L CNN
F 1 "MountingHole" H 5000 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 4900 6800 50  0001 C CNN
F 3 "~" H 4900 6800 50  0001 C CNN
	1    4900 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D1E9E5E
P 5200 6800
F 0 "H3" H 5300 6846 50  0000 L CNN
F 1 "MountingHole" H 5300 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 5200 6800 50  0001 C CNN
F 3 "~" H 5200 6800 50  0001 C CNN
	1    5200 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D1E9EC2
P 5450 6800
F 0 "H4" H 5550 6846 50  0000 L CNN
F 1 "MountingHole" H 5550 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 5450 6800 50  0001 C CNN
F 3 "~" H 5450 6800 50  0001 C CNN
	1    5450 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5800 6100 5800
Wire Wire Line
	5650 6100 6100 6100
Connection ~ 6100 6100
Wire Wire Line
	6100 6100 7000 6100
Connection ~ 6100 5800
Wire Wire Line
	6100 5800 6200 5800
$Comp
L 74xGxx:74LVC2G34 U4
U 1 1 5D207B10
P 9200 1000
F 0 "U4" H 9175 1267 50  0000 C CNN
F 1 "74LVC2G34" H 9175 1176 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9200 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9200 1000 50  0001 C CNN
	1    9200 1000
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74LVC2G34 U4
U 2 1 5D207E4B
P 9200 1400
F 0 "U4" H 9175 1667 50  0000 C CNN
F 1 "74LVC2G34" H 9175 1576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9200 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9200 1400 50  0001 C CNN
	2    9200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1550 8650 1000
Connection ~ 8650 1550
$Comp
L Device:R R16
U 1 1 5D2256E8
P 10300 1000
F 0 "R16" H 10370 1046 50  0000 L CNN
F 1 "100" H 10370 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10230 1000 50  0001 C CNN
F 3 "~" H 10300 1000 50  0001 C CNN
	1    10300 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5D22583C
P 10300 1400
F 0 "R17" H 10370 1446 50  0000 L CNN
F 1 "100" H 10370 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10230 1400 50  0001 C CNN
F 3 "~" H 10300 1400 50  0001 C CNN
	1    10300 1400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5D225937
P 9750 1000
F 0 "D7" H 9741 1216 50  0000 C CNN
F 1 "LED" H 9741 1125 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9750 1000 50  0001 C CNN
F 3 "~" H 9750 1000 50  0001 C CNN
	1    9750 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 5D225ACF
P 9750 1400
F 0 "D8" H 9741 1616 50  0000 C CNN
F 1 "LED" H 9741 1525 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9750 1400 50  0001 C CNN
F 3 "~" H 9750 1400 50  0001 C CNN
	1    9750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1000 9500 1000
Wire Wire Line
	9450 1400 9500 1400
$Comp
L Device:R R15
U 1 1 5D282704
P 10300 750
F 0 "R15" H 10370 796 50  0000 L CNN
F 1 "100" H 10370 705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10230 750 50  0001 C CNN
F 3 "~" H 10300 750 50  0001 C CNN
	1    10300 750 
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5D282778
P 10300 1700
F 0 "R18" H 10370 1746 50  0000 L CNN
F 1 "100" H 10370 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10230 1700 50  0001 C CNN
F 3 "~" H 10300 1700 50  0001 C CNN
	1    10300 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	10450 750  10600 750 
Wire Wire Line
	10600 750  10600 1700
Wire Wire Line
	10600 1700 10450 1700
Wire Wire Line
	10450 1000 10550 1000
Wire Wire Line
	10550 1000 10550 1400
Wire Wire Line
	10550 1400 10450 1400
Wire Wire Line
	10550 1000 10550 700 
Connection ~ 10550 1000
Wire Wire Line
	10600 1700 10600 1800
Connection ~ 10600 1700
$Comp
L power:GND #PWR0103
U 1 1 5D2C4779
P 10600 1800
F 0 "#PWR0103" H 10600 1550 50  0001 C CNN
F 1 "GND" H 10605 1627 50  0000 C CNN
F 2 "" H 10600 1800 50  0001 C CNN
F 3 "" H 10600 1800 50  0001 C CNN
	1    10600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5D2C47E2
P 10550 700
F 0 "#PWR0104" H 10550 550 50  0001 C CNN
F 1 "VCC" H 10567 873 50  0000 C CNN
F 2 "" H 10550 700 50  0001 C CNN
F 3 "" H 10550 700 50  0001 C CNN
	1    10550 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1850 8550 1850
Wire Wire Line
	8650 1000 8900 1000
Wire Wire Line
	8900 1400 8550 1400
Wire Wire Line
	8550 1400 8550 1850
Connection ~ 8550 1850
Wire Wire Line
	8550 1850 9000 1850
$Comp
L Device:LED D10
U 1 1 5D2FC3BF
P 9750 1700
F 0 "D10" H 9742 1916 50  0000 C CNN
F 1 "LED" H 9742 1825 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9750 1700 50  0001 C CNN
F 3 "~" H 9750 1700 50  0001 C CNN
	1    9750 1700
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 5D2FC437
P 9750 750
F 0 "D9" H 9742 966 50  0000 C CNN
F 1 "LED" H 9742 875 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9750 750 50  0001 C CNN
F 3 "~" H 9750 750 50  0001 C CNN
	1    9750 750 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 1000 9500 750 
Wire Wire Line
	9500 750  9600 750 
Connection ~ 9500 1000
Wire Wire Line
	9500 1000 9600 1000
Wire Wire Line
	9900 750  10150 750 
Wire Wire Line
	9500 1400 9500 1700
Wire Wire Line
	9500 1700 9600 1700
Connection ~ 9500 1400
Wire Wire Line
	9500 1400 9600 1400
Wire Wire Line
	9900 1700 10150 1700
Wire Wire Line
	9900 1400 10150 1400
Wire Wire Line
	9900 1000 10150 1000
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 5D2AB6DD
P 1750 7150
F 0 "Q1" H 1940 7196 50  0000 L CNN
F 1 "BSR14" H 1940 7105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1950 7250 50  0001 C CNN
F 3 "~" H 1750 7150 50  0001 C CNN
	1    1750 7150
	-1   0    0    -1  
$EndComp
Text Notes 8150 7650 0    50   ~ 0
16.04.2019
Text Notes 10600 7650 0    50   ~ 0
V1.1
$EndSCHEMATC
