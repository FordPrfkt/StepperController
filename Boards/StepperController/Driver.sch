EESchema Schematic File Version 2
LIBS:StepperController-rescue
LIBS:brooktre
LIBS:dc-dc
LIBS:elec-unifil
LIBS:ftdi
LIBS:graphic
LIBS:logo
LIBS:relays
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
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:ESD_Protection
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
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:StepperController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title "CNC Controller"
Date "2015-07-29"
Rev "1"
Comp "Daniel Walter"
Comment1 "fordprfkt@googlemail.com"
Comment2 "TMC260 + Atmega644"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5100 1300 1350 1300
U 554E7CC7
F0 "Driver_X" 60
F1 "Driver_X.sch" 60
F2 "Sup_36V" I L 5100 1450 60 
F3 "SCK" I L 5100 1900 60 
F4 "SDI" I L 5100 2000 60 
F5 "SDO" O L 5100 2100 60 
F6 "CS_X" I L 5100 2200 60 
F7 "TMC_Enable" I L 5100 1750 60 
F8 "Step_X" I R 6450 1450 60 
F9 "Dir_X" I R 6450 1600 60 
F10 "Stall_X" O R 6450 1750 60 
F11 "TMC_Clock" I L 5100 1600 60 
$EndSheet
$Sheet
S 5100 3400 1350 1300
U 554E7CCA
F0 "Driver_Y" 60
F1 "Driver_Y.sch" 60
F2 "Sup_36V" I L 5100 3550 60 
F3 "SCK" I L 5100 4000 60 
F4 "SDI" I L 5100 4100 60 
F5 "SDO" O L 5100 4200 60 
F6 "TMC_Enable" I L 5100 3850 60 
F7 "TMC_Clock" I L 5100 3700 60 
F8 "CS_Y" I L 5100 4300 60 
F9 "Step_Y" I R 6450 3550 60 
F10 "Dir_Y" I R 6450 3700 60 
F11 "Stall_Y" O R 6450 3850 60 
$EndSheet
$Sheet
S 5100 5400 1350 1300
U 554E7CCD
F0 "Driver_Z" 60
F1 "Driver_Z.sch" 60
F2 "Sup_36V" I L 5100 5550 60 
F3 "SCK" I L 5100 6000 60 
F4 "SDI" I L 5100 6100 60 
F5 "SDO" O L 5100 6200 60 
F6 "CS_Z" I L 5100 6300 60 
F7 "TMC_Enable" I L 5100 5850 60 
F8 "Step_Z" I R 6450 5550 60 
F9 "Dir_Z" I R 6450 5700 60 
F10 "Stall_Z" O R 6450 5850 60 
F11 "TMC_Clock" I L 5100 5700 60 
$EndSheet
Text HLabel 3650 1900 0    60   Input ~ 0
SCK
Text HLabel 3650 2000 0    60   Input ~ 0
SDI
Text HLabel 3650 2100 0    60   Input ~ 0
SDO
Text HLabel 3650 1450 0    60   Input ~ 0
Sup_36V
Text HLabel 1550 1750 0    60   Input ~ 0
Enable
Text HLabel 3650 2200 0    60   Input ~ 0
CS_X
Text HLabel 3650 4300 0    60   Input ~ 0
CS_Y
Text HLabel 3650 6300 0    60   Input ~ 0
CS_Z
Text HLabel 6900 1450 2    60   Input ~ 0
Step_X
Text HLabel 6900 1600 2    60   Input ~ 0
Dir_X
Text HLabel 6900 1750 2    60   Output ~ 0
Stall_X
Text HLabel 6850 3550 2    60   Input ~ 0
Step_Y
Text HLabel 6850 3700 2    60   Input ~ 0
Dir_Y
Text HLabel 6850 3850 2    60   Output ~ 0
Stall_Y
Text HLabel 6750 5550 2    60   Input ~ 0
Step_Z
Text HLabel 6750 5700 2    60   Input ~ 0
Dir_Z
Text HLabel 6750 5850 2    60   Output ~ 0
Stall_Z
Wire Wire Line
	3650 1600 5100 1600
Wire Wire Line
	3650 2000 5100 2000
Wire Wire Line
	3650 2100 5100 2100
Wire Wire Line
	1950 1750 5100 1750
Wire Wire Line
	3650 2200 5100 2200
Wire Wire Line
	4700 4000 5100 4000
Wire Wire Line
	4600 4100 5100 4100
Wire Wire Line
	4500 4200 5100 4200
Wire Wire Line
	3650 4300 5100 4300
Wire Wire Line
	4700 6000 5100 6000
Wire Wire Line
	4600 6100 5100 6100
Wire Wire Line
	4500 6200 5100 6200
Wire Wire Line
	3650 6300 5100 6300
Wire Wire Line
	6450 1450 6900 1450
Wire Wire Line
	6450 1600 6900 1600
Wire Wire Line
	6450 1750 6900 1750
Wire Wire Line
	6450 3550 6850 3550
Wire Wire Line
	6850 3700 6450 3700
Wire Wire Line
	6850 3850 6450 3850
Wire Wire Line
	6450 5550 6750 5550
Wire Wire Line
	6450 5700 6750 5700
Wire Wire Line
	6450 5850 6750 5850
Wire Wire Line
	3650 1900 5100 1900
Wire Wire Line
	3650 1450 5100 1450
Wire Wire Line
	5100 3550 5000 3550
Wire Wire Line
	5000 1450 5000 5550
Connection ~ 5000 1450
Wire Wire Line
	5000 5550 5100 5550
Connection ~ 5000 3550
Wire Wire Line
	5100 3700 4900 3700
Wire Wire Line
	4900 1600 4900 5700
Connection ~ 4900 1600
Wire Wire Line
	5100 3850 4800 3850
Wire Wire Line
	4800 1750 4800 5850
Connection ~ 4800 1750
Wire Wire Line
	4700 1900 4700 6000
Connection ~ 4700 1900
Wire Wire Line
	4600 2000 4600 6100
Connection ~ 4600 2000
Wire Wire Line
	4500 2100 4500 6200
Connection ~ 4500 2100
Wire Wire Line
	4900 5700 5100 5700
Connection ~ 4900 3700
Wire Wire Line
	4800 5850 5100 5850
Connection ~ 4800 3850
Connection ~ 4700 4000
Connection ~ 4600 4100
Connection ~ 4500 4200
Text HLabel 1550 2100 0    60   Input ~ 0
Emergency_Off
$Comp
L +5V #PWR054
U 1 1 555721A9
P 2700 1250
F 0 "#PWR054" H 2700 1340 20  0001 C CNN
F 1 "+5V" H 2700 1340 30  0000 C CNN
F 2 "" H 2700 1250 60  0000 C CNN
F 3 "" H 2700 1250 60  0000 C CNN
	1    2700 1250
	1    0    0    -1  
$EndComp
Text HLabel 3650 1600 0    60   Input ~ 0
TMC_Clock
$Comp
L D D24
U 1 1 567DBE5B
P 1800 1750
F 0 "D24" H 1800 1850 50  0000 C CNN
F 1 "D" H 1800 1650 50  0000 C CNN
F 2 "" H 1800 1750 50  0001 C CNN
F 3 "" H 1800 1750 50  0000 C CNN
	1    1800 1750
	1    0    0    -1  
$EndComp
$Comp
L D D25
U 1 1 567DBF65
P 1800 2100
F 0 "D25" H 1800 2200 50  0000 C CNN
F 1 "D" H 1800 2000 50  0000 C CNN
F 2 "" H 1800 2100 50  0001 C CNN
F 3 "" H 1800 2100 50  0000 C CNN
	1    1800 2100
	1    0    0    -1  
$EndComp
$Comp
L R R55
U 1 1 567DC96F
P 2700 1500
F 0 "R55" V 2780 1500 50  0000 C CNN
F 1 "10k" V 2700 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2630 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0000 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
Connection ~ 2700 1750
Wire Wire Line
	2700 2100 1950 2100
Wire Wire Line
	2700 1350 2700 1250
Wire Wire Line
	1650 1750 1550 1750
Wire Wire Line
	1550 2100 1650 2100
Wire Wire Line
	2700 1650 2700 2100
$EndSCHEMATC
