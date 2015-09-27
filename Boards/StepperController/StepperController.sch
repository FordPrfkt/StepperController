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
Sheet 1 8
Title "CNC Controller"
Date "2015-07-29"
Rev "1"
Comp ""
Comment1 "Hauptschaltplan"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2350 950  1150 1500
U 553D74DB
F0 "PowerSupply" 60
F1 "PowerSupply.sch" 60
F2 "Sup_36V" O R 3500 1700 60 
$EndSheet
$Sheet
S 5000 2950 1700 2650
U 553D74E1
F0 "Controller" 60
F1 "Controller.sch" 60
F2 "RXD" I L 5000 5200 60 
F3 "TXD" O L 5000 5300 60 
F4 "RTS" O L 5000 5400 60 
F5 "CTS" O L 5000 5500 60 
F6 "SCK" O R 6700 3450 60 
F7 "SDO" I R 6700 3650 60 
F8 "SDI" O R 6700 3550 60 
F9 "Step_X" O R 6700 4700 60 
F10 "Dir_X" O R 6700 4800 60 
F11 "Step_Y" O R 6700 4900 60 
F12 "Dir_Y" O R 6700 5000 60 
F13 "Step_Z" O R 6700 5100 60 
F14 "Dir_Z" O R 6700 5200 60 
F15 "Ref_X1" I L 5000 3300 60 
F16 "Ref_X2" I L 5000 3400 60 
F17 "Ref_Y1" I L 5000 3500 60 
F18 "Ref_Y2" I L 5000 3600 60 
F19 "Ref_Z1" I L 5000 3700 60 
F20 "Ref_Z2" I L 5000 3800 60 
F21 "Stall_X" I R 6700 5300 60 
F22 "Stall_Y" I R 6700 5400 60 
F23 "Stall_Z" I R 6700 5500 60 
F24 "Enable" O R 6700 4400 60 
F25 "CS_X" O R 6700 3750 60 
F26 "CS_Y" O R 6700 3850 60 
F27 "CS_Z" O R 6700 3950 60 
F28 "Rel_1" O L 5000 4600 60 
F29 "Rel_2" O L 5000 4700 60 
F30 "Emergency_Off" I L 5000 4400 60 
F31 "Spindle_PWM" O L 5000 4250 60 
F32 "CS_Keypad" O R 6700 4150 60 
F33 "CS_Display" O R 6700 4050 60 
F34 "Keypad_Intr" I L 5000 5050 60 
F35 "Ref_Tool" I L 5000 3900 60 
F36 "Spindle_On" O L 5000 4100 60 
F37 "TMC_Clock" O R 6700 4550 60 
$EndSheet
$Sheet
S 2350 2950 1400 2650
U 553D74E4
F0 "Interface" 60
F1 "Interface.sch" 60
F2 "TXD" I R 3750 5300 60 
F3 "RXD" O R 3750 5200 60 
F4 "RTS" I R 3750 5400 60 
F5 "CTS" I R 3750 5500 60 
F6 "Rel_1" I R 3750 4600 60 
F7 "Rel_2" I R 3750 4700 60 
F8 "Ref_X1" O R 3750 3300 60 
F9 "Ref_X2" O R 3750 3400 60 
F10 "Ref_Y1" O R 3750 3500 60 
F11 "Ref_Y2" O R 3750 3600 60 
F12 "Ref_Z1" O R 3750 3700 60 
F13 "Ref_Z2" O R 3750 3800 60 
F14 "Ref_T1" O R 3750 3900 60 
F15 "SDI" O L 2350 3400 60 
F16 "SCK" O L 2350 3300 60 
F17 "CS_Disp" O L 2350 3600 60 
F18 "SDO" I L 2350 3500 60 
F19 "CS_Keypad" O L 2350 3700 60 
F20 "Keypad_Intr" O R 3750 5050 60 
F21 "Spindle_PWM" I R 3750 4250 60 
F22 "Emergency_Off" O R 3750 4400 60 
F23 "Spindle_Enable" I R 3750 4100 60 
$EndSheet
$Sheet
S 7750 4200 1250 1500
U 553D74DE
F0 "Driver" 60
F1 "Driver.sch" 60
F2 "Sup_36V" I L 7750 4300 60 
F3 "SCK" I R 9000 4550 60 
F4 "SDI" I R 9000 4650 60 
F5 "SDO" I R 9000 4750 60 
F6 "Enable" I L 7750 4400 60 
F7 "CS_X" I R 9000 4850 60 
F8 "CS_Y" I R 9000 4950 60 
F9 "CS_Z" I R 9000 5050 60 
F10 "Step_X" I L 7750 4700 60 
F11 "Dir_X" I L 7750 4800 60 
F12 "Stall_X" O L 7750 5300 60 
F13 "Step_Y" I L 7750 4900 60 
F14 "Dir_Y" I L 7750 5000 60 
F15 "Stall_Y" O L 7750 5400 60 
F16 "Step_Z" I L 7750 5100 60 
F17 "Dir_Z" I L 7750 5200 60 
F18 "Stall_Z" O L 7750 5500 60 
F19 "Emergency_Off" I R 9000 5500 60 
F20 "TMC_Clock" I L 7750 4550 60 
$EndSheet
Wire Wire Line
	3750 3300 5000 3300
Wire Wire Line
	3750 3400 5000 3400
Wire Wire Line
	5000 3500 3750 3500
Wire Wire Line
	3750 3600 5000 3600
Wire Wire Line
	5000 3700 3750 3700
Wire Wire Line
	3750 3800 5000 3800
Wire Wire Line
	3750 3900 5000 3900
Wire Wire Line
	5000 4250 3750 4250
Wire Wire Line
	3750 4400 5000 4400
Wire Wire Line
	5000 4600 3750 4600
Wire Wire Line
	5000 4700 3750 4700
Wire Wire Line
	3750 5050 5000 5050
Wire Wire Line
	3750 5200 5000 5200
Wire Wire Line
	3750 5300 5000 5300
Wire Wire Line
	3750 5400 5000 5400
Wire Wire Line
	3750 5500 5000 5500
Wire Wire Line
	6700 4400 7750 4400
Wire Wire Line
	6700 4700 7750 4700
Wire Wire Line
	7750 4800 6700 4800
Wire Wire Line
	6700 4900 7750 4900
Wire Wire Line
	6700 5000 7750 5000
Wire Wire Line
	6700 5100 7750 5100
Wire Wire Line
	7750 5200 6700 5200
Wire Wire Line
	6700 5300 7750 5300
Wire Wire Line
	6700 5400 7750 5400
Wire Wire Line
	6700 5500 7750 5500
Wire Wire Line
	3500 1700 7100 1700
Wire Wire Line
	7100 1700 7100 4300
Wire Wire Line
	7100 4300 7750 4300
Wire Wire Line
	6700 3450 9350 3450
Wire Wire Line
	9350 3450 9350 4550
Wire Wire Line
	9350 4550 9000 4550
Wire Wire Line
	6700 3550 9300 3550
Wire Wire Line
	9300 3550 9300 4650
Wire Wire Line
	9300 4650 9000 4650
Wire Wire Line
	6700 3650 9250 3650
Wire Wire Line
	9250 3650 9250 4750
Wire Wire Line
	9250 4750 9000 4750
Wire Wire Line
	6700 3750 9200 3750
Wire Wire Line
	9200 3750 9200 4850
Wire Wire Line
	9200 4850 9000 4850
Wire Wire Line
	6700 3850 9150 3850
Wire Wire Line
	9150 3850 9150 4950
Wire Wire Line
	9150 4950 9000 4950
Wire Wire Line
	6700 3950 9100 3950
Wire Wire Line
	9100 3950 9100 5050
Wire Wire Line
	9100 5050 9000 5050
Wire Wire Line
	2350 3300 2100 3300
Wire Wire Line
	2100 3300 2100 2600
Wire Wire Line
	2100 2600 7350 2600
Wire Wire Line
	7350 2600 7350 3450
Connection ~ 7350 3450
Wire Wire Line
	2350 3400 2000 3400
Wire Wire Line
	2000 3400 2000 2650
Wire Wire Line
	2000 2650 7450 2650
Wire Wire Line
	7450 2650 7450 3550
Connection ~ 7450 3550
Wire Wire Line
	2350 3500 1950 3500
Wire Wire Line
	1950 3500 1950 2700
Wire Wire Line
	1950 2700 7550 2700
Wire Wire Line
	7550 2700 7550 3650
Connection ~ 7550 3650
Wire Wire Line
	2350 3600 1900 3600
Wire Wire Line
	1900 3600 1900 2750
Wire Wire Line
	1900 2750 7600 2750
Wire Wire Line
	7600 2750 7600 4050
Wire Wire Line
	7600 4050 6700 4050
Wire Wire Line
	2350 3700 1850 3700
Wire Wire Line
	1850 3700 1850 2800
Wire Wire Line
	1850 2800 7650 2800
Wire Wire Line
	7650 2800 7650 4150
Wire Wire Line
	7650 4150 6700 4150
Wire Wire Line
	9000 5500 9100 5500
Wire Wire Line
	9100 5500 9100 5950
Wire Wire Line
	9100 5950 4800 5950
Wire Wire Line
	4800 5950 4800 4400
Connection ~ 4800 4400
Wire Wire Line
	3750 4100 5000 4100
Wire Wire Line
	6700 4550 7750 4550
$EndSCHEMATC
