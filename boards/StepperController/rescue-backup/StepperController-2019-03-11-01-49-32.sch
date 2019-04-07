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
Sheet 1 8
Title "CNC Controller"
Date "2015-07-29"
Rev "2"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 "CC BY-NC-SA 4.0"
Comment2 "Licensed under Creative Commons"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2350 700  1150 1500
U 553D74DB
F0 "PowerSupply" 60
F1 "PowerSupply.sch" 60
F2 "Sup_30V" O R 3500 1450 60 
F3 "T_VREG" O R 3500 1800 60 
F4 "V__SUP" O R 3500 1700 60 
$EndSheet
$Sheet
S 5000 3250 1700 2650
U 553D74E1
F0 "Controller" 60
F1 "Controller.sch" 60
F2 "RXD" I L 5000 5500 60 
F3 "TXD" O L 5000 5600 60 
F4 "RTS" O L 5000 5700 60 
F5 "CTS" O L 5000 5800 60 
F6 "SCK" O R 6700 3850 60 
F7 "SDO" I R 6700 4050 60 
F8 "SDI" O R 6700 3950 60 
F9 "Step_X" O R 6700 5000 60 
F10 "Dir_X" O R 6700 5100 60 
F11 "Step_Y" O R 6700 5200 60 
F12 "Dir_Y" O R 6700 5300 60 
F13 "Step_Z" O R 6700 5400 60 
F14 "Dir_Z" O R 6700 5500 60 
F15 "Ref_X1" I L 5000 3600 60 
F16 "Ref_X2" I L 5000 3700 60 
F17 "Ref_Y1" I L 5000 3800 60 
F18 "Ref_Y2" I L 5000 3900 60 
F19 "Ref_Z1" I L 5000 4000 60 
F20 "Ref_Z2" I L 5000 4100 60 
F21 "Stall_X" I R 6700 5600 60 
F22 "Stall_Y" I R 6700 5700 60 
F23 "Stall_Z" I R 6700 5800 60 
F24 "Enable" O R 6700 4850 60 
F25 "CS_X" O R 6700 4150 60 
F26 "CS_Y" O R 6700 4250 60 
F27 "CS_Z" O R 6700 4350 60 
F28 "Rel_1" O L 5000 5100 60 
F29 "Rel_2" O L 5000 5200 60 
F30 "Emergency_Off" I L 5000 4700 60 
F31 "Spindle_PWM" O L 5000 4500 60 
F32 "CS_Display" O R 6700 4450 60 
F33 "Ref_Tool" I L 5000 4200 60 
F34 "Spindle_On" O L 5000 4400 60 
F35 "Cover" I L 5000 3500 60 
F36 "Ext1" B L 5000 5300 60 
F37 "Ext2" B L 5000 5400 60 
F38 "V_SUP" I L 5000 3300 60 
F39 "T_REG" I L 5000 3400 60 
F40 "JogA" I R 6700 3350 60 
F41 "JogB" I R 6700 3450 60 
F42 "JogX" I R 6700 3550 60 
F43 "JogY" I R 6700 3650 60 
F44 "JogZ" I R 6700 3750 60 
F45 "Spindle_Dir" O L 5000 4600 60 
F46 "Cool_Mist" O L 5000 4900 60 
F47 "Cool_Flood" O L 5000 4800 60 
F48 "FeedHold" I R 6700 4550 60 
F49 "CycleStart" I R 6700 4650 60 
F50 "JogC" I R 6700 4750 60 
$EndSheet
$Sheet
S 2350 3250 1400 2650
U 553D74E4
F0 "Interface" 60
F1 "Interface.sch" 60
F2 "TXD" I R 3750 5600 60 
F3 "RXD" O R 3750 5500 60 
F4 "RTS" I R 3750 5700 60 
F5 "CTS" I R 3750 5800 60 
F6 "Rel_1" I R 3750 5100 60 
F7 "Rel_2" I R 3750 5200 60 
F8 "Ref_X1" O R 3750 3600 60 
F9 "Ref_X2" O R 3750 3700 60 
F10 "Ref_Y1" O R 3750 3800 60 
F11 "Ref_Y2" O R 3750 3900 60 
F12 "Ref_Z1" O R 3750 4000 60 
F13 "Ref_Z2" O R 3750 4100 60 
F14 "Ref_T1" O R 3750 4200 60 
F15 "SDI" O L 2350 3700 60 
F16 "SCK" O L 2350 3600 60 
F17 "CS_Disp" O L 2350 3900 60 
F18 "SDO" I L 2350 3800 60 
F19 "Spindle_PWM" I R 3750 4500 60 
F20 "Emergency_Off" O R 3750 4700 60 
F21 "Spindle_Enable" I R 3750 4400 60 
F22 "Cover" O R 3750 3500 60 
F23 "Ext1" B R 3750 5300 60 
F24 "Ext2" B R 3750 5400 60 
F25 "JogA" I L 2350 4000 60 
F26 "JogB" I L 2350 4100 60 
F27 "JogX" I L 2350 4200 60 
F28 "JogY" I L 2350 4300 60 
F29 "JogZ" I L 2350 4400 60 
F30 "Spindle_Dir" I R 3750 4600 60 
F31 "Cool_Flood" I R 3750 4800 60 
F32 "Cool_Mist" I R 3750 4900 60 
F33 "FeedHold" O L 2350 4500 60 
F34 "CycleStart" O L 2350 4600 60 
F35 "JogC" O L 2350 4700 60 
$EndSheet
$Sheet
S 7750 4500 1250 1500
U 553D74DE
F0 "Driver" 60
F1 "Driver.sch" 60
F2 "Sup_30V" I L 7750 4750 60 
F3 "SCK" I R 9000 4850 60 
F4 "SDI" I R 9000 4950 60 
F5 "SDO" I R 9000 5050 60 
F6 "Enable" I L 7750 4850 60 
F7 "CS_X" I R 9000 5150 60 
F8 "CS_Y" I R 9000 5250 60 
F9 "CS_Z" I R 9000 5350 60 
F10 "Step_X" I L 7750 5000 60 
F11 "Dir_X" I L 7750 5100 60 
F12 "Stall_X" O L 7750 5600 60 
F13 "Step_Y" I L 7750 5200 60 
F14 "Dir_Y" I L 7750 5300 60 
F15 "Stall_Y" O L 7750 5700 60 
F16 "Step_Z" I L 7750 5400 60 
F17 "Dir_Z" I L 7750 5500 60 
F18 "Stall_Z" O L 7750 5800 60 
F19 "Emergency_Off" I R 9000 5800 60 
F20 "Cover" I R 9000 5650 60 
$EndSheet
Wire Wire Line
	3750 3600 5000 3600
Wire Wire Line
	3750 3700 5000 3700
Wire Wire Line
	5000 3800 3750 3800
Wire Wire Line
	3750 3900 5000 3900
Wire Wire Line
	5000 4000 3750 4000
Wire Wire Line
	3750 4100 5000 4100
Wire Wire Line
	3750 4200 5000 4200
Wire Wire Line
	5000 4500 3750 4500
Wire Wire Line
	3750 4700 5000 4700
Wire Wire Line
	5000 5100 3750 5100
Wire Wire Line
	5000 5200 3750 5200
Wire Wire Line
	3750 5500 5000 5500
Wire Wire Line
	3750 5600 5000 5600
Wire Wire Line
	3750 5700 5000 5700
Wire Wire Line
	3750 5800 5000 5800
Wire Wire Line
	6700 4850 7750 4850
Wire Wire Line
	6700 5000 7750 5000
Wire Wire Line
	7750 5100 6700 5100
Wire Wire Line
	6700 5200 7750 5200
Wire Wire Line
	6700 5300 7750 5300
Wire Wire Line
	6700 5400 7750 5400
Wire Wire Line
	7750 5500 6700 5500
Wire Wire Line
	6700 5600 7750 5600
Wire Wire Line
	6700 5700 7750 5700
Wire Wire Line
	6700 5800 7750 5800
Wire Wire Line
	3500 1450 7250 1450
Wire Wire Line
	7250 1450 7250 4750
Wire Wire Line
	7250 4750 7750 4750
Wire Wire Line
	6700 3850 9350 3850
Wire Wire Line
	9350 3850 9350 4850
Wire Wire Line
	9350 4850 9000 4850
Wire Wire Line
	6700 3950 9300 3950
Wire Wire Line
	9300 3950 9300 4950
Wire Wire Line
	9300 4950 9000 4950
Wire Wire Line
	6700 4050 9250 4050
Wire Wire Line
	9250 4050 9250 5050
Wire Wire Line
	9250 5050 9000 5050
Wire Wire Line
	6700 4150 9200 4150
Wire Wire Line
	9200 4150 9200 5150
Wire Wire Line
	9200 5150 9000 5150
Wire Wire Line
	6700 4250 9150 4250
Wire Wire Line
	9150 4250 9150 5250
Wire Wire Line
	9150 5250 9000 5250
Wire Wire Line
	6700 4350 9100 4350
Wire Wire Line
	9100 4350 9100 5350
Wire Wire Line
	9100 5350 9000 5350
Wire Wire Line
	2350 3600 2100 3600
Wire Wire Line
	2100 3600 2100 2900
Wire Wire Line
	2100 2900 7350 2900
Wire Wire Line
	7350 2900 7350 3850
Connection ~ 7350 3850
Wire Wire Line
	2350 3700 2000 3700
Wire Wire Line
	2000 3700 2000 2950
Wire Wire Line
	2000 2950 7450 2950
Wire Wire Line
	7450 2950 7450 3950
Connection ~ 7450 3950
Wire Wire Line
	2350 3800 1950 3800
Wire Wire Line
	1950 3800 1950 3000
Wire Wire Line
	1950 3000 7550 3000
Wire Wire Line
	7550 3000 7550 4050
Connection ~ 7550 4050
Wire Wire Line
	2350 3900 1900 3900
Wire Wire Line
	1900 3900 1900 3050
Wire Wire Line
	1900 3050 7600 3050
Wire Wire Line
	7600 3050 7600 4450
Wire Wire Line
	7600 4450 6700 4450
Wire Wire Line
	9000 5800 9100 5800
Wire Wire Line
	9100 5800 9100 6250
Wire Wire Line
	9100 6250 4800 6250
Wire Wire Line
	4800 6250 4800 4700
Connection ~ 4800 4700
Wire Wire Line
	3750 4400 5000 4400
Wire Wire Line
	3750 3500 5000 3500
Wire Wire Line
	4550 3500 4550 6400
Wire Wire Line
	4550 6400 9200 6400
Wire Wire Line
	9200 6400 9200 5650
Wire Wire Line
	9200 5650 9000 5650
Connection ~ 4550 3500
Wire Wire Line
	3750 5300 5000 5300
Wire Wire Line
	5000 5400 3750 5400
Wire Wire Line
	3500 1800 4050 1800
Wire Wire Line
	4050 1800 4050 3400
Wire Wire Line
	4050 3400 5000 3400
Wire Wire Line
	3500 1700 4150 1700
Wire Wire Line
	4150 1700 4150 3300
Wire Wire Line
	4150 3300 5000 3300
Wire Wire Line
	2350 4000 1850 4000
Wire Wire Line
	1850 4000 1850 2850
Wire Wire Line
	1850 2850 6850 2850
Wire Wire Line
	6850 2850 6850 3350
Wire Wire Line
	6850 3350 6700 3350
Wire Wire Line
	6700 3450 6950 3450
Wire Wire Line
	6950 3450 6950 2750
Wire Wire Line
	6950 2750 1750 2750
Wire Wire Line
	1750 2750 1750 4100
Wire Wire Line
	1750 4100 2350 4100
Wire Wire Line
	2350 4200 1700 4200
Wire Wire Line
	1700 4200 1700 2650
Wire Wire Line
	1700 2650 7050 2650
Wire Wire Line
	7050 2650 7050 3550
Wire Wire Line
	7050 3550 6700 3550
Wire Wire Line
	6700 3650 7150 3650
Wire Wire Line
	7150 3650 7150 2600
Wire Wire Line
	7150 2600 1650 2600
Wire Wire Line
	1650 2600 1650 4300
Wire Wire Line
	1650 4300 2350 4300
Wire Wire Line
	6700 3750 7200 3750
Wire Wire Line
	7200 3750 7200 2550
Wire Wire Line
	7200 2550 1600 2550
Wire Wire Line
	1600 2550 1600 4400
Wire Wire Line
	1600 4400 2350 4400
Wire Wire Line
	3750 4600 5000 4600
Wire Wire Line
	5000 4800 3750 4800
Wire Wire Line
	5000 4900 3750 4900
Wire Wire Line
	2350 4500 1550 4500
Wire Wire Line
	1550 4500 1550 2500
Wire Wire Line
	1550 2500 7650 2500
Wire Wire Line
	7650 2500 7650 4550
Wire Wire Line
	7650 4550 6700 4550
Wire Wire Line
	6700 4650 7700 4650
Wire Wire Line
	7700 4650 7700 2450
Wire Wire Line
	7700 2450 1500 2450
Wire Wire Line
	1500 2450 1500 4600
Wire Wire Line
	1500 4600 2350 4600
Wire Wire Line
	2350 4700 1450 4700
Wire Wire Line
	1450 4700 1450 2400
Wire Wire Line
	1450 2400 7000 2400
Wire Wire Line
	7000 2400 7000 4750
Wire Wire Line
	7000 4750 6700 4750
Text Notes 3450 6100 0    60   Italic 12
RX und TX vertauscht!
$EndSCHEMATC
