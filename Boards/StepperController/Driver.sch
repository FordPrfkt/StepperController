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
Sheet 5 8
Title "CNC Controller"
Date "2015-07-29"
Rev "1"
Comp ""
Comment1 "3 Kanal Schrittmotorcontroller 36V / 2A"
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
Text HLabel 1550 1650 0    60   Input ~ 0
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
	2950 1750 5100 1750
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
Wire Wire Line
	1750 1650 1550 1650
Text HLabel 1550 1850 0    60   Input ~ 0
Emergency_Off
Wire Wire Line
	1550 1850 1750 1850
$Comp
L C C14
U 1 1 55571EF9
P 900 1350
F 0 "C14" H 925 1450 50  0000 L CNN
F 1 "100nF" H 925 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 938 1200 30  0001 C CNN
F 3 "" H 900 1350 60  0000 C CNN
	1    900  1350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR49
U 1 1 555720CF
P 900 1200
F 0 "#PWR49" H 900 1290 20  0001 C CNN
F 1 "+5V" H 900 1290 30  0000 C CNN
F 2 "" H 900 1200 60  0000 C CNN
F 3 "" H 900 1200 60  0000 C CNN
	1    900  1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR51
U 1 1 5557213C
P 900 1500
F 0 "#PWR51" H 900 1500 30  0001 C CNN
F 1 "GND" H 900 1430 30  0001 C CNN
F 2 "" H 900 1500 60  0000 C CNN
F 3 "" H 900 1500 60  0000 C CNN
	1    900  1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR50
U 1 1 555721A9
P 2150 1400
F 0 "#PWR50" H 2150 1490 20  0001 C CNN
F 1 "+5V" H 2150 1490 30  0000 C CNN
F 2 "" H 2150 1400 60  0000 C CNN
F 3 "" H 2150 1400 60  0000 C CNN
	1    2150 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR52
U 1 1 55572216
P 2150 2100
F 0 "#PWR52" H 2150 2100 30  0001 C CNN
F 1 "GND" H 2150 2030 30  0001 C CNN
F 2 "" H 2150 2100 60  0000 C CNN
F 3 "" H 2150 2100 60  0000 C CNN
	1    2150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2100 2150 1950
Wire Wire Line
	2150 1550 2150 1400
$Comp
L 74LS08 U4
U 1 1 555D1147
P 2350 1750
F 0 "U4" H 2350 1800 60  0000 C CNN
F 1 "74LS08" H 2350 1700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2350 1750 60  0001 C CNN
F 3 "" H 2350 1750 60  0000 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
Text HLabel 3650 1600 0    60   Input ~ 0
TMC_Clock
$EndSCHEMATC
