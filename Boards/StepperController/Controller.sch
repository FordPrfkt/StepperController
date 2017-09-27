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
Text HLabel 3600 5350 0    60   Input ~ 0
RXD
Text HLabel 3600 5450 0    60   Output ~ 0
TXD
Text HLabel 3600 5550 0    60   Output ~ 0
RTS
Text HLabel 3600 5650 0    60   Output ~ 0
CTS
$Comp
L GND-RESCUE-StepperController #PWR020
U 1 1 554E928E
P 5150 6550
F 0 "#PWR020" H 5150 6550 30  0001 C CNN
F 1 "GND" H 5150 6480 30  0001 C CNN
F 2 "" H 5150 6550 60  0000 C CNN
F 3 "" H 5150 6550 60  0000 C CNN
	1    5150 6550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 554E92C4
P 5000 2200
F 0 "#PWR021" H 5000 2290 20  0001 C CNN
F 1 "+5V" H 5000 2290 30  0000 C CNN
F 2 "" H 5000 2200 60  0000 C CNN
F 3 "" H 5000 2200 60  0000 C CNN
	1    5000 2200
	1    0    0    -1  
$EndComp
Text HLabel 10250 3650 2    60   Output ~ 0
SCK
Text HLabel 10250 3850 2    60   Input ~ 0
SDO
Text HLabel 10250 3750 2    60   Output ~ 0
SDI
$Comp
L C C4
U 1 1 554E9371
P 3300 1100
F 0 "C4" H 3325 1200 50  0000 L CNN
F 1 "100nF" H 3325 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3338 950 30  0001 C CNN
F 3 "" H 3300 1100 60  0000 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 554E9462
P 3600 1100
F 0 "C5" H 3625 1200 50  0000 L CNN
F 1 "100nF" H 3625 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 950 30  0001 C CNN
F 3 "" H 3600 1100 60  0000 C CNN
	1    3600 1100
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 554E949F
P 3900 1100
F 0 "C6" H 3925 1200 50  0000 L CNN
F 1 "100nF" H 3925 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3938 950 30  0001 C CNN
F 3 "" H 3900 1100 60  0000 C CNN
	1    3900 1100
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 554E94E9
P 3450 3650
F 0 "C7" H 3475 3750 50  0000 L CNN
F 1 "100nF" H 3475 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3488 3500 30  0001 C CNN
F 3 "" H 3450 3650 60  0000 C CNN
	1    3450 3650
	0    1    -1   0   
$EndComp
$Comp
L +5V #PWR022
U 1 1 554E952C
P 3600 750
F 0 "#PWR022" H 3600 840 20  0001 C CNN
F 1 "+5V" H 3600 840 30  0000 C CNN
F 2 "" H 3600 750 60  0000 C CNN
F 3 "" H 3600 750 60  0000 C CNN
	1    3600 750 
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR023
U 1 1 554E953F
P 3600 1450
F 0 "#PWR023" H 3600 1450 30  0001 C CNN
F 1 "GND" H 3600 1380 30  0001 C CNN
F 2 "" H 3600 1450 60  0000 C CNN
F 3 "" H 3600 1450 60  0000 C CNN
	1    3600 1450
	1    0    0    -1  
$EndComp
Text HLabel 6900 3150 2    60   Output ~ 0
Step_X
Text HLabel 6900 3050 2    60   Output ~ 0
Dir_X
Text HLabel 6900 2950 2    60   Output ~ 0
Step_Y
Text HLabel 6900 2850 2    60   Output ~ 0
Dir_Y
Text HLabel 6900 2750 2    60   Output ~ 0
Step_Z
Text HLabel 6900 2650 2    60   Output ~ 0
Dir_Z
Text HLabel 7600 1450 0    60   Input ~ 0
Ref_X1
Text HLabel 7600 1300 0    60   Input ~ 0
Ref_X2
Text HLabel 7600 1950 0    60   Input ~ 0
Ref_Y1
Text HLabel 7600 1800 0    60   Input ~ 0
Ref_Y2
Text HLabel 7600 2450 0    60   Input ~ 0
Ref_Z1
Text HLabel 7600 2300 0    60   Input ~ 0
Ref_Z2
Text HLabel 7600 1150 0    60   Input ~ 0
Stall_X
Text HLabel 7600 1650 0    60   Input ~ 0
Stall_Y
Text HLabel 7600 2150 0    60   Input ~ 0
Stall_Z
Text HLabel 6850 4950 2    60   Output ~ 0
Enable
Text HLabel 6850 6050 2    60   Output ~ 0
CS_X
Text HLabel 6850 5950 2    60   Output ~ 0
CS_Y
Text HLabel 6850 5850 2    60   Output ~ 0
CS_Z
Text HLabel 6900 3250 2    60   Output ~ 0
Rel_1
Text HLabel 6900 3350 2    60   Output ~ 0
Rel_2
Text HLabel 6850 5650 2    60   Input ~ 0
Emergency_Off
Text HLabel 6850 4250 2    60   Output ~ 0
Spindle_PWM
Text HLabel 6850 3950 2    60   Output ~ 0
CS_Display
Text HLabel 6850 5050 2    60   Input ~ 0
Ref_Tool
$Comp
L GND-RESCUE-StepperController #PWR024
U 1 1 5554FF77
P 2850 6150
F 0 "#PWR024" H 2850 6150 30  0001 C CNN
F 1 "GND" H 2850 6080 30  0001 C CNN
F 2 "" H 2850 6150 60  0000 C CNN
F 3 "" H 2850 6150 60  0000 C CNN
	1    2850 6150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5555210D
P 1600 6350
F 0 "R4" V 1680 6350 50  0000 C CNN
F 1 "160R" V 1600 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1530 6350 30  0001 C CNN
F 3 "" H 1600 6350 30  0000 C CNN
	1    1600 6350
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 55552334
P 1400 6350
F 0 "R3" V 1480 6350 50  0000 C CNN
F 1 "140R" V 1400 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1330 6350 30  0001 C CNN
F 3 "" H 1400 6350 30  0000 C CNN
	1    1400 6350
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR025
U 1 1 555CEB42
P 9900 5000
F 0 "#PWR025" H 9900 5000 30  0001 C CNN
F 1 "GND" H 9900 4930 30  0001 C CNN
F 2 "" H 9900 5000 60  0000 C CNN
F 3 "" H 9900 5000 60  0000 C CNN
	1    9900 5000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 555CEC82
P 9900 4000
F 0 "#PWR026" H 9900 4090 20  0001 C CNN
F 1 "+5V" H 9900 4090 30  0000 C CNN
F 2 "" H 9900 4000 60  0000 C CNN
F 3 "" H 9900 4000 60  0000 C CNN
	1    9900 4000
	1    0    0    -1  
$EndComp
$Comp
L HEADER_8 J2
U 1 1 5561CFB3
P 10050 4450
F 0 "J2" H 10050 4900 60  0000 C CNN
F 1 "SPI_Extern" H 10400 4450 60  0000 C CNN
F 2 "w_conn_strip:vasch_strip_4x2" H 10050 4450 60  0001 C CNN
F 3 "" H 10050 4450 60  0000 C CNN
	1    10050 4450
	1    0    0    -1  
$EndComp
Text HLabel 3600 4050 0    60   Output ~ 0
Spindle_On
$Comp
L +5V #PWR027
U 1 1 55627DEA
P 7800 800
F 0 "#PWR027" H 7800 890 20  0001 C CNN
F 1 "+5V" H 7800 890 30  0000 C CNN
F 2 "" H 7800 800 60  0000 C CNN
F 3 "" H 7800 800 60  0000 C CNN
	1    7800 800 
	1    0    0    -1  
$EndComp
$Comp
L C C46
U 1 1 55628516
P 8750 950
F 0 "C46" H 8775 1050 50  0000 L CNN
F 1 "100nF" H 8775 850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8788 800 30  0001 C CNN
F 3 "" H 8750 950 60  0000 C CNN
	1    8750 950 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 556286F5
P 8750 800
F 0 "#PWR028" H 8750 890 20  0001 C CNN
F 1 "+5V" H 8750 890 30  0000 C CNN
F 2 "" H 8750 800 60  0000 C CNN
F 3 "" H 8750 800 60  0000 C CNN
	1    8750 800 
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR029
U 1 1 5562872E
P 8750 1100
F 0 "#PWR029" H 8750 1100 30  0001 C CNN
F 1 "GND" H 8750 1030 30  0001 C CNN
F 2 "" H 8750 1100 60  0000 C CNN
F 3 "" H 8750 1100 60  0000 C CNN
	1    8750 1100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR030
U 1 1 567E10FB
P 3100 3700
F 0 "#PWR030" H 3100 3700 30  0001 C CNN
F 1 "GND" H 3100 3630 30  0001 C CNN
F 2 "" H 3100 3700 60  0000 C CNN
F 3 "" H 3100 3700 60  0000 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
Text HLabel 3750 6050 0    60   Input ~ 0
Cover
$Comp
L Crystal Y1
U 1 1 56D4BD2D
P 2300 3400
F 0 "Y1" H 2300 3550 50  0000 C CNN
F 1 "16MHz" H 2300 3250 50  0000 C CNN
F 2 "w_crystal:hc-49_smd" H 2300 3400 50  0001 C CNN
F 3 "" H 2300 3400 50  0000 C CNN
	1    2300 3400
	-1   0    0    1   
$EndComp
$Comp
L C C8
U 1 1 56D4C25F
P 1950 3550
F 0 "C8" H 1975 3650 50  0000 L CNN
F 1 "22pF" H 1975 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1988 3400 30  0001 C CNN
F 3 "" H 1950 3550 60  0000 C CNN
	1    1950 3550
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 56D4C477
P 2600 3550
F 0 "C9" H 2625 3650 50  0000 L CNN
F 1 "22pF" H 2625 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2638 3400 30  0001 C CNN
F 3 "" H 2600 3550 60  0000 C CNN
	1    2600 3550
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR031
U 1 1 56D4CFFB
P 2300 3750
F 0 "#PWR031" H 2300 3750 30  0001 C CNN
F 1 "GND" H 2300 3680 30  0001 C CNN
F 2 "" H 2300 3750 60  0000 C CNN
F 3 "" H 2300 3750 60  0000 C CNN
	1    2300 3750
	1    0    0    -1  
$EndComp
Text HLabel 3600 4750 0    60   BiDi ~ 0
Ext1
Text HLabel 3600 4650 0    60   BiDi ~ 0
Ext2
$Comp
L C C47
U 1 1 57CBF3B0
P 4200 1100
F 0 "C47" H 4225 1200 50  0000 L CNN
F 1 "10µF" H 4225 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4238 950 30  0001 C CNN
F 3 "" H 4200 1100 60  0000 C CNN
	1    4200 1100
	1    0    0    -1  
$EndComp
Text HLabel 3600 4550 0    60   Input ~ 0
V_SUP
Text HLabel 3600 4450 0    60   Input ~ 0
T_REG
$Comp
L R R70
U 1 1 58BCF678
P 3500 2200
F 0 "R70" V 3580 2200 50  0000 C CNN
F 1 "12k" V 3500 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3430 2200 30  0001 C CNN
F 3 "" H 3500 2200 30  0000 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR032
U 1 1 58BD2596
P 3400 1950
F 0 "#PWR032" H 3400 2040 20  0001 C CNN
F 1 "+5V" H 3400 2040 30  0000 C CNN
F 2 "" H 3400 1950 60  0000 C CNN
F 3 "" H 3400 1950 60  0000 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D32
U 1 1 58BD31FE
P 3300 2200
F 0 "D32" H 3300 2300 50  0000 C CNN
F 1 "ZMY5.6" H 3300 2100 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0000 C CNN
	1    3300 2200
	0    1    1    0   
$EndComp
Text Label 3600 4150 0    60   ~ 0
LED1
Text Label 3600 4250 0    60   ~ 0
LED2
Text Label 1800 2650 0    60   ~ 0
Reset
Text Label 3400 5950 0    60   ~ 0
FeedHold
Text Label 3400 5850 0    60   ~ 0
CycleStart
Text Label 6450 4050 0    60   ~ 0
CS_Ext1
Text Label 6450 4150 0    60   ~ 0
CS_Ext2
$Comp
L ATMEGA128-A IC1
U 1 1 58C5413F
P 5150 4350
F 0 "IC1" H 4000 6250 50  0000 L BNN
F 1 "ATMEGA128-A" H 5900 2400 50  0000 L BNN
F 2 "Housings_QFP:TQFP-64_14x14mm_Pitch0.8mm" H 5150 4350 50  0000 C CIN
F 3 "" H 5150 4350 50  0000 C CNN
	1    5150 4350
	1    0    0    -1  
$EndComp
$Comp
L 74LS11 U4
U 1 1 58C7F524
P 8400 1300
F 0 "U4" H 8400 1350 50  0000 C CNN
F 1 "74LS11" H 8400 1250 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 8400 1300 50  0001 C CNN
F 3 "" H 8400 1300 50  0000 C CNN
	1    8400 1300
	1    0    0    -1  
$EndComp
$Comp
L 74LS11 U4
U 2 1 58C7F77F
P 8400 1800
F 0 "U4" H 8400 1850 50  0000 C CNN
F 1 "74LS11" H 8400 1750 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 8400 1800 50  0001 C CNN
F 3 "" H 8400 1800 50  0000 C CNN
	2    8400 1800
	1    0    0    -1  
$EndComp
$Comp
L 74LS11 U4
U 3 1 58C7F7EE
P 8400 2300
F 0 "U4" H 8400 2350 50  0000 C CNN
F 1 "74LS11" H 8400 2250 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 8400 2300 50  0001 C CNN
F 3 "" H 8400 2300 50  0000 C CNN
	3    8400 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P7
U 1 1 58D09626
P 2200 5000
F 0 "P7" H 2200 5300 50  0000 C CNN
F 1 "JTAG" H 2200 4700 50  0000 C CNN
F 2 "w_conn_strip:vasch_strip_5x2" H 2200 3800 50  0001 C CNN
F 3 "" H 2200 3800 50  0000 C CNN
	1    2200 5000
	-1   0    0    -1  
$EndComp
NoConn ~ 2450 5100
$Comp
L GND-RESCUE-StepperController #PWR033
U 1 1 58D0A195
P 1850 5300
F 0 "#PWR033" H 1850 5300 30  0001 C CNN
F 1 "GND" H 1850 5230 30  0001 C CNN
F 2 "" H 1850 5300 60  0000 C CNN
F 3 "" H 1850 5300 60  0000 C CNN
	1    1850 5300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR034
U 1 1 58D0A5AD
P 1900 4700
F 0 "#PWR034" H 1900 4790 20  0001 C CNN
F 1 "+5V" H 1900 4790 30  0000 C CNN
F 2 "" H 1900 4700 60  0000 C CNN
F 3 "" H 1900 4700 60  0000 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
NoConn ~ 1950 5100
Text HLabel 6850 4450 2    60   Input ~ 0
JogA
Text HLabel 6850 4550 2    60   Input ~ 0
JogB
Text HLabel 6850 4650 2    60   Input ~ 0
JogX
Text HLabel 6850 4750 2    60   Input ~ 0
JogY
Text HLabel 6850 4850 2    60   Input ~ 0
JogZ
NoConn ~ 6450 5750
NoConn ~ 3850 2850
$Comp
L VCC #PWR035
U 1 1 58E15495
P 8000 800
F 0 "#PWR035" H 8000 650 50  0001 C CNN
F 1 "VCC" H 8000 950 50  0000 C CNN
F 2 "" H 8000 800 50  0000 C CNN
F 3 "" H 8000 800 50  0000 C CNN
	1    8000 800 
	1    0    0    -1  
$EndComp
$Comp
L Led_x2 D33
U 1 1 58EBE1DE
P 1500 6900
F 0 "D33" H 1500 7125 50  0000 C CNN
F 1 "Led_x2" H 1500 6650 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm-3" H 1500 6900 50  0001 C CNN
F 3 "" H 1500 6900 50  0000 C CNN
	1    1500 6900
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR036
U 1 1 58EBEEDE
P 1500 7300
F 0 "#PWR036" H 1500 7300 30  0001 C CNN
F 1 "GND" H 1500 7230 30  0001 C CNN
F 2 "" H 1500 7300 60  0000 C CNN
F 3 "" H 1500 7300 60  0000 C CNN
	1    1500 7300
	1    0    0    -1  
$EndComp
Text Label 1400 6000 1    60   ~ 0
LED1
Text Label 1600 6000 1    60   ~ 0
LED2
$Comp
L SW_PUSH SW1
U 1 1 58ED61E9
P 2950 6450
F 0 "SW1" H 3100 6560 50  0000 C CNN
F 1 "ResetCycle" H 2950 6370 50  0000 C CNN
F 2 "SW0773:SW_0773" H 2950 6450 60  0001 C CNN
F 3 "" H 2950 6450 60  0000 C CNN
	1    2950 6450
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P11
U 1 1 58EFE774
P 2650 5950
F 0 "P11" H 2650 6150 50  0000 C CNN
F 1 "Buttons" V 2750 5950 50  0000 C CNN
F 2 "w_conn_jst-ph:b3b-ph-kl" H 2650 5950 50  0001 C CNN
F 3 "" H 2650 5950 50  0000 C CNN
	1    2650 5950
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR037
U 1 1 58EFEEE9
P 2950 6850
F 0 "#PWR037" H 2950 6850 30  0001 C CNN
F 1 "GND" H 2950 6780 30  0001 C CNN
F 2 "" H 2950 6850 60  0000 C CNN
F 3 "" H 2950 6850 60  0000 C CNN
	1    2950 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2250 5300 2250
Connection ~ 5000 2250
Wire Wire Line
	7600 1150 7800 1150
Wire Wire Line
	7600 1650 7800 1650
Wire Wire Line
	7600 2150 7800 2150
Wire Wire Line
	3100 3700 3100 3650
Wire Wire Line
	3600 750  3600 950 
Wire Wire Line
	3600 1250 3600 1450
Wire Wire Line
	3300 950  3300 900 
Wire Wire Line
	3300 900  4200 900 
Connection ~ 3600 900 
Wire Wire Line
	3900 900  3900 950 
Wire Wire Line
	3300 1250 3300 1300
Wire Wire Line
	3300 1300 4200 1300
Connection ~ 3600 1300
Wire Wire Line
	3900 1300 3900 1250
Wire Wire Line
	1950 3400 1950 3100
Connection ~ 2600 3400
Connection ~ 1950 3400
Wire Wire Line
	1950 3700 2600 3700
Wire Wire Line
	2300 3700 2300 3750
Connection ~ 2300 3700
Wire Wire Line
	4200 900  4200 950 
Connection ~ 3900 900 
Wire Wire Line
	4200 1300 4200 1250
Connection ~ 3900 1300
Wire Wire Line
	3500 2650 3500 2350
Wire Wire Line
	3300 2650 3300 2300
Wire Wire Line
	3500 2000 3500 2050
Wire Wire Line
	3300 2000 3500 2000
Wire Wire Line
	3400 2000 3400 1950
Wire Wire Line
	3300 2100 3300 2000
Connection ~ 3400 2000
Wire Wire Line
	4900 6450 5300 6450
Connection ~ 5150 6450
Wire Wire Line
	9950 4200 9800 4200
Wire Wire Line
	9800 4200 9800 3850
Connection ~ 9800 3850
Wire Wire Line
	9950 4300 9700 4300
Wire Wire Line
	9700 4300 9700 3750
Connection ~ 9700 3750
Wire Wire Line
	9950 4400 9600 4400
Wire Wire Line
	9600 4400 9600 3650
Connection ~ 9600 3650
Wire Wire Line
	9950 4800 9900 4800
Wire Wire Line
	9900 4700 9900 5000
Wire Wire Line
	9950 4100 9900 4100
Wire Wire Line
	9900 4100 9900 4000
Connection ~ 3500 2650
Wire Wire Line
	4900 2250 4900 2350
Wire Wire Line
	5000 2200 5000 2350
Wire Wire Line
	5300 2250 5300 2350
Wire Wire Line
	6450 2650 6900 2650
Wire Wire Line
	6900 2750 6450 2750
Wire Wire Line
	6450 2850 6900 2850
Wire Wire Line
	6900 2950 6450 2950
Wire Wire Line
	6450 3050 6900 3050
Wire Wire Line
	6900 3150 6450 3150
Wire Wire Line
	6450 3250 6900 3250
Wire Wire Line
	6900 3350 6450 3350
Wire Wire Line
	3850 4450 3600 4450
Wire Wire Line
	3600 4550 3850 4550
Wire Wire Line
	3850 4650 3600 4650
Wire Wire Line
	3600 4750 3850 4750
Wire Wire Line
	3850 5350 3600 5350
Wire Wire Line
	3600 5450 3850 5450
Wire Wire Line
	6450 3650 10250 3650
Wire Wire Line
	6450 3750 10250 3750
Wire Wire Line
	6450 3850 10250 3850
Wire Wire Line
	6850 5850 6450 5850
Wire Wire Line
	6450 5950 6850 5950
Wire Wire Line
	6850 6050 6450 6050
Wire Wire Line
	4900 6450 4900 6350
Wire Wire Line
	5000 6350 5000 6450
Connection ~ 5000 6450
Wire Wire Line
	5300 6450 5300 6350
Wire Wire Line
	5150 6550 5150 6450
Wire Wire Line
	1800 2650 3850 2650
Wire Wire Line
	3600 3650 3850 3650
Wire Wire Line
	3100 3650 3300 3650
Wire Wire Line
	3600 5550 3850 5550
Wire Wire Line
	3850 5650 3600 5650
Wire Wire Line
	3850 4850 2650 4850
Wire Wire Line
	2650 4850 2650 4800
Wire Wire Line
	2650 4800 2450 4800
Wire Wire Line
	2450 4900 2650 4900
Wire Wire Line
	2650 4900 2650 5050
Wire Wire Line
	2650 5050 3850 5050
Wire Wire Line
	3850 4950 2700 4950
Wire Wire Line
	2700 4950 2700 5000
Wire Wire Line
	2700 5000 2450 5000
Wire Wire Line
	3850 5150 2650 5150
Wire Wire Line
	2650 5150 2650 5200
Wire Wire Line
	2650 5200 2450 5200
Wire Wire Line
	1950 4800 1850 4800
Wire Wire Line
	1850 4800 1850 5300
Wire Wire Line
	1950 5200 1850 5200
Connection ~ 1850 5200
Wire Wire Line
	1950 4900 1900 4900
Wire Wire Line
	1900 4900 1900 4700
Wire Wire Line
	1800 2650 1800 5000
Wire Wire Line
	1800 5000 1950 5000
Connection ~ 3300 2650
Wire Wire Line
	7600 1300 7800 1300
Wire Wire Line
	7800 1450 7600 1450
Wire Wire Line
	7600 1800 7800 1800
Wire Wire Line
	7800 1950 7600 1950
Wire Wire Line
	7600 2300 7800 2300
Wire Wire Line
	7800 2450 7600 2450
Wire Wire Line
	6850 4450 6450 4450
Wire Wire Line
	6450 4550 6850 4550
Wire Wire Line
	6850 4650 6450 4650
Wire Wire Line
	6450 4750 6850 4750
Wire Wire Line
	6850 4850 6450 4850
Wire Wire Line
	6450 5350 9050 5350
Wire Wire Line
	9050 5350 9050 2300
Wire Wire Line
	9050 2300 9000 2300
Wire Wire Line
	6450 5450 9150 5450
Wire Wire Line
	9150 5450 9150 1800
Wire Wire Line
	9150 1800 9000 1800
Wire Wire Line
	9000 1300 9250 1300
Wire Wire Line
	9250 1300 9250 5550
Wire Wire Line
	9250 5550 6450 5550
Wire Wire Line
	6450 4250 6850 4250
Wire Wire Line
	3600 4050 3850 4050
Wire Wire Line
	6850 3950 6450 3950
Wire Wire Line
	6450 4050 9400 4050
Wire Wire Line
	9400 4050 9400 4600
Wire Wire Line
	6450 4150 9500 4150
Wire Wire Line
	9400 4600 9950 4600
Wire Wire Line
	9950 4500 9500 4500
Wire Wire Line
	9500 4500 9500 4150
Wire Wire Line
	9950 4700 9900 4700
Connection ~ 9900 4800
Wire Wire Line
	7800 800  8000 800 
Wire Wire Line
	1500 7200 1500 7300
Wire Wire Line
	1400 6600 1400 6500
Wire Wire Line
	1600 6600 1600 6500
Wire Wire Line
	1400 6200 1400 6000
Wire Wire Line
	1600 6200 1600 6000
Wire Wire Line
	1950 3400 2150 3400
Wire Wire Line
	1950 3100 3850 3100
Wire Wire Line
	2450 3400 3850 3400
Wire Wire Line
	2850 6150 2850 6050
Text Notes 1200 7550 0    79   ~ 0
Status LED
Wire Wire Line
	3750 6050 3850 6050
Wire Wire Line
	2950 5750 2950 6150
Wire Wire Line
	2950 6850 2950 6750
Wire Wire Line
	6450 4950 6850 4950
Wire Wire Line
	6850 5650 6450 5650
Wire Wire Line
	6450 5050 6850 5050
NoConn ~ 6450 3550
Wire Wire Line
	3850 4150 3600 4150
Wire Wire Line
	3600 4250 3850 4250
Wire Wire Line
	2950 5750 3850 5750
Wire Wire Line
	3850 5850 2850 5850
Wire Wire Line
	2850 5950 3850 5950
Text HLabel 6850 5150 2    60   Output ~ 0
Spindle_Dir
Wire Wire Line
	6450 5150 6850 5150
Text HLabel 3600 3950 0    60   Output ~ 0
Cool_Mist
Text HLabel 3600 3850 0    60   Output ~ 0
Cool_Flood
Wire Wire Line
	3600 3950 3850 3950
Wire Wire Line
	3850 3850 3600 3850
$EndSCHEMATC
