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
Sheet 6 8
Title "CNC Controller"
Date "2015-07-29"
Rev "1"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 "fordprfkt@googlemail.com"
Comment2 ""
Comment3 ""
Comment4 "X-Axis"
$EndDescr
Text HLabel 6250 2150 1    60   Input ~ 0
Sup_30V
Text HLabel 4600 4000 0    60   Input ~ 0
SCK
Text HLabel 4600 4150 0    60   Input ~ 0
SDI
Text HLabel 4600 4300 0    60   Output ~ 0
SDO
$Comp
L GND-RESCUE-StepperController #PWR097
U 1 1 554F78F6
P 5900 5450
F 0 "#PWR097" H 5900 5450 30  0001 C CNN
F 1 "GND" H 5900 5380 30  0001 C CNN
F 2 "" H 5900 5450 60  0000 C CNN
F 3 "" H 5900 5450 60  0000 C CNN
	1    5900 5450
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 554F78FC
P 3800 3150
F 0 "C16" H 3825 3250 50  0000 L CNN
F 1 "100nF" H 3825 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3838 3000 30  0001 C CNN
F 3 "" H 3800 3150 60  0000 C CNN
	1    3800 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR098
U 1 1 554F7903
P 3800 2750
F 0 "#PWR098" H 3800 2840 20  0001 C CNN
F 1 "+5V" H 3800 2840 30  0000 C CNN
F 2 "" H 3800 2750 60  0000 C CNN
F 3 "" H 3800 2750 60  0000 C CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR099
U 1 1 554F7909
P 3800 3400
F 0 "#PWR099" H 3800 3400 30  0001 C CNN
F 1 "GND" H 3800 3330 30  0001 C CNN
F 2 "" H 3800 3400 60  0000 C CNN
F 3 "" H 3800 3400 60  0000 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 554F790F
P 6950 5200
F 0 "C19" H 6975 5300 50  0000 L CNN
F 1 "470nF" H 6975 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6988 5050 30  0001 C CNN
F 3 "" H 6950 5200 60  0000 C CNN
	1    6950 5200
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 554F7916
P 6050 2450
F 0 "C17" H 6075 2550 50  0000 L CNN
F 1 "100nF" H 6075 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6088 2300 30  0001 C CNN
F 3 "" H 6050 2450 60  0000 C CNN
	1    6050 2450
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 554F791D
P 6450 2450
F 0 "C18" H 6475 2550 50  0000 L CNN
F 1 "100nF" H 6475 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6488 2300 30  0001 C CNN
F 3 "" H 6450 2450 60  0000 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2150 6250 2650
$Comp
L GND-RESCUE-StepperController #PWR0100
U 1 1 554F792B
P 6450 2650
F 0 "#PWR0100" H 6450 2650 30  0001 C CNN
F 1 "GND" H 6450 2580 30  0001 C CNN
F 2 "" H 6450 2650 60  0000 C CNN
F 3 "" H 6450 2650 60  0000 C CNN
	1    6450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2650 6450 2600
$Comp
L GND-RESCUE-StepperController #PWR0101
U 1 1 554F7939
P 6950 5450
F 0 "#PWR0101" H 6950 5450 30  0001 C CNN
F 1 "GND" H 6950 5380 30  0001 C CNN
F 2 "" H 6950 5450 60  0000 C CNN
F 3 "" H 6950 5450 60  0000 C CNN
	1    6950 5450
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 554F793F
P 8450 3750
F 0 "R18" V 8530 3750 50  0000 C CNN
F 1 "22R" V 8450 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 3750 30  0001 C CNN
F 3 "" H 8450 3750 30  0000 C CNN
	1    8450 3750
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 554F7946
P 8800 3800
F 0 "R19" V 8880 3800 50  0000 C CNN
F 1 "100mR" V 8700 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 8730 3800 30  0001 C CNN
F 3 "" H 8800 3800 30  0000 C CNN
	1    8800 3800
	-1   0    0    1   
$EndComp
$Comp
L R R16
U 1 1 554F794D
P 7650 4200
F 0 "R16" V 7730 4200 50  0000 C CNN
F 1 "22R" V 7650 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7580 4200 30  0001 C CNN
F 3 "" H 7650 4200 30  0000 C CNN
	1    7650 4200
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 554F7954
P 8000 4200
F 0 "R17" V 8080 4200 50  0000 C CNN
F 1 "100mR" V 7900 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 7930 4200 30  0001 C CNN
F 3 "" H 8000 4200 30  0000 C CNN
	1    8000 4200
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0102
U 1 1 554F795B
P 8000 4600
F 0 "#PWR0102" H 8000 4600 30  0001 C CNN
F 1 "GND" H 8000 4530 30  0001 C CNN
F 2 "" H 8000 4600 60  0000 C CNN
F 3 "" H 8000 4600 60  0000 C CNN
	1    8000 4600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0103
U 1 1 554F7961
P 8800 4150
F 0 "#PWR0103" H 8800 4150 30  0001 C CNN
F 1 "GND" H 8800 4080 30  0001 C CNN
F 2 "" H 8800 4150 60  0000 C CNN
F 3 "" H 8800 4150 60  0000 C CNN
	1    8800 4150
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 554F7967
P 7450 5150
F 0 "C20" H 7475 5250 50  0000 L CNN
F 1 "100nF" H 7475 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7488 5000 30  0001 C CNN
F 3 "" H 7450 5150 60  0000 C CNN
	1    7450 5150
	1    0    0    -1  
$EndComp
$Comp
L CP C24
U 1 1 554F7975
P 7900 2800
F 0 "C24" H 7925 2900 50  0000 L CNN
F 1 "100µF" H 7925 2700 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 7938 2650 30  0001 C CNN
F 3 "" H 7900 2800 60  0000 C CNN
	1    7900 2800
	1    0    0    -1  
$EndComp
$Comp
L CP C23
U 1 1 554F797C
P 7850 5150
F 0 "C23" H 7875 5250 50  0000 L CNN
F 1 "100µF" H 7875 5050 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 7888 5000 30  0001 C CNN
F 3 "" H 7850 5150 60  0000 C CNN
	1    7850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5000 6950 5000
Wire Wire Line
	5900 5350 5900 5450
$Comp
L GND-RESCUE-StepperController #PWR0104
U 1 1 554F7986
P 4950 4900
F 0 "#PWR0104" H 4950 4900 30  0001 C CNN
F 1 "GND" H 4950 4830 30  0001 C CNN
F 2 "" H 4950 4900 60  0000 C CNN
F 3 "" H 4950 4900 60  0000 C CNN
	1    4950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4750 4950 4900
$Comp
L GND-RESCUE-StepperController #PWR0105
U 1 1 554F798D
P 7650 5450
F 0 "#PWR0105" H 7650 5450 30  0001 C CNN
F 1 "GND" H 7650 5380 30  0001 C CNN
F 2 "" H 7650 5450 60  0000 C CNN
F 3 "" H 7650 5450 60  0000 C CNN
	1    7650 5450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0106
U 1 1 554F7993
P 7700 3100
F 0 "#PWR0106" H 7700 3100 30  0001 C CNN
F 1 "GND" H 7700 3030 30  0001 C CNN
F 2 "" H 7700 3100 60  0000 C CNN
F 3 "" H 7700 3100 60  0000 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4000 4950 4000
Wire Wire Line
	4950 4150 4600 4150
Wire Wire Line
	4600 4300 4950 4300
Text HLabel 8100 2600 2    60   Input ~ 0
Sup_30V
Text HLabel 8000 4950 2    60   Input ~ 0
Sup_30V
$Comp
L C C22
U 1 1 554F799E
P 7450 4400
F 0 "C22" H 7475 4500 50  0000 L CNN
F 1 "10nF" H 7475 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7488 4250 30  0001 C CNN
F 3 "" H 7450 4400 60  0000 C CNN
	1    7450 4400
	-1   0    0    1   
$EndComp
$Comp
L C C25
U 1 1 554F79A5
P 8250 3950
F 0 "C25" H 8275 4050 50  0000 L CNN
F 1 "10nF" H 8275 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8288 3800 30  0001 C CNN
F 3 "" H 8250 3950 60  0000 C CNN
	1    8250 3950
	-1   0    0    1   
$EndComp
$Comp
L LED D9
U 1 1 554F79AD
P 3200 3950
F 0 "D9" H 3200 4050 50  0000 C CNN
F 1 "LED_RT" H 3200 3850 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3200 3950 60  0001 C CNN
F 3 "" H 3200 3950 60  0000 C CNN
	1    3200 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 554F79B4
P 3200 3500
F 0 "R15" V 3280 3500 50  0000 C CNN
F 1 "160R" V 3200 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3130 3500 30  0001 C CNN
F 3 "" H 3200 3500 30  0000 C CNN
	1    3200 3500
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0107
U 1 1 554F79BB
P 3200 4850
F 0 "#PWR0107" H 3200 4850 30  0001 C CNN
F 1 "GND" H 3200 4780 30  0001 C CNN
F 2 "" H 3200 4850 60  0000 C CNN
F 3 "" H 3200 4850 60  0000 C CNN
	1    3200 4850
	1    0    0    -1  
$EndComp
Text HLabel 4600 3850 0    60   Input ~ 0
CS_X
Text HLabel 4600 3650 0    60   Input ~ 0
TMC_Enable
Text HLabel 4600 3350 0    60   Input ~ 0
Step_X
Text HLabel 4600 3500 0    60   Input ~ 0
Dir_X
Wire Wire Line
	4600 3850 4950 3850
Wire Wire Line
	4950 3650 4600 3650
Wire Wire Line
	4950 3500 4600 3500
Wire Wire Line
	4950 3350 4600 3350
Text HLabel 2500 4200 0    60   Output ~ 0
Stall_X
Text HLabel 4600 3150 0    60   Input ~ 0
TMC_Clock
Wire Wire Line
	4950 3150 4600 3150
$Comp
L CONN_4 P8
U 1 1 554F79EC
P 9500 3900
F 0 "P8" V 9450 3900 50  0000 C CNN
F 1 "CONN_X" V 9550 3900 50  0000 C CNN
F 2 "w_conn_screw:mors_4p" H 9500 3900 60  0001 C CNN
F 3 "" H 9500 3900 60  0000 C CNN
	1    9500 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 3450 9000 3850
Wire Wire Line
	9000 3850 9150 3850
Wire Wire Line
	9100 4050 9100 4800
Wire Wire Line
	9100 4050 9150 4050
Wire Wire Line
	9000 3950 9000 4700
Wire Wire Line
	9000 3950 9150 3950
Wire Wire Line
	6850 3600 8800 3600
Wire Wire Line
	6850 3750 8300 3750
Wire Wire Line
	7250 2600 8100 2600
Wire Wire Line
	7500 2600 7500 2650
Wire Wire Line
	7900 2650 7900 2600
Connection ~ 7900 2600
Wire Wire Line
	7700 3000 7700 3100
Connection ~ 7700 3000
Wire Wire Line
	7250 2600 7250 3100
Connection ~ 7500 2600
Wire Wire Line
	7050 4950 8000 4950
Wire Wire Line
	7850 4950 7850 5000
Wire Wire Line
	7450 4950 7450 5000
Connection ~ 7850 4950
Connection ~ 7450 4950
Wire Wire Line
	7650 5450 7650 5350
Connection ~ 7650 5350
Wire Wire Line
	7050 4950 7050 4700
Wire Wire Line
	7050 4700 6850 4700
Wire Wire Line
	7150 4550 7150 4800
Wire Wire Line
	7150 4800 9100 4800
Wire Wire Line
	7250 4350 7250 4700
Wire Wire Line
	7250 4700 9000 4700
Wire Wire Line
	6850 4350 7250 4350
Wire Wire Line
	3800 3000 4950 3000
Wire Wire Line
	3800 3400 3800 3300
Wire Wire Line
	3800 3000 3800 2750
Connection ~ 3800 3000
$Comp
L TMC2660 U5
U 1 1 5555E99D
P 5900 3950
AR Path="/5555E99D" Ref="U5"  Part="1" 
AR Path="/553D74DE/554E7CC7/5555E99D" Ref="U5"  Part="1" 
F 0 "U5" H 5250 2950 60  0000 C CNN
F 1 "TMC2660" H 5900 3950 60  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 5900 3950 60  0001 C CNN
F 3 "" H 5900 3950 60  0000 C CNN
	1    5900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4550 6850 4550
Text Label 6850 4700 0    60   ~ 0
VSB_X
Text Label 6850 3600 0    60   ~ 0
BRA_X
Text Label 6850 3750 0    60   ~ 0
SRA_X
Text Label 6850 4200 0    60   ~ 0
SRB_X
Text Label 6850 4050 0    60   ~ 0
BRB_X
Text Label 6850 4350 0    60   ~ 0
OB2_X
Text Label 6850 4550 0    60   ~ 0
OB1_X
Text Label 6850 3100 0    60   ~ 0
VSA_X
Wire Wire Line
	9150 3750 9100 3750
Wire Wire Line
	9100 3750 9100 3250
Wire Wire Line
	7250 3100 6850 3100
Wire Wire Line
	9100 3250 6850 3250
Wire Wire Line
	6850 3450 9000 3450
Text Label 6850 3250 0    60   ~ 0
OA1_X
Text Label 6850 3450 0    60   ~ 0
OA2_X
$Comp
L BC817-40 Q3
U 1 1 55642781
P 3300 4500
F 0 "Q3" H 3500 4575 50  0000 L CNN
F 1 "BC817-40" H 3500 4500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3500 4425 50  0000 L CIN
F 3 "" H 3300 4500 50  0000 L CNN
	1    3300 4500
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR0108
U 1 1 55645EBB
P 3200 3250
F 0 "#PWR0108" H 3200 3340 20  0001 C CNN
F 1 "+5V" H 3200 3340 30  0000 C CNN
F 2 "" H 3200 3250 60  0000 C CNN
F 3 "" H 3200 3250 60  0000 C CNN
	1    3200 3250
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 556461BE
P 3800 4500
F 0 "R30" V 3880 4500 50  0000 C CNN
F 1 "4k7" V 3800 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3730 4500 30  0001 C CNN
F 3 "" H 3800 4500 30  0000 C CNN
	1    3800 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 4150 3200 4300
Wire Wire Line
	3200 4850 3200 4700
Wire Wire Line
	3200 3650 3200 3750
Wire Wire Line
	2500 4200 3200 4200
Connection ~ 3200 4200
Wire Wire Line
	3950 4500 4950 4500
Wire Wire Line
	3200 3250 3200 3350
Wire Wire Line
	3500 4500 3650 4500
Wire Wire Line
	6050 2600 6050 2650
Wire Wire Line
	6050 2300 6050 2250
Wire Wire Line
	6050 2250 6450 2250
Connection ~ 6250 2250
Wire Wire Line
	6450 2250 6450 2300
Wire Wire Line
	8800 3600 8800 3650
Wire Wire Line
	8800 3950 8800 4150
Wire Wire Line
	8600 3750 8650 3750
Wire Wire Line
	8650 3750 8650 3600
Connection ~ 8650 3600
Wire Wire Line
	8250 3800 8250 3750
Connection ~ 8250 3750
Wire Wire Line
	6850 4050 8000 4050
Wire Wire Line
	8000 4350 8000 4600
Wire Wire Line
	7800 4200 7850 4200
Wire Wire Line
	7850 4200 7850 4050
Connection ~ 7850 4050
Wire Wire Line
	6850 4200 7500 4200
Wire Wire Line
	7450 4250 7450 4200
Connection ~ 7450 4200
$Comp
L GND-RESCUE-StepperController #PWR0109
U 1 1 58A9D9D6
P 8250 4150
F 0 "#PWR0109" H 8250 4150 30  0001 C CNN
F 1 "GND" H 8250 4080 30  0001 C CNN
F 2 "" H 8250 4150 60  0000 C CNN
F 3 "" H 8250 4150 60  0000 C CNN
	1    8250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4150 8250 4100
$Comp
L GND-RESCUE-StepperController #PWR0110
U 1 1 58A9DA90
P 7450 4600
F 0 "#PWR0110" H 7450 4600 30  0001 C CNN
F 1 "GND" H 7450 4530 30  0001 C CNN
F 2 "" H 7450 4600 60  0000 C CNN
F 3 "" H 7450 4600 60  0000 C CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4600 7450 4550
Wire Wire Line
	6950 5000 6950 5050
Wire Wire Line
	6950 5450 6950 5350
$Comp
L C C21
U 1 1 554F796E
P 7500 2800
F 0 "C21" H 7525 2900 50  0000 L CNN
F 1 "100nF" H 7525 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7538 2650 30  0001 C CNN
F 3 "" H 7500 2800 60  0000 C CNN
	1    7500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5300 7450 5350
Wire Wire Line
	7450 5350 7850 5350
Wire Wire Line
	7850 5350 7850 5300
Wire Wire Line
	7500 2950 7500 3000
Wire Wire Line
	7500 3000 7900 3000
Wire Wire Line
	7900 3000 7900 2950
$EndSCHEMATC
