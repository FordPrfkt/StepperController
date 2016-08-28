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
Sheet 4 8
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
L FT232RL U3
U 1 1 554E4ADD
P 3850 2250
F 0 "U3" H 3200 3150 50  0000 L CNN
F 1 "FT232RL" H 4250 3150 50  0000 L CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 3850 2250 50  0001 C CNN
F 3 "" H 3850 2250 50  0000 C CNN
	1    3850 2250
	1    0    0    -1  
$EndComp
$Comp
L USB_B P3
U 1 1 554E4B47
P 1100 1850
F 0 "P3" H 1300 1650 50  0000 C CNN
F 1 "USB_B" H 1050 2050 50  0000 C CNN
F 2 "w_conn_pc:conn_usb_B" V 1050 1750 60  0001 C CNN
F 3 "" V 1050 1750 60  0000 C CNN
	1    1100 1850
	0    -1   1    0   
$EndComp
$Comp
L C C12
U 1 1 554E5AE3
P 2700 2950
F 0 "C12" H 2725 3050 50  0000 L CNN
F 1 "100nF" H 2725 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2738 2800 30  0001 C CNN
F 3 "" H 2700 2950 60  0000 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR033
U 1 1 554E5B8D
P 3850 3500
F 0 "#PWR033" H 3850 3500 30  0001 C CNN
F 1 "GND" H 3850 3430 30  0001 C CNN
F 2 "" H 3850 3500 60  0000 C CNN
F 3 "" H 3850 3500 60  0000 C CNN
	1    3850 3500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR034
U 1 1 554E5BF1
P 2600 750
F 0 "#PWR034" H 2600 840 20  0001 C CNN
F 1 "+5V" H 2600 840 30  0000 C CNN
F 2 "" H 2600 750 60  0000 C CNN
F 3 "" H 2600 750 60  0000 C CNN
	1    2600 750 
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 554E5C0A
P 2300 1000
F 0 "C10" H 2325 1100 50  0000 L CNN
F 1 "100nF" H 2325 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2338 850 30  0001 C CNN
F 3 "" H 2300 1000 60  0000 C CNN
	1    2300 1000
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 554E5CBB
P 2600 1000
F 0 "C11" H 2625 1100 50  0000 L CNN
F 1 "100nf" H 2625 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2638 850 30  0001 C CNN
F 3 "" H 2600 1000 60  0000 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
$Comp
L CP C13
U 1 1 554E5D43
P 2900 1000
F 0 "C13" H 2925 1100 50  0000 L CNN
F 1 "4,7µF" H 2925 900 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeD_EIA-7343_HandSoldering" H 2938 850 30  0001 C CNN
F 3 "" H 2900 1000 60  0000 C CNN
	1    2900 1000
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 554E5DC2
P 2100 2050
F 0 "R8" V 2180 2050 50  0000 C CNN
F 1 "4k7" V 2100 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 2050 30  0001 C CNN
F 3 "" H 2100 2050 30  0000 C CNN
	1    2100 2050
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 554E5EE4
P 2100 2450
F 0 "R9" V 2180 2450 50  0000 C CNN
F 1 "10k" V 2100 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 2450 30  0001 C CNN
F 3 "" H 2100 2450 30  0000 C CNN
	1    2100 2450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR035
U 1 1 554E62A0
P 1400 2150
F 0 "#PWR035" H 1400 2150 30  0001 C CNN
F 1 "GND" H 1400 2080 30  0001 C CNN
F 2 "" H 1400 2150 60  0000 C CNN
F 3 "" H 1400 2150 60  0000 C CNN
	1    1400 2150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR036
U 1 1 554E645A
P 7150 5950
F 0 "#PWR036" H 7150 5950 30  0001 C CNN
F 1 "GND" H 7150 5880 30  0001 C CNN
F 2 "" H 7150 5950 60  0000 C CNN
F 3 "" H 7150 5950 60  0000 C CNN
	1    7150 5950
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR037
U 1 1 554E64C2
P 2100 2750
F 0 "#PWR037" H 2100 2750 30  0001 C CNN
F 1 "GND" H 2100 2680 30  0001 C CNN
F 2 "" H 2100 2750 60  0000 C CNN
F 3 "" H 2100 2750 60  0000 C CNN
	1    2100 2750
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR038
U 1 1 554E681C
P 2600 1250
F 0 "#PWR038" H 2600 1250 30  0001 C CNN
F 1 "GND" H 2600 1180 30  0001 C CNN
F 2 "" H 2600 1250 60  0000 C CNN
F 3 "" H 2600 1250 60  0000 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR039
U 1 1 554E6F0B
P 3750 1150
F 0 "#PWR039" H 3750 1240 20  0001 C CNN
F 1 "+5V" H 3750 1240 30  0000 C CNN
F 2 "" H 3750 1150 60  0000 C CNN
F 3 "" H 3750 1150 60  0000 C CNN
	1    3750 1150
	1    0    0    -1  
$EndComp
Text HLabel 5950 1550 2    60   Input ~ 0
TXD
Text HLabel 5950 1650 2    60   Output ~ 0
RXD
Text HLabel 5950 1750 2    60   Output ~ 0
RTS
Text HLabel 5950 1850 2    60   Output ~ 0
CTS
$Comp
L R R10
U 1 1 554E781F
P 5100 2700
F 0 "R10" V 5180 2700 50  0000 C CNN
F 1 "270R" V 5100 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5030 2700 30  0001 C CNN
F 3 "" H 5100 2700 30  0000 C CNN
	1    5100 2700
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 554E789D
P 5400 2700
F 0 "R11" V 5480 2700 50  0000 C CNN
F 1 "270R" V 5400 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5330 2700 30  0001 C CNN
F 3 "" H 5400 2700 30  0000 C CNN
	1    5400 2700
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 554E78CE
P 5100 2250
F 0 "D7" H 5100 2350 50  0000 C CNN
F 1 "LED_YE" H 5100 2150 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5100 2250 60  0001 C CNN
F 3 "" H 5100 2250 60  0000 C CNN
	1    5100 2250
	0    -1   -1   0   
$EndComp
$Comp
L LED D8
U 1 1 554E7950
P 5400 2250
F 0 "D8" H 5400 2350 50  0000 C CNN
F 1 "LED_YE" H 5400 2150 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5400 2250 60  0001 C CNN
F 3 "" H 5400 2250 60  0000 C CNN
	1    5400 2250
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR040
U 1 1 554E7F68
P 5250 2000
F 0 "#PWR040" H 5250 2090 20  0001 C CNN
F 1 "+5V" H 5250 2090 30  0000 C CNN
F 2 "" H 5250 2000 60  0000 C CNN
F 3 "" H 5250 2000 60  0000 C CNN
	1    5250 2000
	1    0    0    -1  
$EndComp
NoConn ~ 3050 2450
NoConn ~ 3050 2650
NoConn ~ 3050 2950
NoConn ~ 4650 2750
NoConn ~ 4650 2650
NoConn ~ 4650 2550
NoConn ~ 4650 2250
NoConn ~ 4650 2150
NoConn ~ 4650 2050
NoConn ~ 4650 1950
NoConn ~ 1000 2150
$Comp
L D D5
U 1 1 554EC35A
P 1400 4600
F 0 "D5" H 1400 4700 50  0000 C CNN
F 1 "1N4148" H 1400 4500 50  0000 C CNN
F 2 "w_smd_diode:sod323" H 1400 4600 60  0001 C CNN
F 3 "" H 1400 4600 60  0000 C CNN
	1    1400 4600
	0    1    1    0   
$EndComp
$Comp
L D D6
U 1 1 554EC394
P 1400 6250
F 0 "D6" H 1400 6350 50  0000 C CNN
F 1 "1N4148" H 1400 6150 50  0000 C CNN
F 2 "w_smd_diode:sod323" H 1400 6250 60  0001 C CNN
F 3 "" H 1400 6250 60  0000 C CNN
	1    1400 6250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR041
U 1 1 554EC9BA
P 1850 4150
F 0 "#PWR041" H 1850 4240 20  0001 C CNN
F 1 "+5V" H 1850 4240 30  0000 C CNN
F 2 "" H 1850 4150 60  0000 C CNN
F 3 "" H 1850 4150 60  0000 C CNN
	1    1850 4150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR042
U 1 1 554EC9E2
P 1850 5450
F 0 "#PWR042" H 1850 5450 30  0001 C CNN
F 1 "GND" H 1850 5380 30  0001 C CNN
F 2 "" H 1850 5450 60  0000 C CNN
F 3 "" H 1850 5450 60  0000 C CNN
	1    1850 5450
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P5
U 1 1 554ECBF5
P 3600 4600
F 0 "P5" V 3550 4600 40  0000 C CNN
F 1 "Relay1" V 3650 4600 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 3600 4600 60  0001 C CNN
F 3 "" H 3600 4600 60  0000 C CNN
	1    3600 4600
	1    0    0    1   
$EndComp
$Comp
L CONN_2 P4
U 1 1 554ECC79
P 3550 6250
F 0 "P4" V 3500 6250 40  0000 C CNN
F 1 "Relay2" V 3600 6250 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 3550 6250 60  0001 C CNN
F 3 "" H 3550 6250 60  0000 C CNN
	1    3550 6250
	1    0    0    1   
$EndComp
$Comp
L +5V #PWR043
U 1 1 554ED46C
P 1850 5850
F 0 "#PWR043" H 1850 5940 20  0001 C CNN
F 1 "+5V" H 1850 5940 30  0000 C CNN
F 2 "" H 1850 5850 60  0000 C CNN
F 3 "" H 1850 5850 60  0000 C CNN
	1    1850 5850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR044
U 1 1 554ED49F
P 1850 7150
F 0 "#PWR044" H 1850 7150 30  0001 C CNN
F 1 "GND" H 1850 7080 30  0001 C CNN
F 2 "" H 1850 7150 60  0000 C CNN
F 3 "" H 1850 7150 60  0000 C CNN
	1    1850 7150
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 554EDB8A
P 1350 5150
F 0 "R6" V 1430 5150 50  0000 C CNN
F 1 "10k" V 1350 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 5150 30  0001 C CNN
F 3 "" H 1350 5150 30  0000 C CNN
	1    1350 5150
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 554EDC26
P 1300 6850
F 0 "R7" V 1380 6850 50  0000 C CNN
F 1 "10k" V 1300 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1230 6850 30  0001 C CNN
F 3 "" H 1300 6850 30  0000 C CNN
	1    1300 6850
	0    1    1    0   
$EndComp
Text HLabel 1100 5150 0    60   Input ~ 0
Rel_1
Text HLabel 1050 6850 0    60   Input ~ 0
Rel_2
$Comp
L RJ12 J5
U 1 1 55500A43
P 7750 1950
F 0 "J5" H 7950 2450 60  0000 C CNN
F 1 "Display" H 7600 2450 60  0000 C CNN
F 2 "Connect:RJ12_E" H 7750 1950 60  0001 C CNN
F 3 "" H 7750 1950 60  0000 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
Text HLabel 4700 5050 0    60   Output ~ 0
Ref_X1
Text HLabel 4700 5150 0    60   Output ~ 0
Ref_X2
$Comp
L +5V #PWR045
U 1 1 55534CE9
P 6650 4350
F 0 "#PWR045" H 6650 4440 20  0001 C CNN
F 1 "+5V" H 6650 4440 30  0000 C CNN
F 2 "" H 6650 4350 60  0000 C CNN
F 3 "" H 6650 4350 60  0000 C CNN
	1    6650 4350
	1    0    0    -1  
$EndComp
Text HLabel 4700 5250 0    60   Output ~ 0
Ref_Y1
Text HLabel 4700 5350 0    60   Output ~ 0
Ref_Y2
Text HLabel 4700 5450 0    60   Output ~ 0
Ref_Z1
Text HLabel 4700 5550 0    60   Output ~ 0
Ref_Z2
Text HLabel 4700 5650 0    60   Output ~ 0
Ref_T1
$Comp
L +5V #PWR046
U 1 1 5553878D
P 10000 3750
F 0 "#PWR046" H 10000 3840 20  0001 C CNN
F 1 "+5V" H 10000 3840 30  0000 C CNN
F 2 "" H 10000 3750 60  0000 C CNN
F 3 "" H 10000 3750 60  0000 C CNN
	1    10000 3750
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR047
U 1 1 5554CC5A
P 8250 1800
F 0 "#PWR047" H 8250 1800 30  0001 C CNN
F 1 "GND" H 8250 1730 30  0001 C CNN
F 2 "" H 8250 1800 60  0000 C CNN
F 3 "" H 8250 1800 60  0000 C CNN
	1    8250 1800
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR048
U 1 1 5554D064
P 8050 2500
F 0 "#PWR048" H 8050 2500 30  0001 C CNN
F 1 "GND" H 8050 2430 30  0001 C CNN
F 2 "" H 8050 2500 60  0000 C CNN
F 3 "" H 8050 2500 60  0000 C CNN
	1    8050 2500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR049
U 1 1 5554D1EA
P 7300 2250
F 0 "#PWR049" H 7300 2340 20  0001 C CNN
F 1 "+5V" H 7300 2340 30  0000 C CNN
F 2 "" H 7300 2250 60  0000 C CNN
F 3 "" H 7300 2250 60  0000 C CNN
	1    7300 2250
	1    0    0    -1  
$EndComp
Text HLabel 7750 2550 3    60   Output ~ 0
SDI
Text HLabel 7650 2550 3    60   Output ~ 0
SCK
Text HLabel 7950 2550 3    60   Output ~ 0
CS_Disp
Text HLabel 7850 2550 3    60   Input ~ 0
SDO
Text HLabel 9250 3950 0    60   Output ~ 0
Emergency_Off
$Comp
L GND-RESCUE-StepperController #PWR050
U 1 1 5555D215
P 9700 4350
F 0 "#PWR050" H 9700 4350 30  0001 C CNN
F 1 "GND" H 9700 4280 30  0001 C CNN
F 2 "" H 9700 4350 60  0000 C CNN
F 3 "" H 9700 4350 60  0000 C CNN
	1    9700 4350
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 555F8716
P 10200 3850
F 0 "R14" V 10280 3850 50  0000 C CNN
F 1 "100R" V 10200 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10130 3850 30  0001 C CNN
F 3 "" H 10200 3850 30  0000 C CNN
	1    10200 3850
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR051
U 1 1 555661F4
P 10800 4600
F 0 "#PWR051" H 10800 4690 20  0001 C CNN
F 1 "+5V" H 10800 4690 30  0000 C CNN
F 2 "" H 10800 4600 60  0000 C CNN
F 3 "" H 10800 4600 60  0000 C CNN
	1    10800 4600
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 55560ACF
P 9900 3950
F 0 "R12" V 9980 3950 50  0000 C CNN
F 1 "100R" V 9900 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9830 3950 30  0001 C CNN
F 3 "" H 9900 3950 30  0000 C CNN
	1    9900 3950
	0    -1   -1   0   
$EndComp
$Comp
L FINDER-36.11.4001 RL1
U 1 1 555D39A7
P 2050 4600
F 0 "RL1" H 2500 4750 50  0000 L CNN
F 1 "FINDER-36.11.4001" H 2500 4650 50  0000 L CNN
F 2 "Relays_ThroughHole:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 2050 4600 60  0001 C CNN
F 3 "" H 2050 4600 60  0000 C CNN
	1    2050 4600
	1    0    0    -1  
$EndComp
$Comp
L FINDER-36.11.4001 RL2
U 1 1 555D4435
P 2050 6250
F 0 "RL2" H 2500 6400 50  0000 L CNN
F 1 "FINDER-36.11.4001" H 2500 6300 50  0000 L CNN
F 2 "Relays_ThroughHole:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 2050 6250 60  0001 C CNN
F 3 "" H 2050 6250 60  0000 C CNN
	1    2050 6250
	1    0    0    -1  
$EndComp
NoConn ~ 8250 1550
NoConn ~ 2150 5950
NoConn ~ 2150 4300
$Comp
L HEADER_4 J7
U 1 1 5561C7AF
P 11000 5200
F 0 "J7" H 11000 5450 60  0000 C CNN
F 1 "Spindle" H 11000 4950 60  0000 C CNN
F 2 "w_conn_jst-ph:b4b-ph-kl" H 11000 5200 60  0001 C CNN
F 3 "" H 11000 5200 60  0000 C CNN
	1    11000 5200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR052
U 1 1 555CC719
P 10800 5650
F 0 "#PWR052" H 10800 5650 30  0001 C CNN
F 1 "GND" H 10800 5580 30  0001 C CNN
F 2 "" H 10800 5650 60  0000 C CNN
F 3 "" H 10800 5650 60  0000 C CNN
	1    10800 5650
	1    0    0    -1  
$EndComp
Text HLabel 8400 5250 0    60   Input ~ 0
Spindle_Enable
$Comp
L HEADER_8 J4
U 1 1 55620FE5
P 7300 5400
F 0 "J4" H 7300 5850 60  0000 C CNN
F 1 "Reference" H 7300 4950 60  0000 C CNN
F 2 "w_conn_jst-ph:b8b-ph-kl" H 7300 5400 60  0001 C CNN
F 3 "" H 7300 5400 60  0000 C CNN
	1    7300 5400
	1    0    0    -1  
$EndComp
$Comp
L BC817-40 Q1
U 1 1 55646B5E
P 1750 5150
F 0 "Q1" H 1950 5225 50  0000 L CNN
F 1 "BC817-40" H 1950 5150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1950 5075 50  0000 L CIN
F 3 "" H 1750 5150 50  0000 L CNN
	1    1750 5150
	1    0    0    -1  
$EndComp
$Comp
L BC817-40 Q2
U 1 1 556473A3
P 1750 6850
F 0 "Q2" H 1950 6925 50  0000 L CNN
F 1 "BC817-40" H 1950 6850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1950 6775 50  0000 L CIN
F 3 "" H 1750 6850 50  0000 L CNN
	1    1750 6850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55D43077
P 5950 5050
F 0 "R2" V 6030 5050 50  0000 C CNN
F 1 "100R" V 5950 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 5050 30  0001 C CNN
F 3 "" H 5950 5050 30  0000 C CNN
	1    5950 5050
	0    -1   -1   0   
$EndComp
$Comp
L R R36
U 1 1 55D4326B
P 5950 5150
F 0 "R36" V 6030 5150 50  0000 C CNN
F 1 "100R" V 5950 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 5150 30  0001 C CNN
F 3 "" H 5950 5150 30  0000 C CNN
	1    5950 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R37
U 1 1 55D432DB
P 5950 5250
F 0 "R37" V 6030 5250 50  0000 C CNN
F 1 "100R" V 5950 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 5250 30  0001 C CNN
F 3 "" H 5950 5250 30  0000 C CNN
	1    5950 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R38
U 1 1 55D43352
P 5950 5350
F 0 "R38" V 6030 5350 50  0000 C CNN
F 1 "100R" V 5950 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 5350 30  0001 C CNN
F 3 "" H 5950 5350 30  0000 C CNN
	1    5950 5350
	0    -1   -1   0   
$EndComp
$Comp
L R R39
U 1 1 55D43454
P 5950 5450
F 0 "R39" V 6030 5450 50  0000 C CNN
F 1 "100R" V 5950 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 5450 30  0001 C CNN
F 3 "" H 5950 5450 30  0000 C CNN
	1    5950 5450
	0    -1   -1   0   
$EndComp
$Comp
L R R40
U 1 1 55D434CD
P 5950 5550
F 0 "R40" V 6030 5550 50  0000 C CNN
F 1 "100R" V 5950 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 5550 30  0001 C CNN
F 3 "" H 5950 5550 30  0000 C CNN
	1    5950 5550
	0    -1   -1   0   
$EndComp
$Comp
L R R41
U 1 1 55D43549
P 5950 5650
F 0 "R41" V 6030 5650 50  0000 C CNN
F 1 "100R" V 5950 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5880 5650 30  0001 C CNN
F 3 "" H 5950 5650 30  0000 C CNN
	1    5950 5650
	0    -1   -1   0   
$EndComp
$Comp
L R R42
U 1 1 567BDFBF
P 6200 4600
F 0 "R42" V 6280 4600 50  0000 C CNN
F 1 "1k" V 6200 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 4600 30  0001 C CNN
F 3 "" H 6200 4600 30  0000 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
$Comp
L R R43
U 1 1 567BE08C
P 6350 4600
F 0 "R43" V 6430 4600 50  0000 C CNN
F 1 "1k" V 6350 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6280 4600 30  0001 C CNN
F 3 "" H 6350 4600 30  0000 C CNN
	1    6350 4600
	1    0    0    -1  
$EndComp
$Comp
L R R44
U 1 1 567BE358
P 6500 4600
F 0 "R44" V 6580 4600 50  0000 C CNN
F 1 "1k" V 6500 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6430 4600 30  0001 C CNN
F 3 "" H 6500 4600 30  0000 C CNN
	1    6500 4600
	1    0    0    -1  
$EndComp
$Comp
L R R45
U 1 1 567BE614
P 6650 4600
F 0 "R45" V 6730 4600 50  0000 C CNN
F 1 "1k" V 6650 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6580 4600 30  0001 C CNN
F 3 "" H 6650 4600 30  0000 C CNN
	1    6650 4600
	1    0    0    -1  
$EndComp
$Comp
L R R46
U 1 1 567BE82E
P 6800 4600
F 0 "R46" V 6880 4600 50  0000 C CNN
F 1 "1k" V 6800 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6730 4600 30  0001 C CNN
F 3 "" H 6800 4600 30  0000 C CNN
	1    6800 4600
	1    0    0    -1  
$EndComp
$Comp
L R R47
U 1 1 567BE8BB
P 6950 4600
F 0 "R47" V 7030 4600 50  0000 C CNN
F 1 "1k" V 6950 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6880 4600 30  0001 C CNN
F 3 "" H 6950 4600 30  0000 C CNN
	1    6950 4600
	1    0    0    -1  
$EndComp
$Comp
L R R48
U 1 1 567BE94B
P 7100 4600
F 0 "R48" V 7180 4600 50  0000 C CNN
F 1 "1k" V 7100 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7030 4600 30  0001 C CNN
F 3 "" H 7100 4600 30  0000 C CNN
	1    7100 4600
	1    0    0    -1  
$EndComp
$Comp
L R R53
U 1 1 567CC93F
P 10400 5150
F 0 "R53" V 10480 5150 50  0000 C CNN
F 1 "100R" V 10400 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10330 5150 30  0001 C CNN
F 3 "" H 10400 5150 30  0000 C CNN
	1    10400 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R54
U 1 1 567CC9FB
P 10700 5250
F 0 "R54" V 10780 5250 50  0000 C CNN
F 1 "100R" V 10700 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10630 5250 30  0001 C CNN
F 3 "" H 10700 5250 30  0000 C CNN
	1    10700 5250
	0    -1   -1   0   
$EndComp
$Comp
L ZENERsmall D13
U 1 1 567D12BC
P 4800 6000
F 0 "D13" H 4800 6100 50  0000 C CNN
F 1 "ZMY5,6" H 4800 5900 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 4800 6000 50  0001 C CNN
F 3 "" H 4800 6000 50  0000 C CNN
	1    4800 6000
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D14
U 1 1 567D205E
P 4950 6000
F 0 "D14" H 4950 6100 50  0000 C CNN
F 1 "ZMY5,6" H 4950 5900 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 4950 6000 50  0001 C CNN
F 3 "" H 4950 6000 50  0000 C CNN
	1    4950 6000
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D15
U 1 1 567D210B
P 5100 6000
F 0 "D15" H 5100 6100 50  0000 C CNN
F 1 "ZMY5,6" H 5100 5900 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 5100 6000 50  0001 C CNN
F 3 "" H 5100 6000 50  0000 C CNN
	1    5100 6000
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D16
U 1 1 567D21C1
P 5250 6000
F 0 "D16" H 5250 6100 50  0000 C CNN
F 1 "ZMY5,6" H 5250 5900 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 5250 6000 50  0001 C CNN
F 3 "" H 5250 6000 50  0000 C CNN
	1    5250 6000
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D17
U 1 1 567D2272
P 5400 6000
F 0 "D17" H 5400 6100 50  0000 C CNN
F 1 "ZMY5,6" H 5400 5900 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 5400 6000 50  0001 C CNN
F 3 "" H 5400 6000 50  0000 C CNN
	1    5400 6000
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D18
U 1 1 567D232A
P 5550 6000
F 0 "D18" H 5550 6100 50  0000 C CNN
F 1 "ZMY5,6" H 5550 5900 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 5550 6000 50  0001 C CNN
F 3 "" H 5550 6000 50  0000 C CNN
	1    5550 6000
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D19
U 1 1 567D23E1
P 5700 6000
F 0 "D19" H 5700 6100 50  0000 C CNN
F 1 "ZMY5,6" H 5700 5900 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 5700 6000 50  0001 C CNN
F 3 "" H 5700 6000 50  0000 C CNN
	1    5700 6000
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR053
U 1 1 567D2B2A
P 5250 6200
F 0 "#PWR053" H 5250 6200 30  0001 C CNN
F 1 "GND" H 5250 6130 30  0001 C CNN
F 2 "" H 5250 6200 60  0000 C CNN
F 3 "" H 5250 6200 60  0000 C CNN
	1    5250 6200
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D23
U 1 1 567D68C8
P 10450 5450
F 0 "D23" H 10450 5550 50  0000 C CNN
F 1 "ZMY5,6" H 10450 5350 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 10450 5450 50  0001 C CNN
F 3 "" H 10450 5450 50  0000 C CNN
	1    10450 5450
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D22
U 1 1 567D7490
P 10150 5450
F 0 "D22" H 10150 5550 50  0000 C CNN
F 1 "ZMY5,6" H 10150 5350 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 10150 5450 50  0001 C CNN
F 3 "" H 10150 5450 50  0000 C CNN
	1    10150 5450
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D21
U 1 1 567D873F
P 9700 4100
F 0 "D21" H 9700 4200 50  0000 C CNN
F 1 "ZMY5,6" H 9700 4000 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 9700 4100 50  0001 C CNN
F 3 "" H 9700 4100 50  0000 C CNN
	1    9700 4100
	0    1    1    0   
$EndComp
Text HLabel 8400 5100 0    60   Output ~ 0
Emergency_Off
Text HLabel 8200 5650 0    60   Output ~ 0
Cover
$Comp
L R R13
U 1 1 5555D7A9
P 9500 4100
F 0 "R13" V 9580 4100 50  0000 C CNN
F 1 "1k" V 9500 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9430 4100 30  0001 C CNN
F 3 "" H 9500 4100 30  0000 C CNN
	1    9500 4100
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P6
U 1 1 56D41B2D
P 10600 3900
F 0 "P6" H 10600 4050 50  0000 C CNN
F 1 "Emer_Off" V 10700 3900 50  0000 C CNN
F 2 "w_conn_jst-ph:b2b-ph-kl" H 10600 3900 50  0001 C CNN
F 3 "" H 10600 3900 50  0000 C CNN
	1    10600 3900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR054
U 1 1 56D4A081
P 10000 2850
F 0 "#PWR054" H 10000 2940 20  0001 C CNN
F 1 "+5V" H 10000 2940 30  0000 C CNN
F 2 "" H 10000 2850 60  0000 C CNN
F 3 "" H 10000 2850 60  0000 C CNN
	1    10000 2850
	1    0    0    -1  
$EndComp
Text HLabel 9250 3050 0    60   Output ~ 0
Cover
$Comp
L GND-RESCUE-StepperController #PWR055
U 1 1 56D4A088
P 9700 3450
F 0 "#PWR055" H 9700 3450 30  0001 C CNN
F 1 "GND" H 9700 3380 30  0001 C CNN
F 2 "" H 9700 3450 60  0000 C CNN
F 3 "" H 9700 3450 60  0000 C CNN
	1    9700 3450
	1    0    0    -1  
$EndComp
$Comp
L R R58
U 1 1 56D4A08E
P 10200 2950
F 0 "R58" V 10280 2950 50  0000 C CNN
F 1 "100R" V 10200 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10130 2950 30  0001 C CNN
F 3 "" H 10200 2950 30  0000 C CNN
	1    10200 2950
	0    -1   -1   0   
$EndComp
$Comp
L R R52
U 1 1 56D4A097
P 9900 3050
F 0 "R52" V 9980 3050 50  0000 C CNN
F 1 "100R" V 9900 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9830 3050 30  0001 C CNN
F 3 "" H 9900 3050 30  0000 C CNN
	1    9900 3050
	0    -1   -1   0   
$EndComp
$Comp
L ZENERsmall D29
U 1 1 56D4A09D
P 9700 3200
F 0 "D29" H 9700 3300 50  0000 C CNN
F 1 "ZMY5,6" H 9700 3100 50  0000 C CNN
F 2 "w_smd_trans:sot23" H 9700 3200 50  0001 C CNN
F 3 "" H 9700 3200 50  0000 C CNN
	1    9700 3200
	0    1    1    0   
$EndComp
$Comp
L R R51
U 1 1 56D4A0A3
P 9500 3200
F 0 "R51" V 9580 3200 50  0000 C CNN
F 1 "1k" V 9500 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9430 3200 30  0001 C CNN
F 3 "" H 9500 3200 30  0000 C CNN
	1    9500 3200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 56D4A0A9
P 10600 3000
F 0 "P2" H 10600 3150 50  0000 C CNN
F 1 "Cover" V 10700 3000 50  0000 C CNN
F 2 "w_conn_jst-ph:b2b-ph-kl" H 10600 3000 50  0001 C CNN
F 3 "" H 10600 3000 50  0000 C CNN
	1    10600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2200 2100 2300
Wire Wire Line
	3050 2250 2100 2250
Connection ~ 2100 2250
Wire Wire Line
	1400 1950 1400 2150
Wire Wire Line
	1400 1850 3050 1850
Wire Wire Line
	3050 1550 2700 1550
Wire Wire Line
	2700 1550 2700 2800
Wire Wire Line
	3850 3250 3850 3500
Wire Wire Line
	3650 3250 3650 3350
Wire Wire Line
	2700 3350 4050 3350
Wire Wire Line
	4050 3350 4050 3250
Wire Wire Line
	3950 3250 3950 3350
Connection ~ 3950 3350
Connection ~ 3850 3350
Wire Wire Line
	2100 2600 2100 2750
Wire Wire Line
	2300 850  2900 850 
Connection ~ 2600 850 
Wire Wire Line
	2300 1150 2900 1150
Connection ~ 2600 1150
Wire Wire Line
	2600 750  2600 850 
Wire Wire Line
	2600 1150 2600 1250
Wire Wire Line
	3750 1150 3750 1250
Wire Wire Line
	3750 1250 3950 1250
Wire Wire Line
	4650 2950 5400 2950
Wire Wire Line
	5400 2950 5400 2850
Wire Wire Line
	4650 2850 5100 2850
Wire Wire Line
	5100 2550 5100 2450
Wire Wire Line
	5400 2550 5400 2450
Wire Wire Line
	5100 2000 5400 2000
Wire Wire Line
	5100 2000 5100 2050
Wire Wire Line
	5400 2000 5400 2050
Connection ~ 5250 2000
Wire Wire Line
	4650 1850 5950 1850
Wire Wire Line
	4650 1750 5950 1750
Wire Wire Line
	4650 1650 5950 1650
Wire Wire Line
	4650 1550 5950 1550
Wire Wire Line
	1850 4150 1850 4300
Wire Wire Line
	1400 4450 1400 4300
Wire Wire Line
	1400 4300 1850 4300
Wire Wire Line
	1850 4900 1400 4900
Wire Wire Line
	1400 4900 1400 4750
Wire Wire Line
	2350 4300 3250 4300
Wire Wire Line
	3250 4300 3250 4500
Wire Wire Line
	2250 4900 3250 4900
Wire Wire Line
	3250 4900 3250 4700
Wire Wire Line
	1850 5850 1850 5950
Wire Wire Line
	1850 5950 1400 5950
Wire Wire Line
	1400 5950 1400 6100
Wire Wire Line
	1850 6650 1850 6550
Wire Wire Line
	1850 6550 1400 6550
Wire Wire Line
	1400 6550 1400 6400
Wire Wire Line
	1850 7150 1850 7050
Wire Wire Line
	2350 5950 3200 5950
Wire Wire Line
	3200 5950 3200 6150
Wire Wire Line
	2250 6550 3200 6550
Wire Wire Line
	3200 6550 3200 6350
Wire Wire Line
	1450 6850 1550 6850
Wire Wire Line
	1100 5150 1200 5150
Wire Wire Line
	1050 6850 1150 6850
Wire Wire Line
	7300 2250 7300 2450
Wire Wire Line
	7300 2450 7550 2450
Wire Wire Line
	7550 2450 7550 2400
Wire Wire Line
	8050 2400 8050 2500
Wire Wire Line
	2700 3350 2700 3100
Connection ~ 3650 3350
Wire Wire Line
	4700 5050 5800 5050
Wire Wire Line
	4700 5150 5800 5150
Wire Wire Line
	4700 5250 5800 5250
Wire Wire Line
	4700 5350 5800 5350
Wire Wire Line
	4700 5450 5800 5450
Wire Wire Line
	4700 5550 5800 5550
Wire Wire Line
	4700 5650 5800 5650
Wire Wire Line
	6100 5550 7200 5550
Wire Wire Line
	6100 5650 7200 5650
Wire Wire Line
	2350 1950 3050 1950
Wire Wire Line
	2350 1950 2350 1750
Wire Wire Line
	2350 1750 1400 1750
Wire Wire Line
	1400 1650 2100 1650
Wire Wire Line
	2100 1650 2100 1900
Wire Wire Line
	10900 5050 10800 5050
Wire Wire Line
	10800 5050 10800 4950
Wire Wire Line
	10350 3850 10400 3850
Wire Wire Line
	10050 3850 10000 3850
Wire Wire Line
	10000 3850 10000 3750
Connection ~ 1850 4900
Connection ~ 1850 4300
Connection ~ 1850 5950
Connection ~ 1850 6550
Wire Wire Line
	8250 1650 8250 1800
Wire Wire Line
	6100 5050 7200 5050
Wire Wire Line
	6100 5150 7200 5150
Wire Wire Line
	6100 5250 7200 5250
Wire Wire Line
	6100 5350 7200 5350
Wire Wire Line
	6100 5450 7200 5450
Wire Wire Line
	10900 5350 10800 5350
Wire Wire Line
	10800 5350 10800 5650
Wire Wire Line
	7200 5750 7150 5750
Wire Wire Line
	1500 5150 1550 5150
Wire Wire Line
	1850 4950 1850 4900
Wire Wire Line
	1850 5450 1850 5350
Wire Wire Line
	6200 4750 6200 5050
Connection ~ 6200 5050
Wire Wire Line
	6350 4750 6350 5150
Connection ~ 6350 5150
Wire Wire Line
	6500 4750 6500 5250
Connection ~ 6500 5250
Wire Wire Line
	6650 4750 6650 5350
Connection ~ 6650 5350
Wire Wire Line
	6800 4750 6800 5450
Connection ~ 6800 5450
Wire Wire Line
	6950 4750 6950 5550
Connection ~ 6950 5550
Wire Wire Line
	7100 4750 7100 5650
Connection ~ 7100 5650
Wire Wire Line
	6200 4350 7100 4350
Wire Wire Line
	6200 4350 6200 4450
Wire Wire Line
	7100 4350 7100 4450
Connection ~ 6650 4350
Wire Wire Line
	6650 4450 6650 4350
Wire Wire Line
	6500 4450 6500 4350
Connection ~ 6500 4350
Wire Wire Line
	6350 4450 6350 4350
Connection ~ 6350 4350
Wire Wire Line
	6800 4450 6800 4350
Connection ~ 6800 4350
Wire Wire Line
	6950 4450 6950 4350
Connection ~ 6950 4350
Wire Wire Line
	10850 5250 10900 5250
Wire Wire Line
	10550 5150 10900 5150
Wire Wire Line
	7650 2400 7650 2550
Wire Wire Line
	7750 2400 7750 2550
Wire Wire Line
	7850 2400 7850 2550
Wire Wire Line
	7950 2400 7950 2550
Wire Wire Line
	10150 5150 10250 5150
Wire Wire Line
	10150 5550 10150 5600
Wire Wire Line
	10150 5600 10800 5600
Connection ~ 10800 5600
Wire Wire Line
	10450 5550 10450 5600
Connection ~ 10450 5600
Wire Wire Line
	10150 4950 10150 5350
Connection ~ 10150 5150
Wire Wire Line
	10450 5350 10450 5250
Connection ~ 10450 5250
Wire Wire Line
	10050 3950 10400 3950
Wire Wire Line
	9250 3950 9750 3950
Connection ~ 9500 3950
Wire Wire Line
	9700 4000 9700 3950
Connection ~ 9700 3950
Wire Wire Line
	9700 4200 9700 4350
Wire Wire Line
	9500 4250 9500 4300
Wire Wire Line
	9500 4300 9700 4300
Connection ~ 9700 4300
Wire Wire Line
	10350 2950 10400 2950
Wire Wire Line
	10050 2950 10000 2950
Wire Wire Line
	10000 2950 10000 2850
Wire Wire Line
	10050 3050 10400 3050
Wire Wire Line
	9250 3050 9750 3050
Connection ~ 9500 3050
Wire Wire Line
	9700 3100 9700 3050
Connection ~ 9700 3050
Wire Wire Line
	9700 3300 9700 3450
Wire Wire Line
	9500 3350 9500 3400
Wire Wire Line
	9500 3400 9700 3400
Connection ~ 9700 3400
Wire Wire Line
	4800 5900 4800 5050
Connection ~ 4800 5050
Wire Wire Line
	4950 5900 4950 5150
Connection ~ 4950 5150
Wire Wire Line
	5100 5900 5100 5250
Connection ~ 5100 5250
Wire Wire Line
	5250 5900 5250 5350
Connection ~ 5250 5350
Wire Wire Line
	5400 5900 5400 5450
Connection ~ 5400 5450
Wire Wire Line
	5550 5900 5550 5550
Connection ~ 5550 5550
Wire Wire Line
	5700 5900 5700 5650
Connection ~ 5700 5650
Wire Wire Line
	4800 6100 4800 6150
Wire Wire Line
	4800 6150 5700 6150
Wire Wire Line
	5250 6100 5250 6200
Wire Wire Line
	5700 6150 5700 6100
Connection ~ 5250 6150
Wire Wire Line
	4950 6100 4950 6150
Connection ~ 4950 6150
Wire Wire Line
	5100 6100 5100 6150
Connection ~ 5100 6150
Wire Wire Line
	5400 6100 5400 6150
Connection ~ 5400 6150
Wire Wire Line
	5550 6100 5550 6150
Connection ~ 5550 6150
Wire Wire Line
	7150 5750 7150 5950
$Comp
L R R59
U 1 1 56D556E3
P 10800 4800
F 0 "R59" V 10880 4800 50  0000 C CNN
F 1 "100R" V 10800 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10730 4800 30  0001 C CNN
F 3 "" H 10800 4800 30  0000 C CNN
	1    10800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 4650 10800 4600
Wire Wire Line
	9100 5250 8400 5250
Wire Wire Line
	8400 5100 9100 5100
Wire Wire Line
	10300 5250 10550 5250
$Comp
L 74LS11 U2
U 1 1 56D3AF28
P 9700 5250
F 0 "U2" H 9700 5300 50  0000 C CNN
F 1 "74HC11" H 9700 5200 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 9700 5250 50  0001 C CNN
F 3 "" H 9700 5250 50  0000 C CNN
	1    9700 5250
	1    0    0    -1  
$EndComp
Text HLabel 8400 4950 0    60   Output ~ 0
Spindle_PWM
Wire Wire Line
	8400 4950 10150 4950
$Comp
L JUMPER3 JP1
U 1 1 56D3C1D9
P 8550 5650
F 0 "JP1" H 8600 5550 50  0000 L CNN
F 1 "JUMPER3" H 8550 5750 50  0000 C BNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8550 5650 50  0001 C CNN
F 3 "" H 8550 5650 50  0000 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR056
U 1 1 56D3C962
P 8900 5650
F 0 "#PWR056" H 8900 5740 20  0001 C CNN
F 1 "+5V" H 8900 5740 30  0000 C CNN
F 2 "" H 8900 5650 60  0000 C CNN
F 3 "" H 8900 5650 60  0000 C CNN
	1    8900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5400 9100 5800
Wire Wire Line
	9100 5800 8550 5800
Wire Wire Line
	8550 5800 8550 5750
Wire Wire Line
	8800 5650 8900 5650
Wire Wire Line
	8300 5650 8200 5650
$Comp
L C C3
U 1 1 56D3FAB0
P 9200 4650
F 0 "C3" H 9225 4750 50  0000 L CNN
F 1 "100nF" H 9225 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9238 4500 30  0001 C CNN
F 3 "" H 9200 4650 60  0000 C CNN
	1    9200 4650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR057
U 1 1 56D407B0
P 9200 4450
F 0 "#PWR057" H 9200 4300 50  0001 C CNN
F 1 "VCC" H 9200 4600 50  0000 C CNN
F 2 "" H 9200 4450 50  0000 C CNN
F 3 "" H 9200 4450 50  0000 C CNN
	1    9200 4450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperController #PWR058
U 1 1 56D40C7B
P 9200 4850
F 0 "#PWR058" H 9200 4850 30  0001 C CNN
F 1 "GND" H 9200 4780 30  0001 C CNN
F 2 "" H 9200 4850 60  0000 C CNN
F 3 "" H 9200 4850 60  0000 C CNN
	1    9200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4450 9200 4500
Wire Wire Line
	9200 4850 9200 4800
$Comp
L 74LS11 U2
U 3 1 57C394BB
P 9700 6200
F 0 "U2" H 9700 6250 50  0000 C CNN
F 1 "74HC11" H 9700 6150 50  0000 C CNN
F 2 "w_smd_dil:so-14" H 9700 6200 50  0001 C CNN
F 3 "" H 9700 6200 50  0000 C CNN
	3    9700 6200
	1    0    0    -1  
$EndComp
NoConn ~ 10300 6200
NoConn ~ 9100 6050
NoConn ~ 9100 6200
NoConn ~ 9100 6350
$EndSCHEMATC
