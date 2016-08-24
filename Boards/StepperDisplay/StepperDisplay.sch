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
Sheet 1 5
Title "CNC Controller Positionsanzeige"
Date "2016-02-27"
Rev "1.0"
Comp "Daniel Walter (fordprfkt@googlemail.com)"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3150 2400 1650 2000
U 558FF462
F0 "Controller" 60
F1 "Controller.sch" 60
F2 "Ser_Out" O R 4800 3400 60 
F3 "Ser_Clock" O R 4800 2800 60 
F4 "Enable" O R 4800 2950 60 
F5 "R_Clock" O R 4800 3100 60 
F6 "Reset" O R 4800 3250 60 
$EndSheet
$Sheet
S 8250 750  1300 1600
U 55A9E2AF
F0 "LEDsX" 60
F1 "LEDsX.sch" 60
F2 "Ser_In" I L 8250 1700 60 
F3 "Ser_Clock" I L 8250 1100 60 
F4 "Enable" I L 8250 1250 60 
F5 "R_Clock" I L 8250 1400 60 
F6 "Reset" I L 8250 1550 60 
$EndSheet
$Sheet
S 8250 2650 1300 1600
U 55B162BE
F0 "LEDsY" 60
F1 "LEDsY.sch" 60
F2 "Ser_In" I L 8250 3600 60 
F3 "Ser_Clock" I L 8250 3000 60 
F4 "Enable" I L 8250 3150 60 
F5 "Ser_Out" O L 8250 2850 60 
F6 "R_Clock" I L 8250 3300 60 
F7 "Reset" I L 8250 3450 60 
$EndSheet
$Sheet
S 8350 4600 1300 1600
U 55B50332
F0 "LEDsZ" 60
F1 "LEDsZ.sch" 60
F2 "Ser_In" I L 8350 5550 60 
F3 "Ser_Clock" I L 8350 4950 60 
F4 "Enable" I L 8350 5100 60 
F5 "R_Clock" I L 8350 5250 60 
F6 "Reset" I L 8350 5400 60 
F7 "Ser_Out" O L 8350 4800 60 
$EndSheet
Wire Wire Line
	4800 2800 6000 2800
Wire Wire Line
	6000 2800 6000 1100
Wire Wire Line
	4800 2950 6150 2950
Wire Wire Line
	6150 2950 6150 1250
Wire Wire Line
	4800 3100 6300 3100
Wire Wire Line
	6300 3100 6300 1400
Wire Wire Line
	6450 3250 4800 3250
Wire Wire Line
	6450 1550 6450 3250
Wire Wire Line
	6000 1100 8250 1100
Wire Wire Line
	8250 3000 7850 3000
Wire Wire Line
	7850 1100 7850 4950
Connection ~ 7850 1100
Wire Wire Line
	7850 4950 8350 4950
Connection ~ 7850 3000
Wire Wire Line
	6150 1250 8250 1250
Wire Wire Line
	8250 3150 7650 3150
Wire Wire Line
	7650 1250 7650 5100
Connection ~ 7650 1250
Wire Wire Line
	7650 5100 8350 5100
Connection ~ 7650 3150
Wire Wire Line
	6300 1400 8250 1400
Wire Wire Line
	8250 3300 7500 3300
Wire Wire Line
	7500 1400 7500 5250
Connection ~ 7500 1400
Wire Wire Line
	7500 5250 8350 5250
Connection ~ 7500 3300
Wire Wire Line
	6450 1550 8250 1550
Wire Wire Line
	8250 3450 7350 3450
Wire Wire Line
	7350 1550 7350 5400
Connection ~ 7350 1550
Wire Wire Line
	7350 5400 8350 5400
Connection ~ 7350 3450
Wire Wire Line
	8250 1700 8000 1700
Wire Wire Line
	8000 1700 8000 2850
Wire Wire Line
	8000 2850 8250 2850
Wire Wire Line
	8000 3600 8000 4800
Wire Wire Line
	8000 3600 8250 3600
Wire Wire Line
	8350 5550 6450 5550
Wire Wire Line
	6450 5550 6450 3400
Wire Wire Line
	6450 3400 4800 3400
Wire Wire Line
	8000 4800 8350 4800
$EndSCHEMATC
