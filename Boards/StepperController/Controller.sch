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
Sheet 3 8
Title "CNC Controller"
Date "2015-07-29"
Rev "1"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 "fordprfkt@googlemail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2950 5350 0    60   Input ~ 0
RXD
Text HLabel 2950 5450 0    60   Output ~ 0
TXD
Text HLabel 2950 5550 0    60   Output ~ 0
RTS
Text HLabel 2950 5650 0    60   Output ~ 0
CTS
$Comp
L GND-RESCUE-StepperController #PWR020
U 1 1 554E928E
P 4750 6550
F 0 "#PWR020" H 4750 6550 30  0001 C CNN
F 1 "GND" H 4750 6480 30  0001 C CNN
F 2 "" H 4750 6550 60  0000 C CNN
F 3 "" H 4750 6550 60  0000 C CNN
	1    4750 6550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 554E92C4
P 4600 2200
F 0 "#PWR021" H 4600 2290 20  0001 C CNN
F 1 "+5V" H 4600 2290 30  0000 C CNN
F 2 "" H 4600 2200 60  0000 C CNN
F 3 "" H 4600 2200 60  0000 C CNN
	1    4600 2200
	1    0    0    -1  
$EndComp
Text HLabel 9850 3650 2    60   Output ~ 0
SCK
Text HLabel 9850 3850 2    60   Input ~ 0
SDO
Text HLabel 9850 3750 2    60   Output ~ 0
SDI
$Comp
L C C4
U 1 1 554E9371
P 2900 1100
F 0 "C4" H 2925 1200 50  0000 L CNN
F 1 "100nF" H 2925 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2938 950 30  0001 C CNN
F 3 "" H 2900 1100 60  0000 C CNN
	1    2900 1100
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 554E9462
P 3200 1100
F 0 "C5" H 3225 1200 50  0000 L CNN
F 1 "100nF" H 3225 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3238 950 30  0001 C CNN
F 3 "" H 3200 1100 60  0000 C CNN
	1    3200 1100
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 554E949F
P 3500 1100
F 0 "C6" H 3525 1200 50  0000 L CNN
F 1 "100nF" H 3525 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3538 950 30  0001 C CNN
F 3 "" H 3500 1100 60  0000 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 554E94E9
P 3300 3450
F 0 "C7" H 3325 3550 50  0000 L CNN
F 1 "100nF" H 3325 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3338 3300 30  0001 C CNN
F 3 "" H 3300 3450 60  0000 C CNN
	1    3300 3450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 554E952C
P 3200 750
F 0 "#PWR022" H 3200 840 20  0001 C CNN
F 1 "+5V" H 3200 840 30  0000 C CNN
F 2 "" H 3200 750 60  0000 C CNN
F 3 "" H 3200 750 60  0000 C CNN
	1    3200 750 
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR023
U 1 1 554E953F
P 3200 1450
F 0 "#PWR023" H 3200 1450 30  0001 C CNN
F 1 "GND" H 3200 1380 30  0001 C CNN
F 2 "" H 3200 1450 60  0000 C CNN
F 3 "" H 3200 1450 60  0000 C CNN
	1    3200 1450
	1    0    0    -1  
$EndComp
Text HLabel 6500 3150 2    60   Output ~ 0
Step_X
Text HLabel 6500 3050 2    60   Output ~ 0
Dir_X
Text HLabel 6500 2950 2    60   Output ~ 0
Step_Y
Text HLabel 6500 2850 2    60   Output ~ 0
Dir_Y
Text HLabel 6500 2750 2    60   Output ~ 0
Step_Z
Text HLabel 6500 2650 2    60   Output ~ 0
Dir_Z
Text HLabel 6450 4650 2    60   Input ~ 0
Ref_X1
Text HLabel 8750 2200 0    60   Input ~ 0
Ref_X2
Text HLabel 6450 4550 2    60   Input ~ 0
Ref_Y1
Text HLabel 8750 2700 0    60   Input ~ 0
Ref_Y2
Text HLabel 6450 4450 2    60   Input ~ 0
Ref_Z1
Text HLabel 8750 3200 0    60   Input ~ 0
Ref_Z2
Text HLabel 8750 2000 0    60   Input ~ 0
Stall_X
Text HLabel 8750 2500 0    60   Input ~ 0
Stall_Y
Text HLabel 8750 3000 0    60   Input ~ 0
Stall_Z
Text HLabel 2150 5150 0    60   Output ~ 0
Enable
Text HLabel 6450 6050 2    60   Output ~ 0
CS_X
Text HLabel 6450 5950 2    60   Output ~ 0
CS_Y
Text HLabel 6450 5850 2    60   Output ~ 0
CS_Z
Text HLabel 6500 3250 2    60   Output ~ 0
Rel_1
Text HLabel 6500 3350 2    60   Output ~ 0
Rel_2
Text HLabel 2950 4950 0    60   Input ~ 0
Emergency_Off
Text HLabel 6450 4250 2    60   Output ~ 0
Spindle_PWM
Text HLabel 6500 3550 2    60   Output ~ 0
CS_Display
Text HLabel 2950 3850 0    60   Input ~ 0
Ref_Tool
$Comp
L LED D4
U 1 1 5552F285
P 1450 4400
F 0 "D4" H 1450 4500 50  0000 C CNN
F 1 "LED_Rd" H 1450 4300 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 1450 4400 60  0001 C CNN
F 3 "" H 1450 4400 60  0000 C CNN
	1    1450 4400
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 5552F31C
P 1100 4400
F 0 "D3" H 1100 4500 50  0000 C CNN
F 1 "LED_Gn" H 1100 4300 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 1100 4400 60  0001 C CNN
F 3 "" H 1100 4400 60  0000 C CNN
	1    1100 4400
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW3
U 1 1 5552F458
P 2400 6350
F 0 "SW3" H 2550 6460 50  0000 C CNN
F 1 "SW_2" H 2400 6270 50  0000 C CNN
F 2 "SW0773:SW_0773" H 2400 6350 60  0001 C CNN
F 3 "" H 2400 6350 60  0000 C CNN
	1    2400 6350
	0    -1   1    0   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5552F4F1
P 1950 6300
F 0 "SW2" H 2100 6410 50  0000 C CNN
F 1 "SW_1" H 1950 6220 50  0000 C CNN
F 2 "SW0773:SW_0773" H 1950 6300 60  0001 C CNN
F 3 "" H 1950 6300 60  0000 C CNN
	1    1950 6300
	0    -1   1    0   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR024
U 1 1 5554FF77
P 2400 6750
F 0 "#PWR024" H 2400 6750 30  0001 C CNN
F 1 "GND" H 2400 6680 30  0001 C CNN
F 2 "" H 2400 6750 60  0000 C CNN
F 3 "" H 2400 6750 60  0000 C CNN
	1    2400 6750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5555210D
P 1450 4850
F 0 "R4" V 1530 4850 50  0000 C CNN
F 1 "160R" V 1450 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 4850 30  0001 C CNN
F 3 "" H 1450 4850 30  0000 C CNN
	1    1450 4850
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 55552334
P 1100 4850
F 0 "R3" V 1180 4850 50  0000 C CNN
F 1 "140R" V 1100 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1030 4850 30  0001 C CNN
F 3 "" H 1100 4850 30  0000 C CNN
	1    1100 4850
	-1   0    0    1   
$EndComp
$Comp
L HEADER_3x2 J3
U 1 1 55552390
P 7750 4400
F 0 "J3" H 7750 4600 60  0000 C CNN
F 1 "ISP" H 7750 4200 60  0000 C CNN
F 2 "w_conn_strip:vasch_strip_3x2" H 7750 4400 60  0001 C CNN
F 3 "" H 7750 4400 60  0000 C CNN
	1    7750 4400
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR025
U 1 1 555526B4
P 1250 5150
F 0 "#PWR025" H 1250 5150 30  0001 C CNN
F 1 "GND" H 1250 5080 30  0001 C CNN
F 2 "" H 1250 5150 60  0000 C CNN
F 3 "" H 1250 5150 60  0000 C CNN
	1    1250 5150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 55553676
P 1400 5550
F 0 "#PWR026" H 1400 5640 20  0001 C CNN
F 1 "+5V" H 1400 5640 30  0000 C CNN
F 2 "" H 1400 5550 60  0000 C CNN
F 3 "" H 1400 5550 60  0000 C CNN
	1    1400 5550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR027
U 1 1 555CEB42
P 9500 5000
F 0 "#PWR027" H 9500 5000 30  0001 C CNN
F 1 "GND" H 9500 4930 30  0001 C CNN
F 2 "" H 9500 5000 60  0000 C CNN
F 3 "" H 9500 5000 60  0000 C CNN
	1    9500 5000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 555CEC82
P 9500 4000
F 0 "#PWR028" H 9500 4090 20  0001 C CNN
F 1 "+5V" H 9500 4090 30  0000 C CNN
F 2 "" H 9500 4000 60  0000 C CNN
F 3 "" H 9500 4000 60  0000 C CNN
	1    9500 4000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 555D0E9A
P 7950 4250
F 0 "#PWR029" H 7950 4340 20  0001 C CNN
F 1 "+5V" H 7950 4340 30  0000 C CNN
F 2 "" H 7950 4250 60  0000 C CNN
F 3 "" H 7950 4250 60  0000 C CNN
	1    7950 4250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR030
U 1 1 555D0ECD
P 7950 4600
F 0 "#PWR030" H 7950 4600 30  0001 C CNN
F 1 "GND" H 7950 4530 30  0001 C CNN
F 2 "" H 7950 4600 60  0000 C CNN
F 3 "" H 7950 4600 60  0000 C CNN
	1    7950 4600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR031
U 1 1 555535F3
P 1400 6100
F 0 "#PWR031" H 1400 6100 30  0001 C CNN
F 1 "GND" H 1400 6030 30  0001 C CNN
F 2 "" H 1400 6100 60  0000 C CNN
F 3 "" H 1400 6100 60  0000 C CNN
	1    1400 6100
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 55560014
P 2300 5350
F 0 "R5" V 2380 5350 50  0000 C CNN
F 1 "10k" V 2300 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2230 5350 30  0001 C CNN
F 3 "" H 2300 5350 30  0000 C CNN
	1    2300 5350
	1    0    0    -1  
$EndComp
$Comp
L HEADER_4 J1
U 1 1 5561CC8E
P 1250 5800
F 0 "J1" H 1250 6050 60  0000 C CNN
F 1 "I2C" H 1250 5550 60  0000 C CNN
F 2 "w_conn_jst-ph:b4b-ph-kl" H 1250 5800 60  0001 C CNN
F 3 "" H 1250 5800 60  0000 C CNN
	1    1250 5800
	-1   0    0    -1  
$EndComp
$Comp
L HEADER_8 J2
U 1 1 5561CFB3
P 9650 4450
F 0 "J2" H 9650 4900 60  0000 C CNN
F 1 "SPI_Extern" H 10000 4450 60  0000 C CNN
F 2 "w_conn_jst-ph:b8b-ph-kl" H 9650 4450 60  0001 C CNN
F 3 "" H 9650 4450 60  0000 C CNN
	1    9650 4450
	1    0    0    -1  
$EndComp
Text HLabel 2150 5050 0    60   Output ~ 0
Spindle_On
$Comp
L GND-RESCUE-StepperController #PWR032
U 1 1 55627CED
P 9350 3400
F 0 "#PWR032" H 9350 3400 30  0001 C CNN
F 1 "GND" H 9350 3330 30  0001 C CNN
F 2 "" H 9350 3400 60  0000 C CNN
F 3 "" H 9350 3400 60  0000 C CNN
	1    9350 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR033
U 1 1 55627DEA
P 9350 1750
F 0 "#PWR033" H 9350 1840 20  0001 C CNN
F 1 "+5V" H 9350 1840 30  0000 C CNN
F 2 "" H 9350 1750 60  0000 C CNN
F 3 "" H 9350 1750 60  0000 C CNN
	1    9350 1750
	1    0    0    -1  
$EndComp
$Comp
L C C46
U 1 1 55628516
P 9900 1800
F 0 "C46" H 9925 1900 50  0000 L CNN
F 1 "100nF" H 9925 1700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9938 1650 30  0001 C CNN
F 3 "" H 9900 1800 60  0000 C CNN
	1    9900 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR034
U 1 1 556286F5
P 9900 1650
F 0 "#PWR034" H 9900 1740 20  0001 C CNN
F 1 "+5V" H 9900 1740 30  0000 C CNN
F 2 "" H 9900 1650 60  0000 C CNN
F 3 "" H 9900 1650 60  0000 C CNN
	1    9900 1650
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR035
U 1 1 5562872E
P 9900 1950
F 0 "#PWR035" H 9900 1950 30  0001 C CNN
F 1 "GND" H 9900 1880 30  0001 C CNN
F 2 "" H 9900 1950 60  0000 C CNN
F 3 "" H 9900 1950 60  0000 C CNN
	1    9900 1950
	1    0    0    -1  
$EndComp
NoConn ~ 6050 5150
NoConn ~ 6050 5350
$Comp
L R R56
U 1 1 567DF65D
P 1700 5500
F 0 "R56" V 1780 5500 50  0000 C CNN
F 1 "4k7" V 1700 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1630 5500 30  0001 C CNN
F 3 "" H 1700 5500 30  0000 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
$Comp
L R R57
U 1 1 567DF719
P 1900 5500
F 0 "R57" V 1980 5500 50  0000 C CNN
F 1 "4k7" V 1900 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 5500 30  0001 C CNN
F 3 "" H 1900 5500 30  0000 C CNN
	1    1900 5500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR036
U 1 1 567DFA63
P 1800 5300
F 0 "#PWR036" H 1800 5390 20  0001 C CNN
F 1 "+5V" H 1800 5390 30  0000 C CNN
F 2 "" H 1800 5300 60  0000 C CNN
F 3 "" H 1800 5300 60  0000 C CNN
	1    1800 5300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR037
U 1 1 567E10FB
P 3300 3650
F 0 "#PWR037" H 3300 3650 30  0001 C CNN
F 1 "GND" H 3300 3580 30  0001 C CNN
F 2 "" H 3300 3650 60  0000 C CNN
F 3 "" H 3300 3650 60  0000 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
NoConn ~ 3450 3750
NoConn ~ 3450 3950
NoConn ~ 6050 5450
NoConn ~ 6050 4150
NoConn ~ 6050 4050
NoConn ~ 6050 3950
NoConn ~ 6050 5050
$Comp
L R R49
U 1 1 56D4C29A
P 2500 5350
F 0 "R49" V 2580 5350 50  0000 C CNN
F 1 "10k" V 2500 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2430 5350 30  0001 C CNN
F 3 "" H 2500 5350 30  0000 C CNN
	1    2500 5350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR038
U 1 1 56D4C328
P 2400 5600
F 0 "#PWR038" H 2400 5600 30  0001 C CNN
F 1 "GND" H 2400 5530 30  0001 C CNN
F 2 "" H 2400 5600 60  0000 C CNN
F 3 "" H 2400 5600 60  0000 C CNN
	1    2400 5600
	1    0    0    -1  
$EndComp
Text HLabel 2950 4850 0    60   Input ~ 0
Cover
$Comp
L Crystal Y1
U 1 1 56D4BD2D
P 2600 2950
F 0 "Y1" H 2600 3100 50  0000 C CNN
F 1 "16MHz" H 2600 2800 50  0000 C CNN
F 2 "w_crystal:hc-49_smd" H 2600 2950 50  0001 C CNN
F 3 "" H 2600 2950 50  0000 C CNN
	1    2600 2950
	-1   0    0    1   
$EndComp
$Comp
L C C8
U 1 1 56D4C25F
P 2250 3100
F 0 "C8" H 2275 3200 50  0000 L CNN
F 1 "22pF" H 2275 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2288 2950 30  0001 C CNN
F 3 "" H 2250 3100 60  0000 C CNN
	1    2250 3100
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 56D4C477
P 2900 3100
F 0 "C9" H 2925 3200 50  0000 L CNN
F 1 "22pF" H 2925 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2938 2950 30  0001 C CNN
F 3 "" H 2900 3100 60  0000 C CNN
	1    2900 3100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR039
U 1 1 56D4CFFB
P 2600 3300
F 0 "#PWR039" H 2600 3300 30  0001 C CNN
F 1 "GND" H 2600 3230 30  0001 C CNN
F 2 "" H 2600 3300 60  0000 C CNN
F 3 "" H 2600 3300 60  0000 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U4
U 2 1 57C3D60F
P 9550 2600
F 0 "U4" H 9550 2650 50  0000 C CNN
F 1 "74HC08" H 9550 2550 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 9550 2600 50  0001 C CNN
F 3 "" H 9550 2600 50  0000 C CNN
	2    9550 2600
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U4
U 3 1 57C3D8C3
P 9550 3100
F 0 "U4" H 9550 3150 50  0000 C CNN
F 1 "74HC08" H 9550 3050 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 9550 3100 50  0001 C CNN
F 3 "" H 9550 3100 50  0000 C CNN
	3    9550 3100
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U4
U 4 1 57C3D9E4
P 9550 1050
F 0 "U4" H 9550 1100 50  0000 C CNN
F 1 "74HC08" H 9550 1000 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 9550 1050 50  0001 C CNN
F 3 "" H 9550 1050 50  0000 C CNN
	4    9550 1050
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U4
U 1 1 57C3DA4F
P 9550 2100
F 0 "U4" H 9550 2150 50  0000 C CNN
F 1 "74HC08" H 9550 2050 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 9550 2100 50  0001 C CNN
F 3 "" H 9550 2100 50  0000 C CNN
	1    9550 2100
	1    0    0    -1  
$EndComp
NoConn ~ 8950 950 
NoConn ~ 8950 1150
NoConn ~ 10150 1050
Text HLabel 2950 4750 0    60   BiDi ~ 0
Ext1
Text HLabel 2950 4650 0    60   BiDi ~ 0
Ext2
$Comp
L ATMEGA645A-A IC1
U 1 1 55511D73
P 4750 4350
F 0 "IC1" H 3600 6250 40  0000 L BNN
F 1 "ATMEGA645A-A" H 5400 2400 40  0000 L BNN
F 2 "Housings_QFP:TQFP-64_14x14mm_Pitch0.8mm" H 4750 4350 30  0001 C CIN
F 3 "" H 4750 4350 60  0000 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
$Comp
L C C47
U 1 1 57CBF3B0
P 3800 1100
F 0 "C47" H 3825 1200 50  0000 L CNN
F 1 "10µF" H 3825 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3838 950 30  0001 C CNN
F 3 "" H 3800 1100 60  0000 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
Text HLabel 2950 4550 0    60   Input ~ 0
V_SUP
Text HLabel 2950 4450 0    60   Input ~ 0
T_REG
$Comp
L R R70
U 1 1 58BCF678
P 1900 3800
F 0 "R70" V 1980 3800 50  0000 C CNN
F 1 "12k" V 1900 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 3800 30  0001 C CNN
F 3 "" H 1900 3800 30  0000 C CNN
	1    1900 3800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR040
U 1 1 58BD2596
P 1800 3550
F 0 "#PWR040" H 1800 3640 20  0001 C CNN
F 1 "+5V" H 1800 3640 30  0000 C CNN
F 2 "" H 1800 3550 60  0000 C CNN
F 3 "" H 1800 3550 60  0000 C CNN
	1    1800 3550
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D32
U 1 1 58BD31FE
P 1700 3800
F 0 "D32" H 1700 3900 50  0000 C CNN
F 1 "ZMY5.6" H 1700 3700 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 1700 3800 50  0001 C CNN
F 3 "" H 1700 3800 50  0000 C CNN
	1    1700 3800
	0    1    1    0   
$EndComp
Text Label 3200 4050 0    60   ~ 0
LED1
Text Label 3200 4150 0    60   ~ 0
LED2
Text Label 3200 4250 0    60   ~ 0
Reset
Text Label 3300 5750 0    60   ~ 0
SCL
Text Label 3300 5850 0    60   ~ 0
SDA
Text Label 3150 5950 0    60   ~ 0
Button1
Text Label 3150 6050 0    60   ~ 0
Button2
Text Label 6150 4950 0    60   ~ 0
RefX2
Text Label 6150 4850 0    60   ~ 0
RefY2
Text Label 6150 4750 0    60   ~ 0
RefZ2
Text Label 6150 5550 0    60   ~ 0
CS_Ext1
Text Label 6150 5650 0    60   ~ 0
CS_Ext2
Text Label 6150 5750 0    60   ~ 0
CS_Ext3
Wire Wire Line
	4500 2250 4900 2250
Wire Wire Line
	4900 2250 4900 2350
Wire Wire Line
	4600 2200 4600 2350
Connection ~ 4600 2250
Wire Wire Line
	3450 5350 2950 5350
Wire Wire Line
	2950 5450 3450 5450
Wire Wire Line
	3450 5550 2950 5550
Wire Wire Line
	3450 5650 2950 5650
Wire Wire Line
	6450 5950 6050 5950
Wire Wire Line
	6450 4250 6050 4250
Wire Wire Line
	6050 2850 6500 2850
Wire Wire Line
	6050 2950 6500 2950
Wire Wire Line
	6050 3250 6500 3250
Wire Wire Line
	6050 3350 6500 3350
Wire Wire Line
	2400 6650 1950 6650
Wire Wire Line
	1950 6650 1950 6600
Wire Wire Line
	2400 6650 2400 6750
Connection ~ 2400 6650
Wire Wire Line
	3450 5950 1950 5950
Wire Wire Line
	1950 5950 1950 6000
Wire Wire Line
	2400 6050 3450 6050
Wire Wire Line
	1350 5850 3450 5850
Wire Wire Line
	1350 5750 3450 5750
Wire Wire Line
	1350 5650 1400 5650
Wire Wire Line
	1400 5650 1400 5550
Wire Wire Line
	1350 5950 1400 5950
Wire Wire Line
	1400 5950 1400 6100
Wire Wire Line
	10150 3100 10300 3100
Wire Wire Line
	10300 3100 10300 5250
Wire Wire Line
	10300 5250 7000 5250
Wire Wire Line
	7000 5250 7000 4750
Wire Wire Line
	7000 4750 6050 4750
Wire Wire Line
	10150 2600 10400 2600
Wire Wire Line
	10400 2600 10400 5350
Wire Wire Line
	10400 5350 6900 5350
Wire Wire Line
	6900 5350 6900 4850
Wire Wire Line
	6900 4850 6050 4850
Wire Wire Line
	10150 2100 10500 2100
Wire Wire Line
	10500 2100 10500 5450
Wire Wire Line
	10500 5450 6800 5450
Wire Wire Line
	6800 5450 6800 4950
Wire Wire Line
	6800 4950 6050 4950
Wire Wire Line
	8750 2000 8950 2000
Wire Wire Line
	8750 2200 8950 2200
Wire Wire Line
	8750 2500 8950 2500
Wire Wire Line
	8750 2700 8950 2700
Wire Wire Line
	8750 3000 8950 3000
Wire Wire Line
	8750 3200 8950 3200
Wire Wire Line
	9350 3400 9350 3300
Wire Wire Line
	9350 1750 9350 1900
Wire Wire Line
	6050 2650 6500 2650
Wire Wire Line
	6500 2750 6050 2750
Wire Wire Line
	6050 3050 6500 3050
Wire Wire Line
	6500 3150 6050 3150
Wire Wire Line
	6050 5850 6450 5850
Wire Wire Line
	6450 6050 6050 6050
Wire Wire Line
	1700 4250 3450 4250
Wire Wire Line
	2950 3850 3450 3850
Wire Wire Line
	6050 4650 6450 4650
Wire Wire Line
	6450 4550 6050 4550
Wire Wire Line
	6050 4450 6450 4450
Wire Wire Line
	1700 5650 1700 5750
Connection ~ 1700 5750
Wire Wire Line
	1900 5650 1900 5850
Connection ~ 1900 5850
Wire Wire Line
	1700 5350 1700 5300
Wire Wire Line
	1700 5300 1900 5300
Wire Wire Line
	1900 5300 1900 5350
Connection ~ 1800 5300
Wire Wire Line
	3450 3250 3300 3250
Wire Wire Line
	3300 3250 3300 3300
Wire Wire Line
	3300 3650 3300 3600
Wire Wire Line
	3200 750  3200 950 
Wire Wire Line
	3200 1250 3200 1450
Wire Wire Line
	2900 950  2900 900 
Wire Wire Line
	2900 900  3800 900 
Connection ~ 3200 900 
Wire Wire Line
	3500 900  3500 950 
Wire Wire Line
	2900 1250 2900 1300
Wire Wire Line
	2900 1300 3800 1300
Connection ~ 3200 1300
Wire Wire Line
	3500 1300 3500 1250
Wire Wire Line
	2950 4950 3450 4950
Wire Wire Line
	6050 5550 9200 5550
Wire Wire Line
	6050 5650 9300 5650
Wire Wire Line
	6050 5750 9400 5750
Wire Wire Line
	6050 3550 6500 3550
Wire Wire Line
	2150 5150 3450 5150
Wire Wire Line
	2150 5050 3450 5050
Wire Wire Line
	2300 5200 2300 5050
Connection ~ 2300 5050
Wire Wire Line
	2500 5200 2500 5150
Connection ~ 2500 5150
Wire Wire Line
	2300 5500 2300 5550
Wire Wire Line
	2300 5550 2500 5550
Wire Wire Line
	2400 5550 2400 5600
Wire Wire Line
	2500 5550 2500 5500
Connection ~ 2400 5550
Wire Wire Line
	2950 4850 3450 4850
Wire Wire Line
	2250 2950 2250 2650
Wire Wire Line
	2750 2950 3450 2950
Wire Wire Line
	2450 2950 2250 2950
Connection ~ 2900 2950
Connection ~ 2250 2950
Wire Wire Line
	2250 3250 2900 3250
Wire Wire Line
	2600 3250 2600 3300
Connection ~ 2600 3250
Wire Wire Line
	2950 4750 3450 4750
Wire Wire Line
	2950 4650 3450 4650
Wire Wire Line
	3800 900  3800 950 
Connection ~ 3500 900 
Wire Wire Line
	3800 1300 3800 1250
Connection ~ 3500 1300
Wire Wire Line
	2950 4550 3450 4550
Wire Wire Line
	3450 4450 2950 4450
Wire Wire Line
	3450 4150 1450 4150
Wire Wire Line
	1450 4150 1450 4200
Wire Wire Line
	3450 4050 1100 4050
Wire Wire Line
	1100 4050 1100 4200
Wire Wire Line
	1100 4600 1100 4700
Wire Wire Line
	1450 4600 1450 4700
Wire Wire Line
	1100 5000 1100 5100
Wire Wire Line
	1100 5100 1450 5100
Wire Wire Line
	1250 5100 1250 5150
Wire Wire Line
	1450 5100 1450 5000
Connection ~ 1250 5100
Wire Wire Line
	1900 4250 1900 3950
Connection ~ 2100 4250
Wire Wire Line
	1700 4250 1700 3900
Wire Wire Line
	1900 3600 1900 3650
Wire Wire Line
	1700 3600 1900 3600
Wire Wire Line
	1800 3600 1800 3550
Wire Wire Line
	1700 3700 1700 3600
Connection ~ 1800 3600
Wire Wire Line
	4750 6350 4750 6550
Wire Wire Line
	4650 6350 4650 6450
Wire Wire Line
	4650 6450 4850 6450
Connection ~ 4750 6450
Wire Wire Line
	4850 6450 4850 6350
Wire Wire Line
	4500 2350 4500 2250
Wire Wire Line
	2250 2650 3450 2650
Wire Wire Line
	7900 4500 7950 4500
Wire Wire Line
	7950 4500 7950 4600
Wire Wire Line
	9400 5750 9400 4700
Wire Wire Line
	9400 4700 9550 4700
Wire Wire Line
	9550 4600 9300 4600
Wire Wire Line
	9300 4600 9300 5650
Wire Wire Line
	9200 5550 9200 4500
Wire Wire Line
	9200 4500 9550 4500
Wire Wire Line
	7600 4300 7500 4300
Wire Wire Line
	7500 4300 7500 3850
Connection ~ 7500 3850
Wire Wire Line
	7600 4400 7400 4400
Wire Wire Line
	7400 4400 7400 3650
Connection ~ 7400 3650
Wire Wire Line
	7900 4400 8050 4400
Wire Wire Line
	8050 4400 8050 3750
Connection ~ 8050 3750
Wire Wire Line
	7200 4500 7600 4500
Wire Wire Line
	7900 4300 7950 4300
Wire Wire Line
	7950 4300 7950 4250
Wire Wire Line
	9550 4200 9400 4200
Wire Wire Line
	9400 4200 9400 3850
Connection ~ 9400 3850
Wire Wire Line
	9550 4300 9300 4300
Wire Wire Line
	9300 4300 9300 3750
Connection ~ 9300 3750
Wire Wire Line
	9550 4400 9200 4400
Wire Wire Line
	9200 4400 9200 3650
Connection ~ 9200 3650
Wire Wire Line
	9550 4800 9500 4800
Wire Wire Line
	9500 4800 9500 5000
Wire Wire Line
	9550 4100 9500 4100
Wire Wire Line
	9500 4100 9500 4000
Wire Wire Line
	2100 4250 2100 2000
Wire Wire Line
	2100 2000 7200 2000
Wire Wire Line
	7200 2000 7200 4500
Connection ~ 1900 4250
Wire Wire Line
	6050 3850 9850 3850
Wire Wire Line
	6050 3750 9850 3750
Wire Wire Line
	6050 3650 9850 3650
$EndSCHEMATC
