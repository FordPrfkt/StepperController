EESchema Schematic File Version 2
LIBS:StepperController-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:microcontrollers
LIBS:microchip
LIBS:texas
LIBS:interface
LIBS:display
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:brooktre
LIBS:dc-dc
LIBS:elec-unifil
LIBS:ftdi
LIBS:graphic
LIBS:logo
LIBS:relays
LIBS:w_connectors
LIBS:w_device
LIBS:w_microcontrollers
LIBS:w_opto
LIBS:w_relay
LIBS:w_transistor
LIBS:borniers
LIBS:tmc2660
LIBS:xo-14s
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:audio
LIBS:cmos_ieee
LIBS:cypress
LIBS:digital-audio
LIBS:diode
LIBS:dsp
LIBS:ESD_Protection
LIBS:gennum
LIBS:hc11
LIBS:intel
LIBS:ir
LIBS:Lattice
LIBS:maxim
LIBS:memory
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:philips
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:valves
LIBS:video
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
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_2 P1
U 1 1 554E31CF
P 2150 3000
F 0 "P1" V 2100 3000 40  0000 C CNN
F 1 "Power" V 2200 3000 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 2150 3000 60  0001 C CNN
F 3 "" H 2150 3000 60  0000 C CNN
	1    2150 3000
	-1   0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 554E338E
P 3250 3050
F 0 "C1" H 3275 3150 50  0000 L CNN
F 1 "220µF" H 3275 2950 50  0000 L CNN
F 2 "w_smd_cap:c_elec_6.3x7.7" H 3288 2900 30  0001 C CNN
F 3 "" H 3250 3050 60  0000 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 554E342D
P 5850 3250
F 0 "C2" H 5875 3350 50  0000 L CNN
F 1 "100µF" H 5875 3150 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 5888 3100 30  0001 C CNN
F 3 "" H 5850 3250 60  0000 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR2
U 1 1 554E3C74
P 2500 3550
F 0 "#PWR2" H 2500 3550 30  0001 C CNN
F 1 "GND" H 2500 3480 30  0001 C CNN
F 2 "" H 2500 3550 60  0000 C CNN
F 3 "" H 2500 3550 60  0000 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR4
U 1 1 554E3C8F
P 3250 3550
F 0 "#PWR4" H 3250 3550 30  0001 C CNN
F 1 "GND" H 3250 3480 30  0001 C CNN
F 2 "" H 3250 3550 60  0000 C CNN
F 3 "" H 3250 3550 60  0000 C CNN
	1    3250 3550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR6
U 1 1 554E3CC5
P 4900 3600
F 0 "#PWR6" H 4900 3600 30  0001 C CNN
F 1 "GND" H 4900 3530 30  0001 C CNN
F 2 "" H 4900 3600 60  0000 C CNN
F 3 "" H 4900 3600 60  0000 C CNN
	1    4900 3600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR7
U 1 1 554E3CE0
P 5850 3600
F 0 "#PWR7" H 5850 3600 30  0001 C CNN
F 1 "GND" H 5850 3530 30  0001 C CNN
F 2 "" H 5850 3600 60  0000 C CNN
F 3 "" H 5850 3600 60  0000 C CNN
	1    5850 3600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR1
U 1 1 554E3CFB
P 6900 2950
F 0 "#PWR1" H 6900 3040 20  0001 C CNN
F 1 "+5V" H 6900 3040 30  0000 C CNN
F 2 "" H 6900 2950 60  0000 C CNN
F 3 "" H 6900 2950 60  0000 C CNN
	1    6900 2950
	1    0    0    -1  
$EndComp
Connection ~ 3250 2900
Wire Wire Line
	2500 3100 2500 3550
Wire Wire Line
	3250 3200 3250 3550
Wire Wire Line
	4900 3400 4900 3600
Wire Wire Line
	4650 3100 5050 3100
Connection ~ 4900 3100
Wire Wire Line
	5850 3400 5850 3600
Connection ~ 5850 3100
Wire Wire Line
	4650 2900 5850 2900
Wire Wire Line
	5850 2900 5850 3100
$Comp
L LED D2
U 1 1 554E531D
P 6500 3700
F 0 "D2" H 6500 3800 50  0000 C CNN
F 1 "LED_GN" H 6500 3600 50  0000 C CNN
F 2 "LEDs:LED-0805" H 6500 3700 60  0001 C CNN
F 3 "" H 6500 3700 60  0000 C CNN
	1    6500 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 554E539E
P 6500 3250
F 0 "R1" V 6580 3250 50  0000 C CNN
F 1 "160R" V 6500 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6430 3250 30  0001 C CNN
F 3 "" H 6500 3250 30  0000 C CNN
	1    6500 3250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR8
U 1 1 554E56A4
P 6500 4000
F 0 "#PWR8" H 6500 4000 30  0001 C CNN
F 1 "GND" H 6500 3930 30  0001 C CNN
F 2 "" H 6500 4000 60  0000 C CNN
F 3 "" H 6500 4000 60  0000 C CNN
	1    6500 4000
	1    0    0    -1  
$EndComp
Connection ~ 6500 3100
Wire Wire Line
	6500 3400 6500 3500
Wire Wire Line
	6500 3900 6500 4000
Text HLabel 2600 2200 2    60   Output ~ 0
Sup_36V
Wire Wire Line
	2500 2200 2600 2200
Connection ~ 6900 3100
$Comp
L LM2595S-5-RESCUE-StepperController U1
U 1 1 5555448B
P 4150 3000
F 0 "U1" H 3750 3350 50  0000 L CNN
F 1 "LM2595S-5" H 3750 3250 50  0000 L CNN
F 2 "SMD_Packages:TO-263-5_HandSoldering" H 4450 2750 50  0001 C CIN
F 3 "" H 4150 3000 50  0000 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2900 3650 2900
Wire Wire Line
	6900 3100 6900 2950
Wire Wire Line
	3650 3100 3600 3100
Wire Wire Line
	3600 3100 3600 3300
Wire Wire Line
	3600 3300 4150 3300
Connection ~ 4150 3300
$Comp
L D_Schottky D1
U 1 1 55561612
P 4900 3350
F 0 "D1" H 4900 3450 50  0000 C CNN
F 1 "MBRS240" H 4900 3250 50  0000 C CNN
F 2 "Diodes_SMD:Diode-DO-214AB_Handsoldering" H 4900 3350 60  0001 C CNN
F 3 "" H 4900 3350 60  0000 C CNN
	1    4900 3350
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 5556274D
P 5350 3100
F 0 "L1" V 5300 3100 50  0000 C CNN
F 1 "100µH" V 5450 3100 50  0000 C CNN
F 2 "Choke_SMD:Choke_SMD_12x12mm_h8mm" H 5350 3100 60  0001 C CNN
F 3 "" H 5350 3100 60  0000 C CNN
	1    5350 3100
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR5
U 1 1 55563254
P 4150 3600
F 0 "#PWR5" H 4150 3600 30  0001 C CNN
F 1 "GND" H 4150 3530 30  0001 C CNN
F 2 "" H 4150 3600 60  0000 C CNN
F 3 "" H 4150 3600 60  0000 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3300 4150 3600
Wire Wire Line
	2500 2900 2500 2200
Text Label 6900 3050 2    60   ~ 0
Sup_5V
$Comp
L PWR_FLAG #FLG1
U 1 1 5561E3FA
P 3250 2900
F 0 "#FLG1" H 3250 3170 30  0001 C CNN
F 1 "PWR_FLAG" H 3250 3130 30  0000 C CNN
F 2 "" H 3250 2900 60  0000 C CNN
F 3 "" H 3250 2900 60  0000 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
$Comp
L ZENER D12
U 1 1 556221F1
P 2850 3100
F 0 "D12" H 2850 3200 50  0000 C CNN
F 1 "P6KE47CA" H 2850 3000 50  0000 C CNN
F 2 "w_pth_diodes:diode_do201" H 2850 3100 60  0001 C CNN
F 3 "" H 2850 3100 60  0000 C CNN
	1    2850 3100
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR3
U 1 1 556225F5
P 2850 3550
F 0 "#PWR3" H 2850 3550 30  0001 C CNN
F 1 "GND" H 2850 3480 30  0001 C CNN
F 2 "" H 2850 3550 60  0000 C CNN
F 3 "" H 2850 3550 60  0000 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3300 2850 3550
Connection ~ 2850 2900
Wire Wire Line
	4900 3200 4900 3100
Wire Wire Line
	5650 3100 6900 3100
Text Notes 3600 2600 0    60   ~ 0
Ändern zu LM2676!! (3A/5V)
$EndSCHEMATC
