EESchema Schematic File Version 4
LIBS:StepperController-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title "CNC Controller"
Date "2015-07-29"
Rev "2"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 "CC BY-NC-SA 4.0"
Comment2 "Licensed under Creative Commons"
Comment3 ""
Comment4 "Power Supply"
$EndDescr
$Comp
L StepperController-rescue:CONN_2 P1
U 1 1 554E31CF
P 1700 3550
F 0 "P1" V 1650 3550 40  0000 C CNN
F 1 "Power" V 1750 3550 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 1700 3550 60  0001 C CNN
F 3 "" H 1700 3550 60  0000 C CNN
	1    1700 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C1
U 1 1 554E338E
P 4800 3650
F 0 "C1" H 4825 3750 50  0000 L CNN
F 1 "100µF" H 4825 3550 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 4838 3500 30  0001 C CNN
F 3 "" H 4800 3650 60  0000 C CNN
	1    4800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 554E342D
P 7400 3950
F 0 "C2" H 7425 4050 50  0000 L CNN
F 1 "1000µF" H 7425 3850 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D16_L25_P7.5" H 7438 3800 30  0001 C CNN
F 3 "" H 7400 3950 60  0000 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR01
U 1 1 554E3C74
P 3000 4400
F 0 "#PWR01" H 3000 4400 30  0001 C CNN
F 1 "GND" H 3000 4330 30  0001 C CNN
F 2 "" H 3000 4400 60  0000 C CNN
F 3 "" H 3000 4400 60  0000 C CNN
	1    3000 4400
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR02
U 1 1 554E3C8F
P 4800 4400
F 0 "#PWR02" H 4800 4400 30  0001 C CNN
F 1 "GND" H 4800 4330 30  0001 C CNN
F 2 "" H 4800 4400 60  0000 C CNN
F 3 "" H 4800 4400 60  0000 C CNN
	1    4800 4400
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR03
U 1 1 554E3CC5
P 6450 4400
F 0 "#PWR03" H 6450 4400 30  0001 C CNN
F 1 "GND" H 6450 4330 30  0001 C CNN
F 2 "" H 6450 4400 60  0000 C CNN
F 3 "" H 6450 4400 60  0000 C CNN
	1    6450 4400
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR04
U 1 1 554E3CE0
P 7400 4400
F 0 "#PWR04" H 7400 4400 30  0001 C CNN
F 1 "GND" H 7400 4330 30  0001 C CNN
F 2 "" H 7400 4400 60  0000 C CNN
F 3 "" H 7400 4400 60  0000 C CNN
	1    7400 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 554E3CFB
P 8650 3500
F 0 "#PWR05" H 8650 3590 20  0001 C CNN
F 1 "+5V" H 8650 3590 30  0000 C CNN
F 2 "" H 8650 3500 60  0000 C CNN
F 3 "" H 8650 3500 60  0000 C CNN
	1    8650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3650 3000 4400
Wire Wire Line
	4800 3800 4800 4400
Wire Wire Line
	6200 3650 6600 3650
Connection ~ 6450 3650
Wire Wire Line
	7400 4100 7400 4400
$Comp
L StepperController-rescue:LED-RESCUE-StepperController D2
U 1 1 554E531D
P 8200 4300
F 0 "D2" H 8200 4400 50  0000 C CNN
F 1 "LED_GN" H 8200 4200 50  0000 C CNN
F 2 "LEDs:LED_0805" H 8200 4300 60  0001 C CNN
F 3 "" H 8200 4300 60  0000 C CNN
	1    8200 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 554E539E
P 8200 3900
F 0 "R1" V 8280 3900 50  0000 C CNN
F 1 "220R" V 8200 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8130 3900 30  0001 C CNN
F 3 "" H 8200 3900 30  0000 C CNN
	1    8200 3900
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR06
U 1 1 554E56A4
P 8200 4550
F 0 "#PWR06" H 8200 4550 30  0001 C CNN
F 1 "GND" H 8200 4480 30  0001 C CNN
F 2 "" H 8200 4550 60  0000 C CNN
F 3 "" H 8200 4550 60  0000 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
Connection ~ 8200 3650
Wire Wire Line
	8200 4500 8200 4550
Text HLabel 3100 2750 2    60   Output ~ 0
Sup_30V
Wire Wire Line
	3000 2750 3100 2750
Wire Wire Line
	5200 3650 5150 3650
Wire Wire Line
	5150 3650 5150 3850
$Comp
L Device:D_Schottky D1
U 1 1 55561612
P 6450 3900
F 0 "D1" H 6450 4000 50  0000 C CNN
F 1 "SK34" H 6450 3800 50  0000 C CNN
F 2 "w_smd_diode:do214ac" H 6450 3900 60  0001 C CNN
F 3 "" H 6450 3900 60  0000 C CNN
	1    6450 3900
	0    1    1    0   
$EndComp
$Comp
L StepperController-rescue:INDUCTOR-RESCUE-StepperController L1
U 1 1 5556274D
P 6900 3650
AR Path="/5556274D" Ref="L1"  Part="1" 
AR Path="/553D74DB/5556274D" Ref="L1"  Part="1" 
F 0 "L1" V 6850 3650 50  0000 C CNN
F 1 "L-PISR 150µH" V 7000 3650 50  0000 C CNN
F 2 "Choke_SMD:Choke_SMD_PISR_Handsoldering_FASTRON" H 6900 3650 60  0001 C CNN
F 3 "" H 6900 3650 60  0000 C CNN
	1    6900 3650
	0    -1   -1   0   
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR07
U 1 1 55563254
P 5700 4400
F 0 "#PWR07" H 5700 4400 30  0001 C CNN
F 1 "GND" H 5700 4330 30  0001 C CNN
F 2 "" H 5700 4400 60  0000 C CNN
F 3 "" H 5700 4400 60  0000 C CNN
	1    5700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3450 3000 2750
$Comp
L power:PWR_FLAG #FLG08
U 1 1 5561E3FA
P 3000 2750
F 0 "#FLG08" H 3000 3020 30  0001 C CNN
F 1 "PWR_FLAG" H 3000 2980 30  0000 C CNN
F 2 "" H 3000 2750 60  0000 C CNN
F 3 "" H 3000 2750 60  0000 C CNN
	1    3000 2750
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:ZENER D12
U 1 1 556221F1
P 3350 3700
F 0 "D12" H 3350 3800 50  0000 C CNN
F 1 "SM6T 30CA" H 3350 3600 50  0000 C CNN
F 2 "w_smd_diode:do214aa" H 3350 3700 60  0001 C CNN
F 3 "" H 3350 3700 60  0000 C CNN
	1    3350 3700
	0    1    1    0   
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR09
U 1 1 556225F5
P 3350 4400
F 0 "#PWR09" H 3350 4400 30  0001 C CNN
F 1 "GND" H 3350 4330 30  0001 C CNN
F 2 "" H 3350 4400 60  0000 C CNN
F 3 "" H 3350 4400 60  0000 C CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3900 3350 4400
Wire Wire Line
	6450 3750 6450 3650
$Comp
L StepperController-rescue:F_Small F2
U 1 1 567CFF20
P 8000 3650
F 0 "F2" H 7960 3710 50  0000 L CNN
F 1 "4AT" H 7880 3590 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8000 3650 50  0001 C CNN
F 3 "" H 8000 3650 50  0000 C CNN
	1    8000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3650 3000 3650
Wire Wire Line
	6200 3450 7400 3450
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR010
U 1 1 567D996A
P 8650 4550
F 0 "#PWR010" H 8650 4550 30  0001 C CNN
F 1 "GND" H 8650 4480 30  0001 C CNN
F 2 "" H 8650 4550 60  0000 C CNN
F 3 "" H 8650 4550 60  0000 C CNN
	1    8650 4550
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:ZENER D20
U 1 1 567D9DE0
P 8650 4050
F 0 "D20" H 8650 4150 50  0000 C CNN
F 1 "P6SMB 6,8A" H 8650 3950 50  0000 C CNN
F 2 "w_smd_diode:do214aa" H 8650 4050 50  0001 C CNN
F 3 "" H 8650 4050 50  0000 C CNN
	1    8650 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 4550 8650 4250
Wire Wire Line
	6450 4400 6450 4050
Wire Wire Line
	8650 3500 8650 3850
Connection ~ 8650 3650
$Comp
L power:VCC #PWR011
U 1 1 56D54383
P 8450 3500
F 0 "#PWR011" H 8450 3350 50  0001 C CNN
F 1 "VCC" H 8450 3650 50  0000 C CNN
F 2 "" H 8450 3500 50  0000 C CNN
F 3 "" H 8450 3500 50  0000 C CNN
	1    8450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3650 8450 3500
Connection ~ 8450 3650
Connection ~ 3000 2750
Connection ~ 3000 3450
$Comp
L StepperController-rescue:LM2576S-5 U1
U 1 1 57C2DE4B
P 5700 3550
F 0 "U1" H 5300 3900 50  0000 L CNN
F 1 "LM2576S-5" H 5300 3800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5Lead" H 6000 3300 50  0001 C CIN
F 3 "" H 5700 3550 50  0000 C CNN
	1    5700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3850 5700 3850
Wire Wire Line
	5700 3850 5700 4400
Connection ~ 5700 3850
$Comp
L Device:CP C15
U 1 1 57CBEA99
P 7750 3950
F 0 "C15" H 7775 4050 50  0000 L CNN
F 1 "10µF" H 7775 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7788 3800 30  0001 C CNN
F 3 "" H 7750 3950 60  0000 C CNN
	1    7750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3650 8650 3650
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR012
U 1 1 57CBEC59
P 7750 4400
F 0 "#PWR012" H 7750 4400 30  0001 C CNN
F 1 "GND" H 7750 4330 30  0001 C CNN
F 2 "" H 7750 4400 60  0000 C CNN
F 3 "" H 7750 4400 60  0000 C CNN
	1    7750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4100 7750 4400
$Comp
L power:PWR_FLAG #FLG013
U 1 1 58BB854A
P 2750 2750
F 0 "#FLG013" H 2750 3020 30  0001 C CNN
F 1 "PWR_FLAG" H 2750 2980 30  0000 C CNN
F 2 "" H 2750 2750 60  0000 C CNN
F 3 "" H 2750 2750 60  0000 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2750 2750 3650
Connection ~ 2750 3650
$Comp
L power:PWR_FLAG #FLG014
U 1 1 58BB8B8B
P 8200 3500
F 0 "#FLG014" H 8200 3770 30  0001 C CNN
F 1 "PWR_FLAG" H 8200 3730 30  0000 C CNN
F 2 "" H 8200 3500 60  0000 C CNN
F 3 "" H 8200 3500 60  0000 C CNN
	1    8200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3500 8200 3750
$Comp
L StepperController-rescue:THERMISTOR TH1
U 1 1 58BC2DAC
P 5700 1950
F 0 "TH1" V 5800 2000 50  0000 C CNN
F 1 "10k" V 5600 1950 50  0000 C BNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5700 1950 50  0001 C CNN
F 3 "" H 5700 1950 50  0000 C CNN
	1    5700 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R67
U 1 1 58BC2E86
P 5700 2550
F 0 "R67" V 5780 2550 50  0000 C CNN
F 1 "5k1" V 5700 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 2550 50  0001 C CNN
F 3 "" H 5700 2550 50  0000 C CNN
	1    5700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 58BC2F2B
P 5700 1600
F 0 "#PWR015" H 5700 1450 50  0001 C CNN
F 1 "VCC" H 5700 1750 50  0000 C CNN
F 2 "" H 5700 1600 50  0000 C CNN
F 3 "" H 5700 1600 50  0000 C CNN
	1    5700 1600
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR016
U 1 1 58BC306A
P 5700 2850
F 0 "#PWR016" H 5700 2850 30  0001 C CNN
F 1 "GND" H 5700 2780 30  0001 C CNN
F 2 "" H 5700 2850 60  0000 C CNN
F 3 "" H 5700 2850 60  0000 C CNN
	1    5700 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C48
U 1 1 58BC335D
P 6150 2550
F 0 "C48" H 6175 2650 50  0000 L CNN
F 1 "100nF" H 6175 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6188 2400 50  0001 C CNN
F 3 "" H 6150 2550 50  0000 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2300 6400 2300
Connection ~ 5700 2300
Wire Wire Line
	6150 2400 6150 2300
Connection ~ 6150 2300
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR017
U 1 1 58BC3596
P 6150 2850
F 0 "#PWR017" H 6150 2850 30  0001 C CNN
F 1 "GND" H 6150 2780 30  0001 C CNN
F 2 "" H 6150 2850 60  0000 C CNN
F 3 "" H 6150 2850 60  0000 C CNN
	1    6150 2850
	1    0    0    -1  
$EndComp
Text HLabel 6400 2300 2    60   Output ~ 0
T_VREG
$Comp
L Device:R R68
U 1 1 58BC3703
P 3750 3650
F 0 "R68" V 3830 3650 50  0000 C CNN
F 1 "8k6" V 3750 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 3650 50  0001 C CNN
F 3 "" H 3750 3650 50  0000 C CNN
	1    3750 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R69
U 1 1 58BC3D8E
P 3750 4150
F 0 "R69" V 3830 4150 50  0000 C CNN
F 1 "1k2" V 3750 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3680 4150 50  0001 C CNN
F 3 "" H 3750 4150 50  0000 C CNN
	1    3750 4150
	1    0    0    -1  
$EndComp
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR018
U 1 1 58BC3DE9
P 3750 4400
F 0 "#PWR018" H 3750 4400 30  0001 C CNN
F 1 "GND" H 3750 4330 30  0001 C CNN
F 2 "" H 3750 4400 60  0000 C CNN
F 3 "" H 3750 4400 60  0000 C CNN
	1    3750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3450 5200 3450
Wire Wire Line
	3350 3500 3350 3450
Connection ~ 3350 3450
Wire Wire Line
	3750 3500 3750 3450
Connection ~ 3750 3450
Wire Wire Line
	3750 3800 3750 4000
Wire Wire Line
	3750 4400 3750 4300
Wire Wire Line
	4800 3500 4800 3450
Connection ~ 4800 3450
Wire Wire Line
	3750 3900 4100 3900
Connection ~ 3750 3900
Text HLabel 4100 3900 2    60   Output ~ 0
V__SUP
$Comp
L Device:C C49
U 1 1 58BC4A3E
P 4000 4150
F 0 "C49" H 4025 4250 50  0000 L CNN
F 1 "100nF" H 4025 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4038 4000 50  0001 C CNN
F 3 "" H 4000 4150 50  0000 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4000 4000 3900
Connection ~ 4000 3900
$Comp
L StepperController-rescue:GND-RESCUE-StepperController #PWR019
U 1 1 58BC4BF2
P 4000 4400
F 0 "#PWR019" H 4000 4400 30  0001 C CNN
F 1 "GND" H 4000 4330 30  0001 C CNN
F 2 "" H 4000 4400 60  0000 C CNN
F 3 "" H 4000 4400 60  0000 C CNN
	1    4000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4400 4000 4300
Wire Wire Line
	5700 1600 5700 1700
Wire Wire Line
	5700 2200 5700 2400
Wire Wire Line
	5700 2700 5700 2850
Wire Wire Line
	6150 2850 6150 2700
$Comp
L StepperController-rescue:F_Small F1
U 1 1 592F5548
P 2250 3450
F 0 "F1" H 2210 3510 50  0000 L CNN
F 1 "10AT" H 2130 3390 50  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" H 2250 3450 50  0001 C CNN
F 3 "" H 2250 3450 50  0000 C CNN
	1    2250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3450 2150 3450
Text Notes 6050 2000 0    79   ~ 0
Temperature Sense\n(Close to VREG)
Wire Wire Line
	7200 3650 7900 3650
Wire Wire Line
	7400 3450 7400 3800
Connection ~ 7400 3650
Wire Wire Line
	7750 3800 7750 3650
Connection ~ 7750 3650
Wire Wire Line
	8200 4100 8200 4050
$EndSCHEMATC
