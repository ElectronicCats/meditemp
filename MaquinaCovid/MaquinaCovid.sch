EESchema Schematic File Version 4
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
L Device:C C12
U 1 1 5E996B93
P 2295 7295
F 0 "C12" H 2315 7395 50  0000 L CNN
F 1 "0.1uf" H 2325 7185 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2333 7145 50  0001 C CNN
F 3 "~" H 2295 7295 50  0001 C CNN
F 4 "885012207128" H 2295 7295 50  0001 C CNN "manf#"
	1    2295 7295
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5E9A3D8C
P 2455 7545
F 0 "#PWR05" H 2455 7295 50  0001 C CNN
F 1 "GND" H 2460 7372 50  0000 C CNN
F 2 "" H 2455 7545 50  0001 C CNN
F 3 "" H 2455 7545 50  0001 C CNN
	1    2455 7545
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5E99576D
P 2595 7295
F 0 "C13" H 2615 7385 50  0000 L CNN
F 1 "100uf" H 2605 7195 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 2633 7145 50  0001 C CNN
F 3 "~" H 2595 7295 50  0001 C CNN
F 4 "F930J107MAA" H 2595 7295 50  0001 C CNN "manf#"
	1    2595 7295
	1    0    0    -1  
$EndComp
Wire Wire Line
	2295 7145 2595 7145
Connection ~ 2295 7145
Wire Wire Line
	2595 7145 2765 7145
Connection ~ 2595 7145
Wire Wire Line
	1085 7245 1085 7445
Wire Wire Line
	2295 7445 2295 7545
Wire Wire Line
	2295 7545 2455 7545
Wire Wire Line
	2455 7545 2595 7545
Wire Wire Line
	2595 7545 2595 7445
Connection ~ 2455 7545
Wire Wire Line
	2875 7345 2875 7545
Wire Wire Line
	2875 7545 2595 7545
Connection ~ 2595 7545
$Comp
L power:GND #PWR01
U 1 1 5EA77E8A
P 1085 7445
F 0 "#PWR01" H 1085 7195 50  0001 C CNN
F 1 "GND" H 1090 7272 50  0000 C CNN
F 2 "" H 1085 7445 50  0001 C CNN
F 3 "" H 1085 7445 50  0001 C CNN
	1    1085 7445
	1    0    0    -1  
$EndComp
Wire Wire Line
	2765 6985 2765 7145
Connection ~ 2765 7145
Wire Wire Line
	2765 7145 2875 7145
$Comp
L Device:C C14
U 1 1 5EA9E9A3
P 3835 7295
F 0 "C14" H 3855 7385 50  0000 L CNN
F 1 "0.1uf" H 3845 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3873 7145 50  0001 C CNN
F 3 "~" H 3835 7295 50  0001 C CNN
F 4 "885012207128" H 3835 7295 50  0001 C CNN "manf#"
	1    3835 7295
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5EA9F29F
P 4135 7295
F 0 "C15" H 4155 7385 50  0000 L CNN
F 1 "100uf" H 4145 7215 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 4173 7145 50  0001 C CNN
F 3 "~" H 4135 7295 50  0001 C CNN
F 4 "F930J107MAA" H 4135 7295 50  0001 C CNN "manf#"
	1    4135 7295
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 7145 3705 7145
Wire Wire Line
	3835 7145 4135 7145
Connection ~ 3835 7145
Connection ~ 4135 7145
$Comp
L power:GND #PWR016
U 1 1 5EAC4E2F
P 3985 7535
F 0 "#PWR016" H 3985 7285 50  0001 C CNN
F 1 "GND" H 3990 7362 50  0000 C CNN
F 2 "" H 3985 7535 50  0001 C CNN
F 3 "" H 3985 7535 50  0001 C CNN
	1    3985 7535
	1    0    0    -1  
$EndComp
Wire Wire Line
	3835 7445 3835 7535
Wire Wire Line
	3835 7535 3985 7535
Wire Wire Line
	3985 7535 4135 7535
Wire Wire Line
	4135 7535 4135 7445
Connection ~ 3985 7535
$Comp
L Agronomo-rescue:AP2114H-3.3TRG1-electroniccats U3
U 1 1 5EAFBC26
P 3275 7195
F 0 "U3" H 3275 7470 50  0000 C CNN
F 1 "AP2114H-3.3TRG1" H 3275 7379 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 3275 7195 50  0001 C CNN
F 3 "https://www.mouser.mx/datasheet/2/115/AP2114-271472.pdf" H 3275 7195 50  0001 C CNN
F 4 "AP2114H-3.3TRG1" H 3275 7195 50  0001 C CNN "manf#"
	1    3275 7195
	1    0    0    -1  
$EndComp
Text Notes 1435 6775 2    50   ~ 0
Fuentes de 5v y 3.3v\n
Wire Wire Line
	3675 7345 3705 7345
Wire Wire Line
	3705 7345 3705 7145
Connection ~ 3705 7145
Wire Wire Line
	3705 7145 3835 7145
Wire Wire Line
	4135 7145 4265 7145
$Comp
L power:+3.3V #PWR017
U 1 1 5EB86775
P 4265 7045
F 0 "#PWR017" H 4265 6895 50  0001 C CNN
F 1 "+3.3V" H 4280 7218 50  0000 C CNN
F 2 "" H 4265 7045 50  0001 C CNN
F 3 "" H 4265 7045 50  0001 C CNN
	1    4265 7045
	1    0    0    -1  
$EndComp
Wire Wire Line
	4265 7145 4265 7045
$Comp
L Agronomo-rescue:AZ1084CD-5.0TRG1-electroniccats U1
U 1 1 5ED8584A
P 1585 7195
F 0 "U1" H 1560 7470 50  0000 C CNN
F 1 "AZ1084CD-5.0TRG1" H 1560 7379 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1585 7195 50  0001 C CNN
F 3 "" H 1585 7195 50  0001 C CNN
	1    1585 7195
	1    0    0    -1  
$EndComp
Wire Wire Line
	2035 7145 2295 7145
$Comp
L power:+5V #PWR012
U 1 1 5EC0E6B5
P 2765 6985
F 0 "#PWR012" H 2765 6835 50  0001 C CNN
F 1 "+5V" H 2780 7158 50  0000 C CNN
F 2 "" H 2765 6985 50  0001 C CNN
F 3 "" H 2765 6985 50  0001 C CNN
	1    2765 6985
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5E9F39C9
P 1655 7585
F 0 "J3" H 1775 7525 50  0000 C CNN
F 1 "5 VCC" H 1655 7385 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1655 7585 50  0001 C CNN
F 3 "~" H 1655 7585 50  0001 C CNN
	1    1655 7585
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR051
U 1 1 5E9F5A60
P 2035 7395
F 0 "#PWR051" H 2035 7245 50  0001 C CNN
F 1 "+5V" H 2050 7568 50  0000 C CNN
F 2 "" H 2035 7395 50  0001 C CNN
F 3 "" H 2035 7395 50  0001 C CNN
	1    2035 7395
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5E9F60BE
P 2035 7655
F 0 "#PWR052" H 2035 7405 50  0001 C CNN
F 1 "GND" H 2120 7645 50  0000 C CNN
F 2 "" H 2035 7655 50  0001 C CNN
F 3 "" H 2035 7655 50  0001 C CNN
	1    2035 7655
	1    0    0    -1  
$EndComp
Wire Wire Line
	1855 7485 2035 7485
Wire Wire Line
	2035 7485 2035 7395
Wire Wire Line
	1855 7585 2035 7585
Wire Wire Line
	2035 7585 2035 7655
Wire Notes Line
	4225 6680 600  6670
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F070AC0
P 1770 5145
F 0 "J?" H 1850 5137 50  0000 L CNN
F 1 "Conn_01x04" H 1850 5046 50  0000 L CNN
F 2 "" H 1770 5145 50  0001 C CNN
F 3 "~" H 1770 5145 50  0001 C CNN
	1    1770 5145
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F0719D4
P 1985 6030
F 0 "J?" V 2170 5975 50  0000 L CNN
F 1 "Conn_01x04" V 2085 5785 50  0000 L CNN
F 2 "" H 1985 6030 50  0001 C CNN
F 3 "~" H 1985 6030 50  0001 C CNN
	1    1985 6030
	1    0    0    -1  
$EndComp
Wire Notes Line
	605  3820 2530 3820
Wire Notes Line
	600  4710 2510 4715
Wire Notes Line
	585  5660 2520 5665
Text Notes 635  3940 0    50   ~ 0
MLX90614(temperatura)\n
Text Notes 640  4820 0    50   ~ 0
HC-SR04 (Ultrasonico)\n
Text Notes 640  5760 0    50   ~ 0
LCD\n
$Comp
L Device:R R?
U 1 1 5F07D910
P 1095 3070
F 0 "R?" V 888 3070 50  0000 C CNN
F 1 "R" V 979 3070 50  0000 C CNN
F 2 "" V 1025 3070 50  0001 C CNN
F 3 "~" H 1095 3070 50  0001 C CNN
	1    1095 3070
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q?
U 1 1 5F07E557
P 1560 3070
F 0 "Q?" H 1750 3116 50  0000 L CNN
F 1 "2N2219" H 1750 3025 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 1760 2995 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 1560 3070 50  0001 L CNN
	1    1560 3070
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5F0805CB
P 1515 2645
F 0 "D?" V 1475 2470 50  0000 L CNN
F 1 "D_Schottky" V 1560 2190 50  0000 L CNN
F 2 "" H 1515 2645 50  0001 C CNN
F 3 "~" H 1515 2645 50  0001 C CNN
	1    1515 2645
	0    1    1    0   
$EndComp
Wire Wire Line
	1245 3070 1360 3070
$Comp
L power:GND #PWR?
U 1 1 5F083E81
P 1660 3345
F 0 "#PWR?" H 1660 3095 50  0001 C CNN
F 1 "GND" H 1665 3172 50  0000 C CNN
F 2 "" H 1660 3345 50  0001 C CNN
F 3 "" H 1660 3345 50  0001 C CNN
	1    1660 3345
	1    0    0    -1  
$EndComp
Wire Wire Line
	1660 3345 1660 3270
$Comp
L power:+12V #PWR?
U 1 1 5F085109
P 1660 2350
F 0 "#PWR?" H 1660 2200 50  0001 C CNN
F 1 "+12V" H 1675 2523 50  0000 C CNN
F 2 "" H 1660 2350 50  0001 C CNN
F 3 "" H 1660 2350 50  0001 C CNN
	1    1660 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ?
U 1 1 5F07CBA8
P 1855 2650
F 0 "BZ?" H 2007 2679 50  0000 L CNN
F 1 "Buzzer" H 2007 2588 50  0000 L CNN
F 2 "" V 1830 2750 50  0001 C CNN
F 3 "~" V 1830 2750 50  0001 C CNN
	1    1855 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1660 2870 1660 2795
Wire Wire Line
	1660 2750 1755 2750
Wire Wire Line
	1755 2550 1660 2550
Wire Wire Line
	1660 2550 1660 2490
Wire Wire Line
	1515 2795 1660 2795
Connection ~ 1660 2795
Wire Wire Line
	1660 2795 1660 2750
Wire Wire Line
	1515 2490 1660 2490
Connection ~ 1660 2490
Wire Wire Line
	1660 2490 1660 2350
Wire Wire Line
	1515 2490 1515 2495
Wire Notes Line
	2530 3815 2535 2075
Wire Notes Line
	2535 2075 600  2075
Text Notes 630  2170 0    50   ~ 0
buzzer\n
Wire Notes Line
	2530 3820 2535 6675
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F07B9A7
P 1905 1215
F 0 "J?" H 1985 1207 50  0000 L CNN
F 1 "Conn_01x06" H 1985 1116 50  0000 L CNN
F 2 "" H 1905 1215 50  0001 C CNN
F 3 "~" H 1905 1215 50  0001 C CNN
	1    1905 1215
	1    0    0    -1  
$EndComp
Text Notes 625  580  0    50   ~ 0
USB - Serial\n
Wire Wire Line
	1030 7145 1055 7145
$Comp
L Device:D_Schottky D?
U 1 1 5F07D782
P 880 7145
F 0 "D?" H 880 6929 50  0000 C CNN
F 1 "D_Schottky" H 880 7020 50  0000 C CNN
F 2 "" H 880 7145 50  0001 C CNN
F 3 "~" H 880 7145 50  0001 C CNN
	1    880  7145
	-1   0    0    1   
$EndComp
Wire Wire Line
	1055 6985 1055 7145
Connection ~ 1055 7145
Wire Wire Line
	1055 7145 1085 7145
Text Label 1705 1015 2    50   ~ 0
DTR
Text Label 1705 1115 2    50   ~ 0
RX
Text Label 1320 1215 2    50   ~ 0
TX
$Comp
L Device:D D?
U 1 1 5F08A782
P 1470 1215
F 0 "D?" H 1570 1165 50  0000 C CNN
F 1 "D" H 1470 1130 50  0000 C CNN
F 2 "" H 1470 1215 50  0001 C CNN
F 3 "~" H 1470 1215 50  0001 C CNN
	1    1470 1215
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F08CB9A
P 1500 1655
F 0 "#PWR?" H 1500 1405 50  0001 C CNN
F 1 "GND" H 1505 1482 50  0000 C CNN
F 2 "" H 1500 1655 50  0001 C CNN
F 3 "" H 1500 1655 50  0001 C CNN
	1    1500 1655
	1    0    0    -1  
$EndComp
Wire Wire Line
	1705 1515 1500 1515
Wire Wire Line
	1500 1515 1500 1655
NoConn ~ 1705 1415
$Comp
L power:+5V #PWR?
U 1 1 5F08EDDC
P 1170 1240
F 0 "#PWR?" H 1170 1090 50  0001 C CNN
F 1 "+5V" H 1185 1413 50  0000 C CNN
F 2 "" H 1170 1240 50  0001 C CNN
F 3 "" H 1170 1240 50  0001 C CNN
	1    1170 1240
	1    0    0    -1  
$EndComp
Wire Wire Line
	1705 1215 1620 1215
Wire Wire Line
	1705 1315 1170 1315
Wire Wire Line
	1170 1315 1170 1240
Wire Notes Line
	2535 2075 2535 490 
Wire Notes Line
	4225 6680 4485 6680
Wire Notes Line
	4485 6680 4485 7810
$Comp
L Device:R R?
U 1 1 5F097F22
P 3110 5130
F 0 "R?" H 3180 5176 50  0000 L CNN
F 1 "330" H 3180 5085 50  0000 L CNN
F 2 "" V 3040 5130 50  0001 C CNN
F 3 "~" H 3110 5130 50  0001 C CNN
	1    3110 5130
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F098A45
P 3445 5125
F 0 "R?" H 3515 5171 50  0000 L CNN
F 1 "330" H 3515 5080 50  0000 L CNN
F 2 "" V 3375 5125 50  0001 C CNN
F 3 "~" H 3445 5125 50  0001 C CNN
	1    3445 5125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F098C87
P 3775 5125
F 0 "R?" H 3845 5171 50  0000 L CNN
F 1 "330" H 3845 5080 50  0000 L CNN
F 2 "" V 3705 5125 50  0001 C CNN
F 3 "~" H 3775 5125 50  0001 C CNN
	1    3775 5125
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F0990D7
P 3110 5620
F 0 "D?" V 3149 5503 50  0000 R CNN
F 1 "LED" V 3058 5503 50  0000 R CNN
F 2 "" H 3110 5620 50  0001 C CNN
F 3 "~" H 3110 5620 50  0001 C CNN
	1    3110 5620
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F09A387
P 3445 5620
F 0 "D?" V 3484 5503 50  0000 R CNN
F 1 "LED" V 3393 5503 50  0000 R CNN
F 2 "" H 3445 5620 50  0001 C CNN
F 3 "~" H 3445 5620 50  0001 C CNN
	1    3445 5620
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F09AFE6
P 3775 5630
F 0 "D?" V 3814 5513 50  0000 R CNN
F 1 "LED" V 3723 5513 50  0000 R CNN
F 2 "" H 3775 5630 50  0001 C CNN
F 3 "~" H 3775 5630 50  0001 C CNN
	1    3775 5630
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3110 5470 3110 5280
Wire Wire Line
	3445 5470 3445 5275
Wire Wire Line
	3775 5480 3775 5275
$Comp
L power:GND #PWR?
U 1 1 5F09F143
P 3110 5870
F 0 "#PWR?" H 3110 5620 50  0001 C CNN
F 1 "GND" H 3115 5697 50  0000 C CNN
F 2 "" H 3110 5870 50  0001 C CNN
F 3 "" H 3110 5870 50  0001 C CNN
	1    3110 5870
	1    0    0    -1  
$EndComp
Wire Wire Line
	3110 5870 3110 5770
$Comp
L power:GND #PWR?
U 1 1 5F0A1895
P 3445 5865
F 0 "#PWR?" H 3445 5615 50  0001 C CNN
F 1 "GND" H 3450 5692 50  0000 C CNN
F 2 "" H 3445 5865 50  0001 C CNN
F 3 "" H 3445 5865 50  0001 C CNN
	1    3445 5865
	1    0    0    -1  
$EndComp
Wire Wire Line
	3445 5865 3445 5770
$Comp
L power:GND #PWR?
U 1 1 5F0A433C
P 3775 5880
F 0 "#PWR?" H 3775 5630 50  0001 C CNN
F 1 "GND" H 3780 5707 50  0000 C CNN
F 2 "" H 3775 5880 50  0001 C CNN
F 3 "" H 3775 5880 50  0001 C CNN
	1    3775 5880
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 5880 3775 5780
Text Label 5360 2810 0    50   ~ 0
SDA
Text Label 5360 2910 0    50   ~ 0
SCL
Text Label 5560 1510 0    50   ~ 0
RX
Text Label 5560 1710 0    50   ~ 0
TX
Wire Wire Line
	5360 1510 5560 1510
Wire Wire Line
	5360 1710 5560 1710
NoConn ~ 4160 1610
NoConn ~ 4160 1710
$Comp
L Device:C C1
U 1 1 5DFBF1D5
P 4485 5410
F 0 "C1" H 4600 5456 50  0000 L CNN
F 1 "0.1uF" H 4600 5365 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4523 5260 50  0001 C CNN
F 3 "~" H 4485 5410 50  0001 C CNN
F 4 "C376923" H -3585 2890 50  0001 C CNN "lscs#"
F 5 "TCC0805X7R104K250DTS" H -3585 2890 50  0001 C CNN "manf#"
	1    4485 5410
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DFBF1E1
P 4485 5760
F 0 "#PWR06" H 4485 5510 50  0001 C CNN
F 1 "GND" H 4490 5587 50  0000 C CNN
F 2 "" H 4485 5760 50  0001 C CNN
F 3 "" H 4485 5760 50  0001 C CNN
	1    4485 5760
	1    0    0    -1  
$EndComp
Wire Wire Line
	4485 5560 4485 5760
Wire Wire Line
	4485 5260 4485 5110
$Comp
L power:+3.3V #PWR02
U 1 1 5DFC0C8C
P 4760 1060
F 0 "#PWR02" H 4760 910 50  0001 C CNN
F 1 "+3.3V" H 4775 1233 50  0000 C CNN
F 2 "" H 4760 1060 50  0001 C CNN
F 3 "" H 4760 1060 50  0001 C CNN
	1    4760 1060
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5DFC1604
P 4760 4210
F 0 "#PWR017" H 4760 3960 50  0001 C CNN
F 1 "GND" H 4765 4037 50  0000 C CNN
F 2 "" H 4760 4210 50  0001 C CNN
F 3 "" H 4760 4210 50  0001 C CNN
	1    4760 4210
	1    0    0    -1  
$EndComp
Wire Wire Line
	4760 4010 4760 4210
Wire Wire Line
	4760 1210 4760 1060
Text Label 5560 1410 0    50   ~ 0
GPIO0
Wire Wire Line
	5360 1410 5560 1410
Text Label 5710 1810 2    50   ~ 0
GPIO2
Wire Wire Line
	5710 1810 5360 1810
NoConn ~ 5360 3710
NoConn ~ 4160 3110
NoConn ~ 4160 3010
NoConn ~ 4160 2910
NoConn ~ 4160 2810
NoConn ~ 4160 2710
$Comp
L power:+3.3V #PWR03
U 1 1 5E03555F
P 4485 5110
F 0 "#PWR03" H 4485 4960 50  0001 C CNN
F 1 "+3.3V" H 4500 5283 50  0000 C CNN
F 2 "" H 4485 5110 50  0001 C CNN
F 3 "" H 4485 5110 50  0001 C CNN
	1    4485 5110
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5E035F76
P 3210 2010
F 0 "SW1" H 3210 2295 50  0000 C CNN
F 1 "RST" H 3210 2204 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 3210 2210 50  0001 C CNN
F 3 "~" H 3210 2210 50  0001 C CNN
F 4 "C318893" H -1395 30  50  0001 C CNN "lscs#"
F 5 "TS-1185EC-C-D-B" H -1395 30  50  0001 C CNN "manf#"
	1    3210 2010
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E03662D
P 3210 2920
F 0 "SW2" H 3210 3205 50  0000 C CNN
F 1 "BOOT" H 3210 3114 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 3210 3120 50  0001 C CNN
F 3 "~" H 3210 3120 50  0001 C CNN
F 4 "C318893" H -1395 -410 50  0001 C CNN "lscs#"
F 5 "TS-1185EC-C-D-B" H -1395 -410 50  0001 C CNN "manf#"
	1    3210 2920
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5E03E36F
P 3010 3120
F 0 "#PWR016" H 3010 2870 50  0001 C CNN
F 1 "GND" H 3015 2947 50  0000 C CNN
F 2 "" H 3010 3120 50  0001 C CNN
F 3 "" H 3010 3120 50  0001 C CNN
	1    3010 3120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5E03E61B
P 3010 2210
F 0 "#PWR07" H 3010 1960 50  0001 C CNN
F 1 "GND" H 3015 2037 50  0000 C CNN
F 2 "" H 3010 2210 50  0001 C CNN
F 3 "" H 3010 2210 50  0001 C CNN
	1    3010 2210
	1    0    0    -1  
$EndComp
Text Label 3960 1410 0    50   ~ 0
EN
Text Label 3560 2920 0    50   ~ 0
GPIO0
Wire Wire Line
	3010 3120 3010 2920
Wire Wire Line
	3410 2920 3560 2920
Wire Wire Line
	3410 2010 3610 2010
Wire Wire Line
	3010 2010 3010 2210
Wire Wire Line
	3760 1410 4160 1410
$Comp
L Device:R R1
U 1 1 5DFC7D12
P 3760 1260
F 0 "R1" V 3510 1310 50  0000 R CNN
F 1 "10K" V 3610 1260 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3690 1260 50  0001 C CNN
F 3 "~" H 3760 1260 50  0001 C CNN
F 4 "0805W8J0103T5E" H -1395 30  50  0001 C CNN "manf#"
F 5 "C25612" H -1395 30  50  0001 C CNN "lscs#"
	1    3760 1260
	-1   0    0    1   
$EndComp
Wire Wire Line
	3760 1110 3760 1010
Text Label 3610 2010 0    50   ~ 0
EN
$Comp
L power:+3.3V #PWR01
U 1 1 5DFDB33E
P 3760 1010
F 0 "#PWR01" H 3760 860 50  0001 C CNN
F 1 "+3.3V" H 3775 1183 50  0000 C CNN
F 2 "" H 3760 1010 50  0001 C CNN
F 3 "" H 3760 1010 50  0001 C CNN
	1    3760 1010
	1    0    0    -1  
$EndComp
Text Notes 4500 750  0    100  ~ 0
ESP32
NoConn ~ 5360 1610
NoConn ~ 4160 2610
$Comp
L Switch:SW_Push SW?
U 1 1 5F13436D
P 3320 3940
F 0 "SW?" H 3320 4225 50  0000 C CNN
F 1 "SW_Push" H 3320 4134 50  0000 C CNN
F 2 "" H 3320 4140 50  0001 C CNN
F 3 "~" H 3320 4140 50  0001 C CNN
	1    3320 3940
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F137E81
P 3015 4205
F 0 "#PWR?" H 3015 3955 50  0001 C CNN
F 1 "GND" H 3020 4032 50  0000 C CNN
F 2 "" H 3015 4205 50  0001 C CNN
F 3 "" H 3015 4205 50  0001 C CNN
	1    3015 4205
	1    0    0    -1  
$EndComp
Wire Wire Line
	3015 4205 3015 3940
Wire Wire Line
	3015 3940 3120 3940
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F139E11
P 5340 7225
F 0 "J?" H 5420 7217 50  0000 L CNN
F 1 "Conn_01x06" H 5110 6820 50  0000 L CNN
F 2 "" H 5340 7225 50  0001 C CNN
F 3 "~" H 5340 7225 50  0001 C CNN
	1    5340 7225
	1    0    0    -1  
$EndComp
Text Notes 4555 6770 0    50   ~ 0
RTC DS1307
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5F13CEF7
P 6620 7115
F 0 "J?" H 6700 7107 50  0000 L CNN
F 1 "Conn_01x06" H 6380 6695 50  0000 L CNN
F 2 "" H 6620 7115 50  0001 C CNN
F 3 "~" H 6620 7115 50  0001 C CNN
	1    6620 7115
	1    0    0    -1  
$EndComp
Text Notes 5720 6770 0    50   ~ 0
Lector SD 
Wire Notes Line
	4485 6680 6965 6675
Wire Notes Line
	6965 6675 6960 6670
Text Label 6170 6915 2    50   ~ 0
CS
Text Label 6150 7115 2    50   ~ 0
MOSI
Text Label 6145 7215 2    50   ~ 0
MISO
Text Label 6155 7015 2    50   ~ 0
SCK
Wire Wire Line
	6170 6915 6420 6915
Wire Wire Line
	6155 7015 6420 7015
Wire Wire Line
	6150 7115 6420 7115
Wire Wire Line
	6420 7215 6145 7215
$Comp
L power:+5V #PWR?
U 1 1 5F14F3A7
P 5865 7280
F 0 "#PWR?" H 5865 7130 50  0001 C CNN
F 1 "+5V" H 5880 7453 50  0000 C CNN
F 2 "" H 5865 7280 50  0001 C CNN
F 3 "" H 5865 7280 50  0001 C CNN
	1    5865 7280
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F14FFE7
P 6295 7510
F 0 "#PWR?" H 6295 7260 50  0001 C CNN
F 1 "GND" H 6300 7337 50  0000 C CNN
F 2 "" H 6295 7510 50  0001 C CNN
F 3 "" H 6295 7510 50  0001 C CNN
	1    6295 7510
	1    0    0    -1  
$EndComp
Wire Wire Line
	5865 7280 5865 7315
Wire Wire Line
	5865 7315 6420 7315
Wire Wire Line
	6420 7415 6295 7415
Wire Wire Line
	6295 7415 6295 7510
Text Label 4905 7025 2    50   ~ 0
SQ
Text Label 4905 7125 2    50   ~ 0
DS
Text Label 4910 7325 2    50   ~ 0
SDA
Text Label 4910 7225 2    50   ~ 0
SCL
$Comp
L power:+5V #PWR?
U 1 1 5F15614D
P 4685 7360
F 0 "#PWR?" H 4685 7210 50  0001 C CNN
F 1 "+5V" H 4590 7355 50  0000 C CNN
F 2 "" H 4685 7360 50  0001 C CNN
F 3 "" H 4685 7360 50  0001 C CNN
	1    4685 7360
	1    0    0    -1  
$EndComp
Wire Wire Line
	5140 7425 4685 7425
Wire Wire Line
	4685 7425 4685 7360
$Comp
L power:GND #PWR?
U 1 1 5F15C688
P 1720 5930
F 0 "#PWR?" H 1720 5680 50  0001 C CNN
F 1 "GND" H 1725 5795 50  0000 C CNN
F 2 "" H 1720 5930 50  0001 C CNN
F 3 "" H 1720 5930 50  0001 C CNN
	1    1720 5930
	0    1    1    0   
$EndComp
Wire Wire Line
	5045 7605 5045 7525
Wire Wire Line
	5045 7525 5140 7525
Wire Wire Line
	4910 7325 5140 7325
Wire Wire Line
	4910 7225 5140 7225
Wire Wire Line
	4905 7125 5140 7125
Wire Wire Line
	4905 7025 5140 7025
$Comp
L power:+5V #PWR?
U 1 1 5F1686DD
P 1355 5995
F 0 "#PWR?" H 1355 5845 50  0001 C CNN
F 1 "+5V" H 1370 6168 50  0000 C CNN
F 2 "" H 1355 5995 50  0001 C CNN
F 3 "" H 1355 5995 50  0001 C CNN
	1    1355 5995
	1    0    0    -1  
$EndComp
Wire Wire Line
	1785 5930 1720 5930
Wire Wire Line
	1785 6030 1355 6030
Text Label 1785 6230 2    50   ~ 0
SCL
Text Label 1785 6130 2    50   ~ 0
SDA
Wire Wire Line
	1355 6030 1355 5995
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F1854F1
P 2020 4270
F 0 "J?" V 2205 4215 50  0000 L CNN
F 1 "Conn_01x04" V 2120 4025 50  0000 L CNN
F 2 "" H 2020 4270 50  0001 C CNN
F 3 "~" H 2020 4270 50  0001 C CNN
	1    2020 4270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1854F7
P 1545 4330
F 0 "#PWR?" H 1545 4080 50  0001 C CNN
F 1 "GND" H 1550 4195 50  0000 C CNN
F 2 "" H 1545 4330 50  0001 C CNN
F 3 "" H 1545 4330 50  0001 C CNN
	1    1545 4330
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F1854FD
P 1725 4095
F 0 "#PWR?" H 1725 3945 50  0001 C CNN
F 1 "+5V" H 1740 4268 50  0000 C CNN
F 2 "" H 1725 4095 50  0001 C CNN
F 3 "" H 1725 4095 50  0001 C CNN
	1    1725 4095
	1    0    0    -1  
$EndComp
Text Label 1820 4370 2    50   ~ 0
SCL
Text Label 1820 4470 2    50   ~ 0
SDA
Wire Wire Line
	1820 4170 1725 4170
Wire Wire Line
	1725 4095 1725 4170
Wire Wire Line
	1820 4270 1545 4270
Wire Wire Line
	1545 4270 1545 4330
$Comp
L power:GND #PWR?
U 1 1 5F192BDB
P 5045 7605
F 0 "#PWR?" H 5045 7355 50  0001 C CNN
F 1 "GND" H 5045 7470 50  0000 C CNN
F 2 "" H 5045 7605 50  0001 C CNN
F 3 "" H 5045 7605 50  0001 C CNN
	1    5045 7605
	1    0    0    -1  
$EndComp
Wire Notes Line
	5620 6680 5620 7795
Text Label 5360 1910 0    50   ~ 0
CS
Text Label 5360 2610 0    50   ~ 0
SCK
Text Label 5360 3010 0    50   ~ 0
MOSI
Text Label 5360 2710 0    50   ~ 0
MISO
$Comp
L power:+5V #PWR?
U 1 1 5F19D383
P 1465 4960
F 0 "#PWR?" H 1465 4810 50  0001 C CNN
F 1 "+5V" H 1350 4995 50  0000 C CNN
F 2 "" H 1465 4960 50  0001 C CNN
F 3 "" H 1465 4960 50  0001 C CNN
	1    1465 4960
	1    0    0    -1  
$EndComp
Wire Wire Line
	1465 4960 1465 5045
Wire Wire Line
	1465 5045 1570 5045
$Comp
L power:GND #PWR?
U 1 1 5F1A0A2B
P 1455 5415
F 0 "#PWR?" H 1455 5165 50  0001 C CNN
F 1 "GND" H 1460 5280 50  0000 C CNN
F 2 "" H 1455 5415 50  0001 C CNN
F 3 "" H 1455 5415 50  0001 C CNN
	1    1455 5415
	1    0    0    -1  
$EndComp
Wire Wire Line
	1455 5415 1455 5345
Wire Wire Line
	1455 5345 1570 5345
Text Label 1570 5145 2    50   ~ 0
Trig
Text Label 1570 5245 2    50   ~ 0
Echo
$Comp
L CatWAN-Relay-rescue:LTV-817-agroin-rescue U?
U 1 1 5F08EBA7
P 7495 4825
F 0 "U?" H 7495 5150 50  0000 C CNN
F 1 "LTV-817-agroin-rescue" H 7495 5059 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 7295 4625 50  0001 L CIN
F 3 "" H 7495 4725 50  0001 L CNN
	1    7495 4825
	1    0    0    -1  
$EndComp
$Comp
L CatWAN-Relay-rescue:LTV-817-agroin-rescue U?
U 1 1 5F08F913
P 7490 5950
F 0 "U?" H 7405 6235 50  0000 C CNN
F 1 "LTV-817-agroin-rescue" H 7395 6175 50  0000 C CNN
F 2 "Housings_DIP:DIP-4_W7.62mm" H 7290 5750 50  0001 L CIN
F 3 "" H 7490 5850 50  0001 L CNN
	1    7490 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F090203
P 6915 4725
F 0 "R?" V 7070 4670 50  0000 L CNN
F 1 "2.2k" V 6995 4640 50  0000 L CNN
F 2 "" V 6845 4725 50  0001 C CNN
F 3 "~" H 6915 4725 50  0001 C CNN
	1    6915 4725
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F091006
P 6940 5850
F 0 "R?" V 7105 5805 50  0000 L CNN
F 1 "2.2k" V 7020 5770 50  0000 L CNN
F 2 "" V 6870 5850 50  0001 C CNN
F 3 "~" H 6940 5850 50  0001 C CNN
	1    6940 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	7065 4725 7195 4725
Wire Wire Line
	7090 5850 7190 5850
$Comp
L power:+12V #PWR?
U 1 1 5F0977FB
P 6670 4595
F 0 "#PWR?" H 6670 4445 50  0001 C CNN
F 1 "+12V" H 6685 4768 50  0000 C CNN
F 2 "" H 6670 4595 50  0001 C CNN
F 3 "" H 6670 4595 50  0001 C CNN
	1    6670 4595
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F09812E
P 6680 5750
F 0 "#PWR?" H 6680 5600 50  0001 C CNN
F 1 "+12V" H 6695 5923 50  0000 C CNN
F 2 "" H 6680 5750 50  0001 C CNN
F 3 "" H 6680 5750 50  0001 C CNN
	1    6680 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6670 4725 6765 4725
Wire Wire Line
	6670 4595 6670 4725
Wire Wire Line
	6680 5750 6680 5850
Wire Wire Line
	6680 5850 6790 5850
$Comp
L Device:R R?
U 1 1 5F0A1335
P 7985 4385
F 0 "R?" H 8055 4431 50  0000 L CNN
F 1 "R" H 8055 4340 50  0000 L CNN
F 2 "" V 7915 4385 50  0001 C CNN
F 3 "~" H 7985 4385 50  0001 C CNN
	1    7985 4385
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F0A2472
P 7980 5630
F 0 "R?" H 7810 5685 50  0000 L CNN
F 1 "R" H 7860 5605 50  0000 L CNN
F 2 "" V 7910 5630 50  0001 C CNN
F 3 "~" H 7980 5630 50  0001 C CNN
	1    7980 5630
	-1   0    0    1   
$EndComp
Wire Wire Line
	7790 5850 7980 5850
Wire Wire Line
	7795 4725 7985 4725
Wire Wire Line
	7985 4725 7985 4670
$Comp
L power:+3.3V #PWR?
U 1 1 5F0A9D72
P 7985 4185
F 0 "#PWR?" H 7985 4035 50  0001 C CNN
F 1 "+3.3V" H 8000 4358 50  0000 C CNN
F 2 "" H 7985 4185 50  0001 C CNN
F 3 "" H 7985 4185 50  0001 C CNN
	1    7985 4185
	1    0    0    -1  
$EndComp
Wire Wire Line
	7985 4185 7985 4235
$Comp
L power:+3.3V #PWR?
U 1 1 5F0AD89E
P 7980 5415
F 0 "#PWR?" H 7980 5265 50  0001 C CNN
F 1 "+3.3V" H 7995 5588 50  0000 C CNN
F 2 "" H 7980 5415 50  0001 C CNN
F 3 "" H 7980 5415 50  0001 C CNN
	1    7980 5415
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0BAB68
P 7980 6110
F 0 "#PWR?" H 7980 5860 50  0001 C CNN
F 1 "GND" H 7985 5937 50  0000 C CNN
F 2 "" H 7980 6110 50  0001 C CNN
F 3 "" H 7980 6110 50  0001 C CNN
	1    7980 6110
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0BB680
P 7980 5000
F 0 "#PWR?" H 7980 4750 50  0001 C CNN
F 1 "GND" H 7980 4865 50  0000 C CNN
F 2 "" H 7980 5000 50  0001 C CNN
F 3 "" H 7980 5000 50  0001 C CNN
	1    7980 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7980 5415 7980 5480
Wire Wire Line
	7795 4925 7980 4925
Wire Wire Line
	7980 4925 7980 5000
Wire Wire Line
	7790 6050 7980 6050
Wire Wire Line
	7980 6050 7980 6110
$Comp
L Connector_Generic:Conn_01x10 J?
U 1 1 5F0CCC9D
P 7400 2690
F 0 "J?" H 7480 2682 50  0000 L CNN
F 1 "Conn_01x10" H 7480 2591 50  0000 L CNN
F 2 "" H 7400 2690 50  0001 C CNN
F 3 "~" H 7400 2690 50  0001 C CNN
	1    7400 2690
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0D3E19
P 6900 2365
F 0 "#PWR?" H 6900 2115 50  0001 C CNN
F 1 "GND" H 6905 2192 50  0000 C CNN
F 2 "" H 6900 2365 50  0001 C CNN
F 3 "" H 6900 2365 50  0001 C CNN
	1    6900 2365
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0D4E61
P 6950 3270
F 0 "#PWR?" H 6950 3020 50  0001 C CNN
F 1 "GND" H 6955 3097 50  0000 C CNN
F 2 "" H 6950 3270 50  0001 C CNN
F 3 "" H 6950 3270 50  0001 C CNN
	1    6950 3270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F0D5265
P 7105 3270
F 0 "#PWR?" H 7105 3020 50  0001 C CNN
F 1 "GND" H 7110 3097 50  0000 C CNN
F 2 "" H 7105 3270 50  0001 C CNN
F 3 "" H 7105 3270 50  0001 C CNN
	1    7105 3270
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3190 7105 3190
Wire Wire Line
	7105 3190 7105 3270
Wire Wire Line
	6950 3270 6950 3090
Wire Wire Line
	6950 3090 7200 3090
Text Label 7200 2390 2    50   ~ 0
TX2
Text Label 7200 2490 2    50   ~ 0
RX2
Text Label 7200 2590 2    50   ~ 0
SDA
Text Label 7200 2690 2    50   ~ 0
SCL
Text Label 7195 4925 2    50   ~ 0
OP1
Text Label 7200 2790 2    50   ~ 0
OP1
Text Label 7190 6050 2    50   ~ 0
OP2
Text Label 7200 2890 2    50   ~ 0
OP2
Wire Wire Line
	7200 2290 6900 2290
Wire Wire Line
	6900 2290 6900 2365
Text Label 7200 2990 2    50   ~ 0
GPIO
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 5DF45865
P 4760 2610
F 0 "U1" H 5260 4260 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 5560 4060 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 4760 1110 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 4460 2660 50  0001 C CNN
F 4 "ESP32-WROOM-32" H -1395 30  50  0001 C CNN "manf#"
F 5 "-" H -1395 30  50  0001 C CNN "lscs#"
	1    4760 2610
	1    0    0    -1  
$EndComp
Text Label 5360 2010 0    50   ~ 0
Trig
Text Label 5360 2110 0    50   ~ 0
Echo
Text Label 945  3070 2    50   ~ 0
Buz
Text Label 5360 2210 0    50   ~ 0
Buz
Text Label 8090 4670 0    50   ~ 0
D1
Wire Wire Line
	8090 4670 7985 4670
Connection ~ 7985 4670
Wire Wire Line
	7985 4670 7985 4535
Text Label 8140 5835 0    50   ~ 0
D2
Wire Wire Line
	7980 5780 7980 5835
Wire Wire Line
	8140 5835 7980 5835
Connection ~ 7980 5835
Wire Wire Line
	7980 5835 7980 5850
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F0FDA31
P 7015 1035
F 0 "J?" H 7095 1027 50  0000 L CNN
F 1 "Conn_01x02" H 7095 936 50  0000 L CNN
F 2 "" H 7015 1035 50  0001 C CNN
F 3 "~" H 7015 1035 50  0001 C CNN
	1    7015 1035
	1    0    0    -1  
$EndComp
Text Notes 7215 625  0    50   ~ 0
Power suply\n
$Comp
L power:GND #PWR?
U 1 1 5F104329
P 6695 1225
F 0 "#PWR?" H 6695 975 50  0001 C CNN
F 1 "GND" H 6700 1052 50  0000 C CNN
F 2 "" H 6695 1225 50  0001 C CNN
F 3 "" H 6695 1225 50  0001 C CNN
	1    6695 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6695 1225 6695 1135
Wire Wire Line
	6695 1135 6815 1135
$Comp
L power:+12V #PWR?
U 1 1 5F108E15
P 1055 6985
F 0 "#PWR?" H 1055 6835 50  0001 C CNN
F 1 "+12V" H 1070 7158 50  0000 C CNN
F 2 "" H 1055 6985 50  0001 C CNN
F 3 "" H 1055 6985 50  0001 C CNN
	1    1055 6985
	1    0    0    -1  
$EndComp
Text Label 730  7145 2    50   ~ 0
PS
Text Label 6815 1035 2    50   ~ 0
PS
Wire Notes Line
	7740 470  6300 470 
Text Label 3520 3940 0    50   ~ 0
Pb
Text Label 5360 3110 0    50   ~ 0
Pb
Text Label 3110 4980 2    50   ~ 0
L1
Text Label 3445 4975 2    50   ~ 0
L2
Text Label 3775 4975 2    50   ~ 0
L3
Text Label 5360 2310 0    50   ~ 0
L1
Text Label 5360 3510 0    50   ~ 0
L2
Text Label 5360 3610 0    50   ~ 0
L3
Text Label 5360 3210 0    50   ~ 0
D1
Text Label 5360 3310 0    50   ~ 0
D2
Text Label 5360 3410 0    50   ~ 0
GPIO
Wire Notes Line
	6300 470  6300 6650
Wire Notes Line
	8440 450  8455 6555
Wire Notes Line
	6300 3780 8445 3775
Wire Notes Line
	6300 1830 8435 1835
Text Label 5360 2410 0    50   ~ 0
TX2
Text Label 5360 2510 0    50   ~ 0
RX2
$EndSCHEMATC
