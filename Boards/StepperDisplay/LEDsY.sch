EESchema Schematic File Version 2
LIBS:StepperDisplay-rescue
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
LIBS:ULN280xA
LIBS:w_device
LIBS:StepperDisplay-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "CNC Controller Positionsanzeige"
Date "2016-02-27"
Rev "1.0"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 "7 Segment LEDs Y Achse"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 7SEGMENTS AFF7
U 1 1 55D40109
P 6600 2150
AR Path="/55B162BE/55D40109" Ref="AFF7"  Part="1" 
AR Path="/55A9E2AF/55D40109" Ref="AFF1"  Part="1" 
F 0 "AFF7" H 6600 2700 60  0000 C CNN
F 1 "7SEGMENTS" H 6600 1700 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 6600 2150 60  0001 C CNN
F 3 "" H 6600 2150 60  0000 C CNN
	1    6600 2150
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF8
U 1 1 55D4010A
P 6600 3300
AR Path="/55B162BE/55D4010A" Ref="AFF8"  Part="1" 
AR Path="/55A9E2AF/55D4010A" Ref="AFF2"  Part="1" 
F 0 "AFF8" H 6600 3850 60  0000 C CNN
F 1 "7SEGMENTS" H 6600 2850 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 6600 3300 60  0001 C CNN
F 3 "" H 6600 3300 60  0000 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF9
U 1 1 55D4010B
P 6600 4500
AR Path="/55B162BE/55D4010B" Ref="AFF9"  Part="1" 
AR Path="/55A9E2AF/55D4010B" Ref="AFF3"  Part="1" 
F 0 "AFF9" H 6600 5050 60  0000 C CNN
F 1 "7SEGMENTS" H 6600 4050 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 6600 4500 60  0001 C CNN
F 3 "" H 6600 4500 60  0000 C CNN
	1    6600 4500
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF10
U 1 1 55D4010C
P 9000 2150
AR Path="/55B162BE/55D4010C" Ref="AFF10"  Part="1" 
AR Path="/55A9E2AF/55D4010C" Ref="AFF4"  Part="1" 
F 0 "AFF10" H 9000 2700 60  0000 C CNN
F 1 "7SEGMENTS" H 9000 1700 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 9000 2150 60  0001 C CNN
F 3 "" H 9000 2150 60  0000 C CNN
	1    9000 2150
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF11
U 1 1 55D4010D
P 9000 3350
AR Path="/55B162BE/55D4010D" Ref="AFF11"  Part="1" 
AR Path="/55A9E2AF/55D4010D" Ref="AFF5"  Part="1" 
F 0 "AFF11" H 9000 3900 60  0000 C CNN
F 1 "7SEGMENTS" H 9000 2900 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 9000 3350 60  0001 C CNN
F 3 "" H 9000 3350 60  0000 C CNN
	1    9000 3350
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS AFF12
U 1 1 55D4010E
P 9000 4500
AR Path="/55B162BE/55D4010E" Ref="AFF12"  Part="1" 
AR Path="/55A9E2AF/55D4010E" Ref="AFF6"  Part="1" 
F 0 "AFF12" H 9000 5050 60  0000 C CNN
F 1 "7SEGMENTS" H 9000 4050 60  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 9000 4500 60  0001 C CNN
F 3 "" H 9000 4500 60  0000 C CNN
	1    9000 4500
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U5
U 1 1 55D40111
P 2650 5600
AR Path="/55B162BE/55D40111" Ref="U5"  Part="1" 
AR Path="/55A9E2AF/55D40111" Ref="U2"  Part="1" 
F 0 "U5" H 2800 6200 70  0000 C CNN
F 1 "74HC595" H 2650 5000 70  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 2650 5600 60  0001 C CNN
F 3 "" H 2650 5600 60  0000 C CNN
	1    2650 5600
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 55D40112
P 3350 1700
AR Path="/55B162BE/55D40112" Ref="R15"  Part="1" 
AR Path="/55A9E2AF/55D40112" Ref="R1"  Part="1" 
F 0 "R15" V 3430 1700 50  0000 C CNN
F 1 "R" V 3350 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3280 1700 30  0001 C CNN
F 3 "" H 3350 1700 30  0000 C CNN
	1    3350 1700
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5590F986
P 3350 1800
AR Path="/55B162BE/5590F986" Ref="R16"  Part="1" 
AR Path="/55A9E2AF/5590F986" Ref="R2"  Part="1" 
F 0 "R16" V 3430 1800 50  0000 C CNN
F 1 "R" V 3350 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3280 1800 30  0001 C CNN
F 3 "" H 3350 1800 30  0000 C CNN
	1    3350 1800
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 5590F9C6
P 3350 1900
AR Path="/55B162BE/5590F9C6" Ref="R17"  Part="1" 
AR Path="/55A9E2AF/5590F9C6" Ref="R3"  Part="1" 
F 0 "R17" V 3430 1900 50  0000 C CNN
F 1 "R" V 3350 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3280 1900 30  0001 C CNN
F 3 "" H 3350 1900 30  0000 C CNN
	1    3350 1900
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 5590F9F0
P 3350 2000
AR Path="/55B162BE/5590F9F0" Ref="R18"  Part="1" 
AR Path="/55A9E2AF/5590F9F0" Ref="R4"  Part="1" 
F 0 "R18" V 3430 2000 50  0000 C CNN
F 1 "R" V 3350 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3280 2000 30  0001 C CNN
F 3 "" H 3350 2000 30  0000 C CNN
	1    3350 2000
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 5590FBA5
P 3350 2100
AR Path="/55B162BE/5590FBA5" Ref="R19"  Part="1" 
AR Path="/55A9E2AF/5590FBA5" Ref="R5"  Part="1" 
F 0 "R19" V 3430 2100 50  0000 C CNN
F 1 "R" V 3350 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3280 2100 30  0001 C CNN
F 3 "" H 3350 2100 30  0000 C CNN
	1    3350 2100
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 5590FBEB
P 3350 2200
AR Path="/55B162BE/5590FBEB" Ref="R20"  Part="1" 
AR Path="/55A9E2AF/5590FBEB" Ref="R6"  Part="1" 
F 0 "R20" V 3430 2200 50  0000 C CNN
F 1 "R" V 3350 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3280 2200 30  0001 C CNN
F 3 "" H 3350 2200 30  0000 C CNN
	1    3350 2200
	0    1    1    0   
$EndComp
$Comp
L R R21
U 1 1 55D40118
P 9800 1800
AR Path="/55B162BE/55D40118" Ref="R21"  Part="1" 
AR Path="/55A9E2AF/55D40118" Ref="R7"  Part="1" 
F 0 "R21" V 9880 1800 50  0000 C CNN
F 1 "R" V 9800 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9730 1800 30  0001 C CNN
F 3 "" H 9800 1800 30  0000 C CNN
	1    9800 1800
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 55D40119
P 9800 3000
AR Path="/55B162BE/55D40119" Ref="R22"  Part="1" 
AR Path="/55A9E2AF/55D40119" Ref="R8"  Part="1" 
F 0 "R22" V 9880 3000 50  0000 C CNN
F 1 "R" V 9800 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9730 3000 30  0001 C CNN
F 3 "" H 9800 3000 30  0000 C CNN
	1    9800 3000
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 55D4011A
P 9800 4150
AR Path="/55B162BE/55D4011A" Ref="R23"  Part="1" 
AR Path="/55A9E2AF/55D4011A" Ref="R9"  Part="1" 
F 0 "R23" V 9880 4150 50  0000 C CNN
F 1 "R" V 9800 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9730 4150 30  0001 C CNN
F 3 "" H 9800 4150 30  0000 C CNN
	1    9800 4150
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 55D4011B
P 7400 1800
AR Path="/55B162BE/55D4011B" Ref="R24"  Part="1" 
AR Path="/55A9E2AF/55D4011B" Ref="R10"  Part="1" 
F 0 "R24" V 7480 1800 50  0000 C CNN
F 1 "R" V 7400 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7330 1800 30  0001 C CNN
F 3 "" H 7400 1800 30  0000 C CNN
	1    7400 1800
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 55911E28
P 7400 2950
AR Path="/55B162BE/55911E28" Ref="R25"  Part="1" 
AR Path="/55A9E2AF/55911E28" Ref="R11"  Part="1" 
F 0 "R25" V 7480 2950 50  0000 C CNN
F 1 "R" V 7400 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7330 2950 30  0001 C CNN
F 3 "" H 7400 2950 30  0000 C CNN
	1    7400 2950
	0    1    1    0   
$EndComp
$Comp
L R R26
U 1 1 55D4011D
P 7400 4150
AR Path="/55B162BE/55D4011D" Ref="R26"  Part="1" 
AR Path="/55A9E2AF/55D4011D" Ref="R12"  Part="1" 
F 0 "R26" V 7480 4150 50  0000 C CNN
F 1 "R" V 7400 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7330 4150 30  0001 C CNN
F 3 "" H 7400 4150 30  0000 C CNN
	1    7400 4150
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-StepperDisplay #PWR024
U 1 1 559142F9
P 2350 6350
AR Path="/55B162BE/559142F9" Ref="#PWR024"  Part="1" 
AR Path="/55A9E2AF/559142F9" Ref="#PWR01"  Part="1" 
AR Path="/559142F9" Ref="#PWR18"  Part="1" 
F 0 "#PWR024" H 2350 6350 30  0001 C CNN
F 1 "GND" H 2350 6280 30  0001 C CNN
F 2 "" H 2350 6350 60  0000 C CNN
F 3 "" H 2350 6350 60  0000 C CNN
	1    2350 6350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperDisplay #PWR025
U 1 1 55D40121
P 3550 6350
AR Path="/55B162BE/55D40121" Ref="#PWR025"  Part="1" 
AR Path="/55A9E2AF/55D40121" Ref="#PWR02"  Part="1" 
AR Path="/55D40121" Ref="#PWR19"  Part="1" 
F 0 "#PWR025" H 3550 6350 30  0001 C CNN
F 1 "GND" H 3550 6280 30  0001 C CNN
F 2 "" H 3550 6350 60  0000 C CNN
F 3 "" H 3550 6350 60  0000 C CNN
	1    3550 6350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperDisplay #PWR026
U 1 1 55914B8C
P 2100 2700
AR Path="/55B162BE/55914B8C" Ref="#PWR026"  Part="1" 
AR Path="/55A9E2AF/55914B8C" Ref="#PWR03"  Part="1" 
AR Path="/55914B8C" Ref="#PWR16"  Part="1" 
F 0 "#PWR026" H 2100 2700 30  0001 C CNN
F 1 "GND" H 2100 2630 30  0001 C CNN
F 2 "" H 2100 2700 60  0000 C CNN
F 3 "" H 2100 2700 60  0000 C CNN
	1    2100 2700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR027
U 1 1 55D40123
P 2350 4950
AR Path="/55B162BE/55D40123" Ref="#PWR027"  Part="1" 
AR Path="/55A9E2AF/55D40123" Ref="#PWR04"  Part="1" 
F 0 "#PWR027" H 2350 5040 20  0001 C CNN
F 1 "+5V" H 2350 5040 30  0000 C CNN
F 2 "" H 2350 4950 60  0000 C CNN
F 3 "" H 2350 4950 60  0000 C CNN
	1    2350 4950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 55D40124
P 2100 1250
AR Path="/55B162BE/55D40124" Ref="#PWR028"  Part="1" 
AR Path="/55A9E2AF/55D40124" Ref="#PWR05"  Part="1" 
F 0 "#PWR028" H 2100 1340 20  0001 C CNN
F 1 "+5V" H 2100 1340 30  0000 C CNN
F 2 "" H 2100 1250 60  0000 C CNN
F 3 "" H 2100 1250 60  0000 C CNN
	1    2100 1250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 55D40125
P 4300 1250
AR Path="/55B162BE/55D40125" Ref="#PWR029"  Part="1" 
AR Path="/55A9E2AF/55D40125" Ref="#PWR06"  Part="1" 
F 0 "#PWR029" H 4300 1340 20  0001 C CNN
F 1 "+5V" H 4300 1340 30  0000 C CNN
F 2 "" H 4300 1250 60  0000 C CNN
F 3 "" H 4300 1250 60  0000 C CNN
	1    4300 1250
	1    0    0    -1  
$EndComp
Text HLabel 1250 1500 0    60   Input ~ 0
Ser_In
Text HLabel 1250 1700 0    60   Input ~ 0
Ser_Clock
Text HLabel 1250 2100 0    60   Input ~ 0
Enable
Text HLabel 1200 6450 0    60   Output ~ 0
Ser_Out
Text HLabel 1250 2000 0    60   Input ~ 0
R_Clock
$Comp
L BC857 Q7
U 1 1 55D40126
P 4100 1500
AR Path="/55B162BE/55D40126" Ref="Q7"  Part="1" 
AR Path="/55A9E2AF/55D40126" Ref="Q1"  Part="1" 
F 0 "Q7" H 4300 1575 50  0000 L CNN
F 1 "BC857" H 4300 1500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4300 1425 50  0000 L CIN
F 3 "" H 4100 1500 50  0000 L CNN
	1    4100 1500
	1    0    0    1   
$EndComp
$Comp
L BC857 Q8
U 1 1 55D40127
P 4100 2100
AR Path="/55B162BE/55D40127" Ref="Q8"  Part="1" 
AR Path="/55A9E2AF/55D40127" Ref="Q2"  Part="1" 
F 0 "Q8" H 4300 2175 50  0000 L CNN
F 1 "BC857" H 4300 2100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4300 2025 50  0000 L CIN
F 3 "" H 4100 2100 50  0000 L CNN
	1    4100 2100
	1    0    0    1   
$EndComp
$Comp
L BC857 Q9
U 1 1 55D40128
P 4100 2700
AR Path="/55B162BE/55D40128" Ref="Q9"  Part="1" 
AR Path="/55A9E2AF/55D40128" Ref="Q3"  Part="1" 
F 0 "Q9" H 4300 2775 50  0000 L CNN
F 1 "BC857" H 4300 2700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4300 2625 50  0000 L CIN
F 3 "" H 4100 2700 50  0000 L CNN
	1    4100 2700
	1    0    0    1   
$EndComp
$Comp
L BC857 Q10
U 1 1 55D40129
P 4100 3350
AR Path="/55B162BE/55D40129" Ref="Q10"  Part="1" 
AR Path="/55A9E2AF/55D40129" Ref="Q4"  Part="1" 
F 0 "Q10" H 4300 3425 50  0000 L CNN
F 1 "BC857" H 4300 3350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4300 3275 50  0000 L CIN
F 3 "" H 4100 3350 50  0000 L CNN
	1    4100 3350
	1    0    0    1   
$EndComp
$Comp
L BC857 Q11
U 1 1 55D4012A
P 4100 3950
AR Path="/55B162BE/55D4012A" Ref="Q11"  Part="1" 
AR Path="/55A9E2AF/55D4012A" Ref="Q5"  Part="1" 
F 0 "Q11" H 4300 4025 50  0000 L CNN
F 1 "BC857" H 4300 3950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4300 3875 50  0000 L CIN
F 3 "" H 4100 3950 50  0000 L CNN
	1    4100 3950
	1    0    0    1   
$EndComp
$Comp
L BC857 Q12
U 1 1 55D4012B
P 4100 4550
AR Path="/55B162BE/55D4012B" Ref="Q12"  Part="1" 
AR Path="/55A9E2AF/55D4012B" Ref="Q6"  Part="1" 
F 0 "Q12" H 4300 4625 50  0000 L CNN
F 1 "BC857" H 4300 4550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4300 4475 50  0000 L CIN
F 3 "" H 4100 4550 50  0000 L CNN
	1    4100 4550
	1    0    0    1   
$EndComp
$Comp
L ULN2801A U6
U 1 1 55D4010F
P 4300 5550
AR Path="/55B162BE/55D4010F" Ref="U6"  Part="1" 
AR Path="/55A9E2AF/55D4010F" Ref="U3"  Part="1" 
F 0 "U6" H 4250 5050 50  0000 C CNN
F 1 "ULN2801A" H 4300 6100 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-18_7.5x11.6mm_Pitch1.27mm" H 4300 5550 60  0001 C CNN
F 3 "" H 4300 5550 60  0000 C CNN
	1    4300 5550
	1    0    0    -1  
$EndComp
NoConn ~ 5050 5950
$Comp
L 74HC595 U4
U 1 1 559003A9
P 2400 1950
AR Path="/55B162BE/559003A9" Ref="U4"  Part="1" 
AR Path="/55A9E2AF/559003A9" Ref="U1"  Part="1" 
F 0 "U4" H 2550 2550 70  0000 C CNN
F 1 "74HC595" H 2400 1350 70  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 2400 1950 60  0001 C CNN
F 3 "" H 2400 1950 60  0000 C CNN
	1    2400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2350 8250 2350
Wire Wire Line
	8250 2350 8250 5750
Wire Wire Line
	8400 2250 8200 2250
Wire Wire Line
	8200 2250 8200 5650
Wire Wire Line
	8400 2150 8150 2150
Wire Wire Line
	8150 2150 8150 5550
Wire Wire Line
	8400 2050 8100 2050
Wire Wire Line
	8100 2050 8100 5450
Wire Wire Line
	8050 1950 8400 1950
Wire Wire Line
	8050 5350 8050 1950
Wire Wire Line
	8400 1850 8000 1850
Wire Wire Line
	8000 1850 8000 5250
Wire Wire Line
	8400 1750 7950 1750
Wire Wire Line
	7950 1750 7950 5150
Wire Wire Line
	9600 2400 10050 2400
Wire Wire Line
	10050 2400 10050 5850
Wire Wire Line
	8400 3550 8250 3550
Connection ~ 8250 3550
Wire Wire Line
	8400 3450 8200 3450
Connection ~ 8200 3450
Wire Wire Line
	8400 3350 8150 3350
Connection ~ 8150 3350
Wire Wire Line
	8400 3250 8100 3250
Connection ~ 8100 3250
Wire Wire Line
	8400 3150 8050 3150
Connection ~ 8050 3150
Wire Wire Line
	8400 3050 8000 3050
Connection ~ 8000 3050
Wire Wire Line
	8400 2950 7950 2950
Connection ~ 7950 2950
Wire Wire Line
	9600 3600 10050 3600
Connection ~ 10050 3600
Wire Wire Line
	9600 4750 10050 4750
Connection ~ 10050 4750
Wire Wire Line
	8400 4100 7950 4100
Connection ~ 7950 4100
Wire Wire Line
	8400 4200 8000 4200
Connection ~ 8000 4200
Wire Wire Line
	8400 4300 8050 4300
Connection ~ 8050 4300
Wire Wire Line
	8400 4400 8100 4400
Connection ~ 8100 4400
Wire Wire Line
	8400 4500 8150 4500
Connection ~ 8150 4500
Wire Wire Line
	8400 4600 8200 4600
Connection ~ 8200 4600
Wire Wire Line
	8400 4700 8250 4700
Connection ~ 8250 4700
Wire Wire Line
	6000 2350 5900 2350
Wire Wire Line
	5900 2350 5900 5750
Connection ~ 5900 5750
Wire Wire Line
	6000 2250 5850 2250
Wire Wire Line
	5850 2250 5850 5650
Connection ~ 5850 5650
Wire Wire Line
	6000 2150 5800 2150
Wire Wire Line
	5800 2150 5800 5550
Connection ~ 5800 5550
Wire Wire Line
	6000 2050 5750 2050
Wire Wire Line
	5750 2050 5750 5450
Connection ~ 5750 5450
Wire Wire Line
	6000 1950 5700 1950
Wire Wire Line
	5700 1950 5700 5350
Connection ~ 5700 5350
Wire Wire Line
	6000 1850 5650 1850
Wire Wire Line
	5650 1850 5650 5250
Connection ~ 5650 5250
Wire Wire Line
	6000 1750 5600 1750
Wire Wire Line
	5600 1750 5600 5150
Connection ~ 5600 5150
Wire Wire Line
	7200 2400 7650 2400
Wire Wire Line
	7650 2400 7650 5850
Connection ~ 7650 5850
Wire Wire Line
	7200 4750 7650 4750
Connection ~ 7650 4750
Connection ~ 7650 3550
Wire Wire Line
	3350 5150 3550 5150
Wire Wire Line
	3350 5250 3550 5250
Wire Wire Line
	3350 5350 3550 5350
Wire Wire Line
	3350 5450 3550 5450
Wire Wire Line
	3350 5550 3550 5550
Wire Wire Line
	3350 5650 3550 5650
Wire Wire Line
	3350 5750 3550 5750
Wire Wire Line
	3350 5850 3550 5850
Wire Wire Line
	7950 5150 5050 5150
Wire Wire Line
	8000 5250 5050 5250
Wire Wire Line
	5050 5350 8050 5350
Wire Wire Line
	8100 5450 5050 5450
Wire Wire Line
	8150 5550 5050 5550
Wire Wire Line
	8200 5650 5050 5650
Wire Wire Line
	8250 5750 5050 5750
Wire Wire Line
	10050 5850 5050 5850
Wire Wire Line
	4200 4750 4200 4800
Wire Wire Line
	4200 4800 5150 4800
Wire Wire Line
	4200 4150 4200 4200
Wire Wire Line
	4200 4200 5100 4200
Wire Wire Line
	4200 3550 4200 3600
Wire Wire Line
	4200 2900 4200 2950
Wire Wire Line
	4200 2950 5000 2950
Wire Wire Line
	5000 2950 5000 1250
Wire Wire Line
	5000 1250 10150 1250
Wire Wire Line
	10150 1250 10150 4150
Wire Wire Line
	4200 2300 4200 2350
Wire Wire Line
	4200 2350 4950 2350
Wire Wire Line
	4950 2350 4950 1200
Wire Wire Line
	4950 1200 10250 1200
Wire Wire Line
	10250 1200 10250 3000
Wire Wire Line
	4200 1700 4200 1750
Wire Wire Line
	4200 1750 4900 1750
Wire Wire Line
	4900 1750 4900 1150
Wire Wire Line
	4900 1150 10350 1150
Wire Wire Line
	10350 1150 10350 1800
Wire Wire Line
	6000 2900 5600 2900
Connection ~ 5600 2900
Wire Wire Line
	6000 3000 5650 3000
Connection ~ 5650 3000
Wire Wire Line
	6000 3100 5700 3100
Connection ~ 5700 3100
Wire Wire Line
	6000 3200 5750 3200
Connection ~ 5750 3200
Wire Wire Line
	6000 3300 5800 3300
Connection ~ 5800 3300
Wire Wire Line
	6000 3400 5850 3400
Connection ~ 5850 3400
Wire Wire Line
	6000 3500 5900 3500
Connection ~ 5900 3500
Wire Wire Line
	6000 4100 5600 4100
Connection ~ 5600 4100
Wire Wire Line
	6000 4200 5650 4200
Connection ~ 5650 4200
Wire Wire Line
	6000 4300 5700 4300
Connection ~ 5700 4300
Wire Wire Line
	6000 4400 5750 4400
Connection ~ 5750 4400
Wire Wire Line
	6000 4500 5800 4500
Connection ~ 5800 4500
Wire Wire Line
	6000 4600 5850 4600
Connection ~ 5850 4600
Wire Wire Line
	6000 4700 5900 4700
Connection ~ 5900 4700
Wire Wire Line
	7200 1800 7200 1700
Wire Wire Line
	9600 4150 9600 4050
Wire Wire Line
	9600 1800 9600 1700
Wire Wire Line
	4300 4300 4200 4300
Wire Wire Line
	4200 4300 4200 4350
Wire Wire Line
	4300 3700 4200 3700
Wire Wire Line
	4200 3700 4200 3750
Connection ~ 4300 4300
Wire Wire Line
	4300 3100 4200 3100
Wire Wire Line
	4200 3100 4200 3150
Connection ~ 4300 3700
Wire Wire Line
	4300 2450 4200 2450
Wire Wire Line
	4200 2450 4200 2500
Connection ~ 4300 3100
Wire Wire Line
	4300 1850 4200 1850
Wire Wire Line
	4200 1850 4200 1900
Connection ~ 4300 2450
Wire Wire Line
	4300 1250 4200 1250
Wire Wire Line
	4200 1250 4200 1300
Connection ~ 4300 1850
Wire Wire Line
	3500 1900 3850 1900
Wire Wire Line
	3850 1900 3850 2700
Wire Wire Line
	3850 2700 3900 2700
Wire Wire Line
	3500 2000 3800 2000
Wire Wire Line
	3800 2000 3800 3350
Wire Wire Line
	3800 3350 3900 3350
Wire Wire Line
	3500 2100 3750 2100
Wire Wire Line
	3750 2100 3750 3950
Wire Wire Line
	3750 3950 3900 3950
Wire Wire Line
	3500 2200 3700 2200
Wire Wire Line
	3700 2200 3700 4550
Wire Wire Line
	3700 4550 3900 4550
Connection ~ 4300 1250
Connection ~ 9600 1800
Connection ~ 9600 4150
Connection ~ 7200 1800
Wire Wire Line
	3550 5950 3550 6350
Wire Wire Line
	2350 5050 2350 4950
Wire Wire Line
	2100 1400 2100 1250
Wire Wire Line
	2100 2700 2100 2500
Wire Wire Line
	9600 3000 9600 2900
Connection ~ 9600 3000
Wire Wire Line
	2350 6150 2350 6350
Wire Wire Line
	3100 2400 3200 2400
Wire Wire Line
	3200 2400 3200 4750
Wire Wire Line
	3200 4750 1800 4750
Wire Wire Line
	1800 4750 1800 5150
Wire Wire Line
	1800 5150 1950 5150
Wire Wire Line
	1600 5350 1950 5350
Wire Wire Line
	1600 1700 1600 5350
Wire Wire Line
	1250 1700 1700 1700
Wire Wire Line
	1550 5450 1950 5450
Wire Wire Line
	1950 5650 1500 5650
Wire Wire Line
	1500 5650 1500 2000
Wire Wire Line
	1550 1800 1550 5450
Wire Wire Line
	1250 1500 1700 1500
Connection ~ 1600 1700
Wire Wire Line
	3350 6050 3350 6450
Wire Wire Line
	3350 6450 1200 6450
Wire Wire Line
	1250 2100 1700 2100
Wire Wire Line
	1250 2000 1700 2000
Connection ~ 1500 2000
Wire Wire Line
	1250 1800 1700 1800
Connection ~ 1550 1800
Wire Wire Line
	1950 5750 1900 5750
Wire Wire Line
	1900 5750 1900 6250
Wire Wire Line
	1900 6250 2350 6250
Connection ~ 2350 6250
Wire Wire Line
	4200 3600 5050 3600
Wire Wire Line
	5050 3600 5050 1300
Wire Wire Line
	5050 1300 7650 1300
Wire Wire Line
	7650 1300 7650 1800
Wire Wire Line
	5100 4200 5100 1350
Wire Wire Line
	5100 1350 7750 1350
Wire Wire Line
	7750 1350 7750 2950
Wire Wire Line
	5150 4800 5150 1400
Wire Wire Line
	5150 1400 7850 1400
Wire Wire Line
	7850 1400 7850 4150
Wire Wire Line
	4300 1250 4300 4300
$Comp
L CP C15
U 1 1 56C887F2
P 6150 6600
F 0 "C15" H 6175 6700 50  0000 L CNN
F 1 "100µF" H 6175 6500 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_4x5.8" H 6188 6450 50  0001 C CNN
F 3 "" H 6150 6600 50  0000 C CNN
	1    6150 6600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR030
U 1 1 56C887F9
P 6150 6350
F 0 "#PWR030" H 6150 6440 20  0001 C CNN
F 1 "+5V" H 6150 6440 30  0000 C CNN
F 2 "" H 6150 6350 60  0000 C CNN
F 3 "" H 6150 6350 60  0000 C CNN
	1    6150 6350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperDisplay #PWR031
U 1 1 56C887FF
P 6150 6850
F 0 "#PWR031" H 6150 6850 30  0001 C CNN
F 1 "GND" H 6150 6780 30  0001 C CNN
F 2 "" H 6150 6850 60  0000 C CNN
F 3 "" H 6150 6850 60  0000 C CNN
	1    6150 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6750 6150 6850
Wire Wire Line
	6150 6350 6150 6450
$Comp
L C C13
U 1 1 56C896BF
P 4850 6650
F 0 "C13" H 4875 6750 50  0000 L CNN
F 1 "100nF" H 4875 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4888 6500 30  0001 C CNN
F 3 "" H 4850 6650 60  0000 C CNN
	1    4850 6650
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 56C896C6
P 5100 6650
F 0 "C14" H 5125 6750 50  0000 L CNN
F 1 "100nF" H 5125 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5138 6500 30  0001 C CNN
F 3 "" H 5100 6650 60  0000 C CNN
	1    5100 6650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR032
U 1 1 56C896CD
P 5100 6400
F 0 "#PWR032" H 5100 6490 20  0001 C CNN
F 1 "+5V" H 5100 6490 30  0000 C CNN
F 2 "" H 5100 6400 60  0000 C CNN
F 3 "" H 5100 6400 60  0000 C CNN
	1    5100 6400
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-StepperDisplay #PWR033
U 1 1 56C896D3
P 5100 6900
F 0 "#PWR033" H 5100 6900 30  0001 C CNN
F 1 "GND" H 5100 6830 30  0001 C CNN
F 2 "" H 5100 6900 60  0000 C CNN
F 3 "" H 5100 6900 60  0000 C CNN
	1    5100 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6400 5100 6500
Wire Wire Line
	5100 6800 5100 6900
Wire Wire Line
	4850 6500 4850 6450
Connection ~ 5100 6450
Wire Wire Line
	4850 6800 4850 6850
Connection ~ 5100 6850
Wire Wire Line
	4850 6850 5100 6850
Wire Wire Line
	4850 6450 5100 6450
Text HLabel 1250 1800 0    60   Input ~ 0
Reset
Wire Wire Line
	9600 1800 9650 1800
Wire Wire Line
	10350 1800 9950 1800
Wire Wire Line
	9600 3000 9650 3000
Wire Wire Line
	10250 3000 9950 3000
Wire Wire Line
	9600 4150 9650 4150
Wire Wire Line
	10150 4150 9950 4150
Wire Wire Line
	7200 3550 7650 3550
Wire Wire Line
	7200 1800 7250 1800
Wire Wire Line
	7650 1800 7550 1800
Wire Wire Line
	7200 2950 7250 2950
Wire Wire Line
	7750 2950 7550 2950
Wire Wire Line
	7200 4150 7250 4150
Wire Wire Line
	7850 4150 7550 4150
Wire Wire Line
	7200 2850 7200 2950
Connection ~ 7200 2950
Connection ~ 7200 4150
Wire Wire Line
	7200 4050 7200 4150
Wire Wire Line
	3500 1800 3900 1800
Wire Wire Line
	3900 1800 3900 2100
Wire Wire Line
	3500 1700 3900 1700
Wire Wire Line
	3900 1700 3900 1500
Wire Wire Line
	3100 2200 3200 2200
Wire Wire Line
	3200 2100 3100 2100
Wire Wire Line
	3200 2000 3100 2000
Wire Wire Line
	3200 1900 3100 1900
Wire Wire Line
	3100 1800 3200 1800
Wire Wire Line
	3200 1700 3100 1700
NoConn ~ 3100 1600
NoConn ~ 3100 1500
$EndSCHEMATC
