EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mechanical
LIBS:switches
LIBS:HandController-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Rotary_Encoder SW6
U 1 1 5A00DD03
P 6650 2350
F 0 "SW6" H 6650 2610 50  0000 C CNN
F 1 "Rotary_Encoder" H 6650 2090 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_Panasonic_EVQPL_3PL_5PL_PT_A08" H 6550 2510 50  0001 C CNN
F 3 "" H 6650 2610 50  0001 C CNN
	1    6650 2350
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A00F79C
P 6600 3050
F 0 "SW1" H 6650 3150 50  0000 L CNN
F 1 "SW_Push" H 6600 2990 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3SL-1002P" H 6600 3250 50  0001 C CNN
F 3 "" H 6600 3250 50  0001 C CNN
	1    6600 3050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A00F7DD
P 6600 3400
F 0 "SW2" H 6650 3500 50  0000 L CNN
F 1 "SW_Push" H 6600 3340 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0001 C CNN
	1    6600 3400
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5A00F806
P 6600 3700
F 0 "SW3" H 6650 3800 50  0000 L CNN
F 1 "SW_Push" H 6600 3640 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 6600 3900 50  0001 C CNN
F 3 "" H 6600 3900 50  0001 C CNN
	1    6600 3700
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW4
U 1 1 5A00F83E
P 6600 4050
F 0 "SW4" H 6650 4150 50  0000 L CNN
F 1 "SW_Push" H 6600 3990 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 6600 4250 50  0001 C CNN
F 3 "" H 6600 4250 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW5
U 1 1 5A00F87D
P 6600 4400
F 0 "SW5" H 6650 4500 50  0000 L CNN
F 1 "SW_Push" H 6600 4340 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 6600 4600 50  0001 C CNN
F 3 "" H 6600 4600 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x09 J1
U 1 1 5A00F9C7
P 4250 2650
F 0 "J1" H 4250 3150 50  0000 C CNN
F 1 "Conn_01x09" H 4250 2150 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B09B-EH-A_09x2.50mm_Straight" H 4250 2650 50  0001 C CNN
F 3 "" H 4250 2650 50  0001 C CNN
	1    4250 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 2250 4450 2250
Wire Wire Line
	4450 2350 6350 2350
Wire Wire Line
	6350 2450 4450 2450
Wire Wire Line
	4450 2550 6050 2550
Wire Wire Line
	6050 2550 6050 3050
Wire Wire Line
	6050 3050 6400 3050
Wire Wire Line
	4450 2650 5950 2650
Wire Wire Line
	5950 2650 5950 3400
Wire Wire Line
	5950 3400 6400 3400
Wire Wire Line
	4450 2750 5850 2750
Wire Wire Line
	5850 2750 5850 3700
Wire Wire Line
	5850 3700 6400 3700
Wire Wire Line
	4450 2850 5750 2850
Wire Wire Line
	5750 2850 5750 4050
Wire Wire Line
	5750 4050 6400 4050
Wire Wire Line
	4450 2950 5650 2950
Wire Wire Line
	5650 2950 5650 4400
Wire Wire Line
	5650 4400 6400 4400
$Comp
L GND #PWR01
U 1 1 5A00FBBE
P 6900 4450
F 0 "#PWR01" H 6900 4200 50  0001 C CNN
F 1 "GND" H 6900 4300 50  0000 C CNN
F 2 "" H 6900 4450 50  0001 C CNN
F 3 "" H 6900 4450 50  0001 C CNN
	1    6900 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A00FBE5
P 4550 3100
F 0 "#PWR02" H 4550 2850 50  0001 C CNN
F 1 "GND" H 4550 2950 50  0000 C CNN
F 2 "" H 4550 3100 50  0001 C CNN
F 3 "" H 4550 3100 50  0001 C CNN
	1    4550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3050 4550 3050
Wire Wire Line
	4550 3050 4550 3100
Wire Wire Line
	6800 3050 6900 3050
Wire Wire Line
	6900 3050 6900 4450
Wire Wire Line
	6800 3400 6900 3400
Connection ~ 6900 3400
Wire Wire Line
	6800 3700 6900 3700
Connection ~ 6900 3700
Wire Wire Line
	6800 4050 6900 4050
Connection ~ 6900 4050
Wire Wire Line
	6800 4400 6900 4400
Connection ~ 6900 4400
$EndSCHEMATC
