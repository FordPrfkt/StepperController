EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "High Power Stepper Driver"
Date "2019-12-19"
Rev "1.0"
Comp "fordprfkt@googlemail.com"
Comment1 "Daniel Walter"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2050 1950 1200 1250
U 5C784504
F0 "Supply" 50
F1 "Supply.sch" 50
$EndSheet
$Sheet
S 6800 2000 1100 1500
U 5C78452A
F0 "Driver" 50
F1 "Driver.sch" 50
F2 "Dir" I L 6800 2350 50 
F3 "Step" I L 6800 2450 50 
F4 "DriveEN" I L 6800 2250 50 
F5 "SDI" I L 6800 2850 50 
F6 "SCK" I L 6800 2950 50 
F7 "TMC_CS" I L 6800 3050 50 
F8 "SDO" O L 6800 2750 50 
F9 "Stall" O L 6800 3250 50 
F10 "Coil_A1" O R 7900 2450 50 
F11 "Coil_A2" O R 7900 2550 50 
F12 "Coil_B1" O R 7900 2650 50 
F13 "Coil_B2" O R 7900 2750 50 
F14 "Temp2" O L 6800 3350 50 
F15 "Temp1" O L 6800 3450 50 
$EndSheet
$Sheet
S 5000 4350 1000 1500
U 5C885480
F0 "Connector" 50
F1 "Connector.sch" 50
F2 "Stall" I R 6000 4850 50 
F3 "Step" O L 5000 4450 50 
F4 "Dir" O L 5000 4550 50 
F5 "Ready" I L 5000 5050 50 
F6 "Rx" O L 5000 4950 50 
F7 "Tx" I L 5000 4850 50 
F8 "Coil_A1" I R 6000 5100 50 
F9 "Coil_A2" I R 6000 5200 50 
F10 "Coil_B1" I R 6000 5300 50 
F11 "Coil_B2" I R 6000 5400 50 
F12 "Reset" U L 5000 4750 50 
F13 "Enable" I L 5000 4650 50 
F14 "Error" I L 5000 5250 50 
F15 "Active" I L 5000 5150 50 
$EndSheet
Wire Wire Line
	6800 2750 6050 2750
Wire Wire Line
	6050 2850 6800 2850
Wire Wire Line
	6050 2950 6800 2950
Wire Wire Line
	6800 3050 6050 3050
Wire Wire Line
	6800 3250 6450 3250
$Sheet
S 5000 2150 1050 1350
U 5C784513
F0 "Controller" 50
F1 "Controller.sch" 50
F2 "Tx" O L 5000 2950 50 
F3 "Rx" I L 5000 3050 50 
F4 "Stall" I R 6050 3250 50 
F5 "MISO" O R 6050 2850 50 
F6 "SCK" O R 6050 2950 50 
F7 "CS_TMC" O R 6050 3050 50 
F8 "MOSI" I R 6050 2750 50 
F9 "Enable" I L 5000 2250 50 
F10 "Step" I L 5000 2550 50 
F11 "Dir" I L 5000 2450 50 
F12 "Ready" O L 5000 3150 50 
F13 "Reset" I L 5000 3400 50 
F14 "Active" O L 5000 2850 50 
F15 "Error" O L 5000 2750 50 
F16 "Temp1" I R 6050 3450 50 
F17 "Temp2" I R 6050 3350 50 
F18 "Drive_EN" O R 6050 2250 50 
F19 "Dir_TMC" O R 6050 2350 50 
F20 "Step_TMC" O R 6050 2450 50 
$EndSheet
Wire Wire Line
	4050 2250 5000 2250
Wire Wire Line
	6000 4850 6450 4850
Wire Wire Line
	6450 4850 6450 3250
Connection ~ 6450 3250
Wire Wire Line
	6450 3250 6050 3250
Wire Wire Line
	6000 5100 8300 5100
Wire Wire Line
	8300 5100 8300 2450
Wire Wire Line
	8300 2450 7900 2450
Wire Wire Line
	6000 5200 8200 5200
Wire Wire Line
	8200 5200 8200 2550
Wire Wire Line
	8200 2550 7900 2550
Wire Wire Line
	6000 5300 8100 5300
Wire Wire Line
	8100 5300 8100 2650
Wire Wire Line
	8100 2650 7900 2650
Wire Wire Line
	6000 5400 8000 5400
Wire Wire Line
	8000 5400 8000 2750
Wire Wire Line
	8000 2750 7900 2750
Wire Wire Line
	5000 4850 4550 4850
Wire Wire Line
	4550 4850 4550 2950
Wire Wire Line
	4550 2950 5000 2950
Wire Wire Line
	5000 4950 4650 4950
Wire Wire Line
	4650 4950 4650 3050
Wire Wire Line
	4650 3050 5000 3050
Wire Wire Line
	5000 5050 4750 5050
Wire Wire Line
	4750 5050 4750 3150
Wire Wire Line
	4750 3150 5000 3150
Wire Wire Line
	5000 4750 4850 4750
Wire Wire Line
	4850 4750 4850 3400
Wire Wire Line
	4850 3400 5000 3400
Wire Wire Line
	4050 2250 4050 4650
Wire Wire Line
	4050 4650 5000 4650
Wire Wire Line
	5000 2750 4350 2750
Wire Wire Line
	4350 2750 4350 5250
Wire Wire Line
	4450 5150 4450 2850
Wire Wire Line
	4450 2850 5000 2850
Wire Wire Line
	5000 5150 4450 5150
Wire Wire Line
	4350 5250 5000 5250
Wire Wire Line
	6050 3450 6800 3450
Wire Wire Line
	6800 3350 6050 3350
Wire Wire Line
	5000 4550 4150 4550
Wire Wire Line
	4150 4550 4150 2450
Wire Wire Line
	4150 2450 5000 2450
Wire Wire Line
	5000 4450 4250 4450
Wire Wire Line
	4250 4450 4250 2550
Wire Wire Line
	4250 2550 5000 2550
Wire Wire Line
	6050 2450 6800 2450
Wire Wire Line
	6050 2350 6800 2350
Wire Wire Line
	6050 2250 6800 2250
$EndSCHEMATC
