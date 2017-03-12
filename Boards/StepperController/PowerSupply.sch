EESchema Schematic File Version 2
LIBS:StepperController-rescue
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:StepperController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title "CNC Controller"
Date "2015-07-29"
Rev "1"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 "fordprfkt@googlemail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_2 P1
U 1 1 554E31CF
P 1550 3250
F 0 "P1" V 1500 3250 40  0000 C CNN
F 1 "Power" V 1600 3250 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 1550 3250 60  0001 C CNN
F 3 "" H 1550 3250 60  0000 C CNN
	1    1550 3250
	-1   0    0    1   
$EndComp
$Comp
L CP C1
U 1 1 554E338E
P 4200 3350
F 0 "C1" H 4225 3450 50  0000 L CNN
F 1 "100µF" H 4225 3250 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 4238 3200 30  0001 C CNN
F 3 "" H 4200 3350 60  0000 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 554E342D
P 6800 3500
F 0 "C2" H 6825 3600 50  0000 L CNN
F 1 "1000µF" H 6825 3400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D16_L25_P7.5" H 6838 3350 30  0001 C CNN
F 3 "" H 6800 3500 60  0000 C CNN
	1    6800 3500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR01
U 1 1 554E3C74
P 2400 4100
F 0 "#PWR01" H 2400 4100 30  0001 C CNN
F 1 "GND" H 2400 4030 30  0001 C CNN
F 2 "" H 2400 4100 60  0000 C CNN
F 3 "" H 2400 4100 60  0000 C CNN
	1    2400 4100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR02
U 1 1 554E3C8F
P 4200 4100
F 0 "#PWR02" H 4200 4100 30  0001 C CNN
F 1 "GND" H 4200 4030 30  0001 C CNN
F 2 "" H 4200 4100 60  0000 C CNN
F 3 "" H 4200 4100 60  0000 C CNN
	1    4200 4100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR03
U 1 1 554E3CC5
P 5850 4100
F 0 "#PWR03" H 5850 4100 30  0001 C CNN
F 1 "GND" H 5850 4030 30  0001 C CNN
F 2 "" H 5850 4100 60  0000 C CNN
F 3 "" H 5850 4100 60  0000 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR04
U 1 1 554E3CE0
P 6800 4100
F 0 "#PWR04" H 6800 4100 30  0001 C CNN
F 1 "GND" H 6800 4030 30  0001 C CNN
F 2 "" H 6800 4100 60  0000 C CNN
F 3 "" H 6800 4100 60  0000 C CNN
	1    6800 4100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 554E3CFB
P 8050 3200
F 0 "#PWR05" H 8050 3290 20  0001 C CNN
F 1 "+5V" H 8050 3290 30  0000 C CNN
F 2 "" H 8050 3200 60  0000 C CNN
F 3 "" H 8050 3200 60  0000 C CNN
	1    8050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3350 2400 4100
Wire Wire Line
	4200 3500 4200 4100
Wire Wire Line
	5600 3350 6000 3350
Connection ~ 5850 3350
Wire Wire Line
	6800 3650 6800 4100
Connection ~ 6800 3350
Wire Wire Line
	6800 3150 6800 3350
$Comp
L LED D2
U 1 1 554E531D
P 7600 3950
F 0 "D2" H 7600 4050 50  0000 C CNN
F 1 "LED_GN" H 7600 3850 50  0000 C CNN
F 2 "LEDs:LED_0805" H 7600 3950 60  0001 C CNN
F 3 "" H 7600 3950 60  0000 C CNN
	1    7600 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 554E539E
P 7600 3500
F 0 "R1" V 7680 3500 50  0000 C CNN
F 1 "140R" V 7600 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 3500 30  0001 C CNN
F 3 "" H 7600 3500 30  0000 C CNN
	1    7600 3500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR06
U 1 1 554E56A4
P 7600 4250
F 0 "#PWR06" H 7600 4250 30  0001 C CNN
F 1 "GND" H 7600 4180 30  0001 C CNN
F 2 "" H 7600 4250 60  0000 C CNN
F 3 "" H 7600 4250 60  0000 C CNN
	1    7600 4250
	1    0    0    -1  
$EndComp
Connection ~ 7600 3350
Wire Wire Line
	7600 3650 7600 3750
Wire Wire Line
	7600 4150 7600 4250
Text HLabel 2500 2450 2    60   Output ~ 0
Sup_30V
Wire Wire Line
	2400 2450 2500 2450
Wire Wire Line
	4600 3350 4550 3350
Wire Wire Line
	4550 3350 4550 3550
$Comp
L D_Schottky D1
U 1 1 55561612
P 5850 3600
F 0 "D1" H 5850 3700 50  0000 C CNN
F 1 "SK34" H 5850 3500 50  0000 C CNN
F 2 "w_smd_diode:do214ac" H 5850 3600 60  0001 C CNN
F 3 "" H 5850 3600 60  0000 C CNN
	1    5850 3600
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 5556274D
P 6300 3350
F 0 "L1" V 6250 3350 50  0000 C CNN
F 1 "L-PISR 100µH" V 6400 3350 50  0000 C CNN
F 2 "Choke_SMD:Choke_SMD_PISR_Handsoldering_FASTRON" H 6300 3350 60  0001 C CNN
F 3 "" H 6300 3350 60  0000 C CNN
	1    6300 3350
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR07
U 1 1 55563254
P 5100 4100
F 0 "#PWR07" H 5100 4100 30  0001 C CNN
F 1 "GND" H 5100 4030 30  0001 C CNN
F 2 "" H 5100 4100 60  0000 C CNN
F 3 "" H 5100 4100 60  0000 C CNN
	1    5100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3150 2400 2450
$Comp
L PWR_FLAG #FLG08
U 1 1 5561E3FA
P 2400 2450
F 0 "#FLG08" H 2400 2720 30  0001 C CNN
F 1 "PWR_FLAG" H 2400 2680 30  0000 C CNN
F 2 "" H 2400 2450 60  0000 C CNN
F 3 "" H 2400 2450 60  0000 C CNN
	1    2400 2450
	1    0    0    -1  
$EndComp
$Comp
L ZENER D12
U 1 1 556221F1
P 2750 3400
F 0 "D12" H 2750 3500 50  0000 C CNN
F 1 "SM6T 30CA" H 2750 3300 50  0000 C CNN
F 2 "w_smd_diode:do214aa" H 2750 3400 60  0001 C CNN
F 3 "" H 2750 3400 60  0000 C CNN
	1    2750 3400
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR09
U 1 1 556225F5
P 2750 4100
F 0 "#PWR09" H 2750 4100 30  0001 C CNN
F 1 "GND" H 2750 4030 30  0001 C CNN
F 2 "" H 2750 4100 60  0000 C CNN
F 3 "" H 2750 4100 60  0000 C CNN
	1    2750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3600 2750 4100
Wire Wire Line
	5850 3450 5850 3350
$Comp
L F_Small F2
U 1 1 567CFF20
P 7400 3350
F 0 "F2" H 7360 3410 50  0000 L CNN
F 1 "4AT" H 7280 3290 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7400 3350 50  0001 C CNN
F 3 "" H 7400 3350 50  0000 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3350 2400 3350
Wire Wire Line
	5600 3150 6800 3150
$Comp
L GND-RESCUE-StepperController #PWR010
U 1 1 567D996A
P 8050 4250
F 0 "#PWR010" H 8050 4250 30  0001 C CNN
F 1 "GND" H 8050 4180 30  0001 C CNN
F 2 "" H 8050 4250 60  0000 C CNN
F 3 "" H 8050 4250 60  0000 C CNN
	1    8050 4250
	1    0    0    -1  
$EndComp
$Comp
L ZENER D20
U 1 1 567D9DE0
P 8050 3950
F 0 "D20" H 8050 4050 50  0000 C CNN
F 1 "P6SMB 6,8A" H 8050 3850 50  0000 C CNN
F 2 "w_smd_diode:do214aa" H 8050 3950 50  0001 C CNN
F 3 "" H 8050 3950 50  0000 C CNN
	1    8050 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 4250 8050 4150
Wire Wire Line
	5850 4100 5850 3750
Wire Wire Line
	6600 3350 7300 3350
Wire Wire Line
	8050 3200 8050 3750
Connection ~ 8050 3350
$Comp
L VCC #PWR011
U 1 1 56D54383
P 7850 3200
F 0 "#PWR011" H 7850 3050 50  0001 C CNN
F 1 "VCC" H 7850 3350 50  0000 C CNN
F 2 "" H 7850 3200 50  0000 C CNN
F 3 "" H 7850 3200 50  0000 C CNN
	1    7850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3350 7850 3200
Connection ~ 7850 3350
Connection ~ 2400 2450
Connection ~ 2400 3150
$Comp
L LM2576S-5 U1
U 1 1 57C2DE4B
P 5100 3250
F 0 "U1" H 4700 3600 50  0000 L CNN
F 1 "LM2576S-5" H 4700 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5Lead" H 5400 3000 50  0000 C CIN
F 3 "" H 5100 3250 50  0000 C CNN
	1    5100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3550 5100 3550
Wire Wire Line
	5100 3550 5100 4100
Connection ~ 5100 3550
$Comp
L CP C15
U 1 1 57CBEA99
P 7150 3500
F 0 "C15" H 7175 3600 50  0000 L CNN
F 1 "10µF" H 7175 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7188 3350 30  0001 C CNN
F 3 "" H 7150 3500 60  0000 C CNN
	1    7150 3500
	1    0    0    -1  
$EndComp
Connection ~ 7150 3350
Wire Wire Line
	7500 3350 8050 3350
$Comp
L GND-RESCUE-StepperController #PWR012
U 1 1 57CBEC59
P 7150 4100
F 0 "#PWR012" H 7150 4100 30  0001 C CNN
F 1 "GND" H 7150 4030 30  0001 C CNN
F 2 "" H 7150 4100 60  0000 C CNN
F 3 "" H 7150 4100 60  0000 C CNN
	1    7150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3650 7150 4100
$Comp
L PWR_FLAG #FLG013
U 1 1 58BB854A
P 2150 2450
F 0 "#FLG013" H 2150 2720 30  0001 C CNN
F 1 "PWR_FLAG" H 2150 2680 30  0000 C CNN
F 2 "" H 2150 2450 60  0000 C CNN
F 3 "" H 2150 2450 60  0000 C CNN
	1    2150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2450 2150 3350
Connection ~ 2150 3350
$Comp
L PWR_FLAG #FLG014
U 1 1 58BB8B8B
P 7600 3200
F 0 "#FLG014" H 7600 3470 30  0001 C CNN
F 1 "PWR_FLAG" H 7600 3430 30  0000 C CNN
F 2 "" H 7600 3200 60  0000 C CNN
F 3 "" H 7600 3200 60  0000 C CNN
	1    7600 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3350 7600 3200
$Comp
L THERMISTOR TH1
U 1 1 58BC2DAC
P 5100 1650
F 0 "TH1" V 5200 1700 50  0000 C CNN
F 1 "6k8" V 5000 1650 50  0000 C BNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5100 1650 50  0001 C CNN
F 3 "" H 5100 1650 50  0000 C CNN
	1    5100 1650
	1    0    0    -1  
$EndComp
$Comp
L R R67
U 1 1 58BC2E86
P 5100 2250
F 0 "R67" V 5180 2250 50  0000 C CNN
F 1 "3k6" V 5100 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5030 2250 50  0001 C CNN
F 3 "" H 5100 2250 50  0000 C CNN
	1    5100 2250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 58BC2F2B
P 5100 1300
F 0 "#PWR015" H 5100 1150 50  0001 C CNN
F 1 "VCC" H 5100 1450 50  0000 C CNN
F 2 "" H 5100 1300 50  0000 C CNN
F 3 "" H 5100 1300 50  0000 C CNN
	1    5100 1300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR016
U 1 1 58BC306A
P 5100 2550
F 0 "#PWR016" H 5100 2550 30  0001 C CNN
F 1 "GND" H 5100 2480 30  0001 C CNN
F 2 "" H 5100 2550 60  0000 C CNN
F 3 "" H 5100 2550 60  0000 C CNN
	1    5100 2550
	1    0    0    -1  
$EndComp
$Comp
L C C48
U 1 1 58BC335D
P 5550 2250
F 0 "C48" H 5575 2350 50  0000 L CNN
F 1 "100nF" H 5575 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5588 2100 50  0001 C CNN
F 3 "" H 5550 2250 50  0000 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2000 5800 2000
Connection ~ 5100 2000
Wire Wire Line
	5550 2100 5550 2000
Connection ~ 5550 2000
$Comp
L GND-RESCUE-StepperController #PWR017
U 1 1 58BC3596
P 5550 2550
F 0 "#PWR017" H 5550 2550 30  0001 C CNN
F 1 "GND" H 5550 2480 30  0001 C CNN
F 2 "" H 5550 2550 60  0000 C CNN
F 3 "" H 5550 2550 60  0000 C CNN
	1    5550 2550
	1    0    0    -1  
$EndComp
Text HLabel 5800 2000 2    60   Output ~ 0
T_VREG
$Comp
L R R68
U 1 1 58BC3703
P 3150 3350
F 0 "R68" V 3230 3350 50  0000 C CNN
F 1 "8k6" V 3150 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3080 3350 50  0001 C CNN
F 3 "" H 3150 3350 50  0000 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
$Comp
L R R69
U 1 1 58BC3D8E
P 3150 3850
F 0 "R69" V 3230 3850 50  0000 C CNN
F 1 "1k2" V 3150 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3080 3850 50  0001 C CNN
F 3 "" H 3150 3850 50  0000 C CNN
	1    3150 3850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR018
U 1 1 58BC3DE9
P 3150 4100
F 0 "#PWR018" H 3150 4100 30  0001 C CNN
F 1 "GND" H 3150 4030 30  0001 C CNN
F 2 "" H 3150 4100 60  0000 C CNN
F 3 "" H 3150 4100 60  0000 C CNN
	1    3150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3150 4600 3150
Wire Wire Line
	2750 3200 2750 3150
Connection ~ 2750 3150
Wire Wire Line
	3150 3200 3150 3150
Connection ~ 3150 3150
Wire Wire Line
	3150 3500 3150 3700
Wire Wire Line
	3150 4100 3150 4000
Wire Wire Line
	4200 3200 4200 3150
Connection ~ 4200 3150
Wire Wire Line
	3150 3600 3500 3600
Connection ~ 3150 3600
Text HLabel 3500 3600 2    60   Output ~ 0
V__SUP
$Comp
L C C49
U 1 1 58BC4A3E
P 3400 3850
F 0 "C49" H 3425 3950 50  0000 L CNN
F 1 "100nF" H 3425 3750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3438 3700 50  0001 C CNN
F 3 "" H 3400 3850 50  0000 C CNN
	1    3400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3700 3400 3600
Connection ~ 3400 3600
$Comp
L GND-RESCUE-StepperController #PWR019
U 1 1 58BC4BF2
P 3400 4100
F 0 "#PWR019" H 3400 4100 30  0001 C CNN
F 1 "GND" H 3400 4030 30  0001 C CNN
F 2 "" H 3400 4100 60  0000 C CNN
F 3 "" H 3400 4100 60  0000 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4100 3400 4000
Wire Wire Line
	5100 1300 5100 1400
Wire Wire Line
	5100 1900 5100 2100
Wire Wire Line
	5100 2400 5100 2550
Wire Wire Line
	5550 2550 5550 2400
$EndSCHEMATC
