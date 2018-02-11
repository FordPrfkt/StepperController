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
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
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
LIBS:w_connectors
LIBS:StepperController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title "CNC Controller"
Date "2015-07-29"
Rev "2"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 "CC BY-NC-SA 4.0"
Comment2 "Licensed under Creative Commons"
Comment3 ""
Comment4 "Z-Axis"
$EndDescr
Text HLabel 6150 2150 1    60   Input ~ 0
Sup_30V
Text HLabel 4500 4000 0    60   Input ~ 0
SCK
Text HLabel 4500 4150 0    60   Input ~ 0
SDI
Text HLabel 4500 4300 0    60   Output ~ 0
SDO
$Comp
L GND-RESCUE-StepperController #PWR0124
U 1 1 554F7E58
P 5800 5450
F 0 "#PWR0124" H 5800 5450 30  0001 C CNN
F 1 "GND" H 5800 5380 30  0001 C CNN
F 2 "" H 5800 5450 60  0000 C CNN
F 3 "" H 5800 5450 60  0000 C CNN
	1    5800 5450
	1    0    0    -1  
$EndComp
$Comp
L C C36
U 1 1 554F7E5E
P 3600 3150
F 0 "C36" H 3625 3250 50  0000 L CNN
F 1 "100nF" H 3625 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 3000 30  0001 C CNN
F 3 "" H 3600 3150 60  0000 C CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0125
U 1 1 554F7E65
P 3600 2750
F 0 "#PWR0125" H 3600 2840 20  0001 C CNN
F 1 "+5V" H 3600 2840 30  0000 C CNN
F 2 "" H 3600 2750 60  0000 C CNN
F 3 "" H 3600 2750 60  0000 C CNN
	1    3600 2750
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0126
U 1 1 554F7E6B
P 3600 3400
F 0 "#PWR0126" H 3600 3400 30  0001 C CNN
F 1 "GND" H 3600 3330 30  0001 C CNN
F 2 "" H 3600 3400 60  0000 C CNN
F 3 "" H 3600 3400 60  0000 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
$Comp
L C C39
U 1 1 554F7E71
P 6850 5150
F 0 "C39" H 6875 5250 50  0000 L CNN
F 1 "470nF" H 6875 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6888 5000 30  0001 C CNN
F 3 "" H 6850 5150 60  0000 C CNN
	1    6850 5150
	1    0    0    -1  
$EndComp
$Comp
L C C37
U 1 1 554F7E78
P 5950 2450
F 0 "C37" H 5975 2550 50  0000 L CNN
F 1 "100nF" H 5975 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5988 2300 30  0001 C CNN
F 3 "" H 5950 2450 60  0000 C CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
$Comp
L C C38
U 1 1 554F7E7F
P 6350 2450
F 0 "C38" H 6375 2550 50  0000 L CNN
F 1 "100nF" H 6375 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6388 2300 30  0001 C CNN
F 3 "" H 6350 2450 60  0000 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2150 6150 2650
$Comp
L GND-RESCUE-StepperController #PWR0127
U 1 1 554F7E8D
P 6350 2650
F 0 "#PWR0127" H 6350 2650 30  0001 C CNN
F 1 "GND" H 6350 2580 30  0001 C CNN
F 2 "" H 6350 2650 60  0000 C CNN
F 3 "" H 6350 2650 60  0000 C CNN
	1    6350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2650 6350 2600
$Comp
L GND-RESCUE-StepperController #PWR0128
U 1 1 554F7E9B
P 6850 5400
F 0 "#PWR0128" H 6850 5400 30  0001 C CNN
F 1 "GND" H 6850 5330 30  0001 C CNN
F 2 "" H 6850 5400 60  0000 C CNN
F 3 "" H 6850 5400 60  0000 C CNN
	1    6850 5400
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 554F7EA1
P 8400 3750
F 0 "R28" V 8480 3750 50  0000 C CNN
F 1 "22R" V 8400 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8330 3750 30  0001 C CNN
F 3 "" H 8400 3750 30  0000 C CNN
	1    8400 3750
	0    1    1    0   
$EndComp
$Comp
L R R29
U 1 1 554F7EA8
P 8750 3800
F 0 "R29" V 8830 3800 50  0000 C CNN
F 1 "100mR" V 8650 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 8680 3800 30  0001 C CNN
F 3 "" H 8750 3800 30  0000 C CNN
	1    8750 3800
	-1   0    0    1   
$EndComp
$Comp
L R R26
U 1 1 554F7EAF
P 7650 4200
F 0 "R26" V 7730 4200 50  0000 C CNN
F 1 "22R" V 7650 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7580 4200 30  0001 C CNN
F 3 "" H 7650 4200 30  0000 C CNN
	1    7650 4200
	0    1    1    0   
$EndComp
$Comp
L R R27
U 1 1 554F7EB6
P 8000 4250
F 0 "R27" V 8080 4250 50  0000 C CNN
F 1 "100mR" V 7900 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 7930 4250 30  0001 C CNN
F 3 "" H 8000 4250 30  0000 C CNN
	1    8000 4250
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0129
U 1 1 554F7EBD
P 8000 4650
F 0 "#PWR0129" H 8000 4650 30  0001 C CNN
F 1 "GND" H 8000 4580 30  0001 C CNN
F 2 "" H 8000 4650 60  0000 C CNN
F 3 "" H 8000 4650 60  0000 C CNN
	1    8000 4650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0130
U 1 1 554F7EC3
P 8750 4200
F 0 "#PWR0130" H 8750 4200 30  0001 C CNN
F 1 "GND" H 8750 4130 30  0001 C CNN
F 2 "" H 8750 4200 60  0000 C CNN
F 3 "" H 8750 4200 60  0000 C CNN
	1    8750 4200
	1    0    0    -1  
$EndComp
$Comp
L C C40
U 1 1 554F7EC9
P 7350 5150
F 0 "C40" H 7375 5250 50  0000 L CNN
F 1 "100nF" H 7375 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7388 5000 30  0001 C CNN
F 3 "" H 7350 5150 60  0000 C CNN
	1    7350 5150
	1    0    0    -1  
$EndComp
$Comp
L C C41
U 1 1 554F7ED0
P 7400 2850
F 0 "C41" H 7425 2950 50  0000 L CNN
F 1 "100nF" H 7425 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7438 2700 30  0001 C CNN
F 3 "" H 7400 2850 60  0000 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
$Comp
L CP C44
U 1 1 554F7ED7
P 7800 2850
F 0 "C44" H 7825 2950 50  0000 L CNN
F 1 "100µF" H 7825 2750 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 7838 2700 30  0001 C CNN
F 3 "" H 7800 2850 60  0000 C CNN
	1    7800 2850
	1    0    0    -1  
$EndComp
$Comp
L CP C43
U 1 1 554F7EDE
P 7750 5150
F 0 "C43" H 7775 5250 50  0000 L CNN
F 1 "100µF" H 7775 5050 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_8x10.5" H 7788 5000 30  0001 C CNN
F 3 "" H 7750 5150 60  0000 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5000 6850 5000
Wire Wire Line
	6850 5400 6850 5300
Wire Wire Line
	5800 5350 5800 5450
$Comp
L GND-RESCUE-StepperController #PWR0131
U 1 1 554F7EE8
P 4850 4900
F 0 "#PWR0131" H 4850 4900 30  0001 C CNN
F 1 "GND" H 4850 4830 30  0001 C CNN
F 2 "" H 4850 4900 60  0000 C CNN
F 3 "" H 4850 4900 60  0000 C CNN
	1    4850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4750 4850 4900
$Comp
L GND-RESCUE-StepperController #PWR0132
U 1 1 554F7EEF
P 7550 5450
F 0 "#PWR0132" H 7550 5450 30  0001 C CNN
F 1 "GND" H 7550 5380 30  0001 C CNN
F 2 "" H 7550 5450 60  0000 C CNN
F 3 "" H 7550 5450 60  0000 C CNN
	1    7550 5450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0133
U 1 1 554F7EF5
P 7600 3150
F 0 "#PWR0133" H 7600 3150 30  0001 C CNN
F 1 "GND" H 7600 3080 30  0001 C CNN
F 2 "" H 7600 3150 60  0000 C CNN
F 3 "" H 7600 3150 60  0000 C CNN
	1    7600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4000 4850 4000
Wire Wire Line
	4850 4150 4500 4150
Wire Wire Line
	4500 4300 4850 4300
Text HLabel 8000 2650 2    60   Input ~ 0
Sup_30V
Text HLabel 7900 4950 2    60   Input ~ 0
Sup_30V
$Comp
L C C42
U 1 1 554F7F00
P 7450 4400
F 0 "C42" H 7475 4500 50  0000 L CNN
F 1 "10nF" H 7475 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7488 4250 30  0001 C CNN
F 3 "" H 7450 4400 60  0000 C CNN
	1    7450 4400
	-1   0    0    1   
$EndComp
$Comp
L C C45
U 1 1 554F7F07
P 8200 3950
F 0 "C45" H 8225 4050 50  0000 L CNN
F 1 "10nF" H 8225 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8238 3800 30  0001 C CNN
F 3 "" H 8200 3950 60  0000 C CNN
	1    8200 3950
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-StepperController D11
U 1 1 554F7F0F
P 3250 3950
F 0 "D11" H 3250 4050 50  0000 C CNN
F 1 "LED_RT" H 3250 3850 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3250 3950 60  0001 C CNN
F 3 "" H 3250 3950 60  0000 C CNN
	1    3250 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R25
U 1 1 554F7F16
P 3250 3550
F 0 "R25" V 3330 3550 50  0000 C CNN
F 1 "220R" V 3250 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 3550 30  0001 C CNN
F 3 "" H 3250 3550 30  0000 C CNN
	1    3250 3550
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR0134
U 1 1 554F7F1D
P 3250 4800
F 0 "#PWR0134" H 3250 4800 30  0001 C CNN
F 1 "GND" H 3250 4730 30  0001 C CNN
F 2 "" H 3250 4800 60  0000 C CNN
F 3 "" H 3250 4800 60  0000 C CNN
	1    3250 4800
	1    0    0    -1  
$EndComp
Text HLabel 4500 3850 0    60   Input ~ 0
CS_Z
Text HLabel 4500 3650 0    60   Input ~ 0
TMC_Enable
Text HLabel 4500 3350 0    60   Input ~ 0
Step_Z
Text HLabel 4500 3500 0    60   Input ~ 0
Dir_Z
Wire Wire Line
	4500 3850 4850 3850
Wire Wire Line
	4850 3650 4500 3650
Wire Wire Line
	4850 3500 4500 3500
Wire Wire Line
	4850 3350 4500 3350
Text HLabel 2750 4250 0    60   Output ~ 0
Stall_Z
Text HLabel 4500 3150 0    60   Input ~ 0
TMC_Clock
Wire Wire Line
	4850 3150 4500 3150
$Comp
L CONN_4 P10
U 1 1 554F7F4E
P 9400 3900
F 0 "P10" V 9350 3900 50  0000 C CNN
F 1 "CONN_Z" V 9450 3900 50  0000 C CNN
F 2 "w_conn_screw:mors_4p" H 9400 3900 60  0001 C CNN
F 3 "" H 9400 3900 60  0000 C CNN
	1    9400 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 3250 9000 3750
Wire Wire Line
	9000 3750 9050 3750
Wire Wire Line
	8900 3450 8900 3850
Wire Wire Line
	8900 3850 9050 3850
Wire Wire Line
	9000 4050 9000 4850
Wire Wire Line
	9000 4050 9050 4050
Wire Wire Line
	8900 3950 8900 4750
Wire Wire Line
	8900 3950 9050 3950
Wire Wire Line
	6750 3600 8750 3600
Wire Wire Line
	6750 3750 8250 3750
Wire Wire Line
	7050 2650 8000 2650
Wire Wire Line
	7400 2650 7400 2700
Wire Wire Line
	7800 2700 7800 2650
Connection ~ 7800 2650
Wire Wire Line
	7600 3050 7600 3150
Connection ~ 7600 3050
Wire Wire Line
	7050 2650 7050 3100
Connection ~ 7400 2650
Wire Wire Line
	7000 4950 7900 4950
Wire Wire Line
	7750 4950 7750 5000
Wire Wire Line
	7350 4950 7350 5000
Connection ~ 7750 4950
Connection ~ 7350 4950
Wire Wire Line
	7550 5450 7550 5350
Connection ~ 7550 5350
Wire Wire Line
	7000 4950 7000 4700
Wire Wire Line
	7000 4700 6750 4700
Wire Wire Line
	7100 4550 7100 4850
Wire Wire Line
	7100 4850 9000 4850
Wire Wire Line
	7200 4350 7200 4750
Wire Wire Line
	7200 4750 8900 4750
Wire Wire Line
	6750 3250 9000 3250
Wire Wire Line
	6750 3450 8900 3450
Wire Wire Line
	6750 4350 7200 4350
Wire Wire Line
	3600 3000 4850 3000
Wire Wire Line
	3600 2750 3600 3000
Wire Wire Line
	3600 3400 3600 3300
Connection ~ 3600 3000
$Comp
L TMC2660 U7
U 1 1 5555EDDB
P 5800 3950
AR Path="/5555EDDB" Ref="U7"  Part="1" 
AR Path="/553D74DE/554E7CCD/5555EDDB" Ref="U7"  Part="1" 
F 0 "U7" H 5150 2950 60  0000 C CNN
F 1 "TMC2660" H 5800 3950 60  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 5800 3950 60  0001 C CNN
F 3 "" H 5800 3950 60  0000 C CNN
	1    5800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4550 6750 4550
Wire Wire Line
	7050 3100 6750 3100
Text Label 6750 3250 0    60   ~ 0
OA1_Z
Text Label 6750 3450 0    60   ~ 0
OA2_Z
Text Label 6750 4350 0    60   ~ 0
OB2_Z
Text Label 6750 4550 0    60   ~ 0
OB1_Z
Text Label 6750 3600 0    60   ~ 0
BRA_Z
Text Label 6750 3750 0    60   ~ 0
SRA_Z
Text Label 6750 4200 0    60   ~ 0
SRB_Z
Text Label 6750 4050 0    60   ~ 0
BRB_Z
$Comp
L BC817-40 Q5
U 1 1 55642845
P 3350 4500
F 0 "Q5" H 3550 4575 50  0000 L CNN
F 1 "BC817-40" H 3550 4500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3550 4425 50  0000 L CIN
F 3 "" H 3350 4500 50  0000 L CNN
	1    3350 4500
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR0135
U 1 1 556430F9
P 3250 3300
F 0 "#PWR0135" H 3250 3390 20  0001 C CNN
F 1 "+5V" H 3250 3390 30  0000 C CNN
F 2 "" H 3250 3300 60  0000 C CNN
F 3 "" H 3250 3300 60  0000 C CNN
	1    3250 3300
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 556432A6
P 3950 4500
F 0 "R32" V 4030 4500 50  0000 C CNN
F 1 "4k7" V 3950 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3880 4500 30  0001 C CNN
F 3 "" H 3950 4500 30  0000 C CNN
	1    3950 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 4500 4100 4500
Wire Wire Line
	3800 4500 3550 4500
Wire Wire Line
	3250 3300 3250 3400
Wire Wire Line
	3250 3700 3250 3750
Wire Wire Line
	3250 4150 3250 4300
Wire Wire Line
	3250 4700 3250 4800
Wire Wire Line
	2750 4250 3250 4250
Connection ~ 3250 4250
Wire Wire Line
	5950 2600 5950 2650
Wire Wire Line
	5950 2300 5950 2250
Wire Wire Line
	5950 2250 6350 2250
Connection ~ 6150 2250
Wire Wire Line
	6350 2250 6350 2300
Wire Wire Line
	7400 3000 7400 3050
Wire Wire Line
	7400 3050 7800 3050
Wire Wire Line
	7800 3050 7800 3000
Wire Wire Line
	7350 5300 7350 5350
Wire Wire Line
	7350 5350 7750 5350
Wire Wire Line
	7750 5350 7750 5300
Wire Wire Line
	8750 3600 8750 3650
Wire Wire Line
	8550 3750 8600 3750
Wire Wire Line
	8600 3750 8600 3600
Connection ~ 8600 3600
Wire Wire Line
	8200 3800 8200 3750
Connection ~ 8200 3750
$Comp
L GND-RESCUE-StepperController #PWR0136
U 1 1 58AADCB7
P 8200 4200
F 0 "#PWR0136" H 8200 4200 30  0001 C CNN
F 1 "GND" H 8200 4130 30  0001 C CNN
F 2 "" H 8200 4200 60  0000 C CNN
F 3 "" H 8200 4200 60  0000 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4200 8200 4100
Wire Wire Line
	8750 4200 8750 3950
Wire Wire Line
	6750 4050 8000 4050
Wire Wire Line
	8000 4050 8000 4100
Wire Wire Line
	8000 4650 8000 4400
Wire Wire Line
	7800 4200 7850 4200
Wire Wire Line
	7850 4200 7850 4050
Connection ~ 7850 4050
Wire Wire Line
	6750 4200 7500 4200
Wire Wire Line
	7450 4250 7450 4200
Connection ~ 7450 4200
$Comp
L GND-RESCUE-StepperController #PWR0137
U 1 1 58AAED59
P 7450 4650
F 0 "#PWR0137" H 7450 4650 30  0001 C CNN
F 1 "GND" H 7450 4580 30  0001 C CNN
F 2 "" H 7450 4650 60  0000 C CNN
F 3 "" H 7450 4650 60  0000 C CNN
	1    7450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4650 7450 4550
Text Label 6750 3100 0    60   ~ 0
VSA_Z
Text Label 6750 4700 0    60   ~ 0
VSB_Z
$EndSCHEMATC
