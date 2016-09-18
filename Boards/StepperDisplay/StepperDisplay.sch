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
Sheet 1 6
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
Wire Wire Line
	4800 2800 6550 2800
Wire Wire Line
	4800 2950 6550 2950
Wire Wire Line
	4800 3100 6550 3100
Wire Wire Line
	4800 3250 6550 3250
Wire Wire Line
	4800 3400 6550 3400
$Sheet
S 6550 2400 1400 2000
U 57CDDE48
F0 "LEDS" 60
F1 "LEDS.sch" 60
F2 "Ser_In" I L 6550 3400 60 
F3 "Ser_Clock" I L 6550 2800 60 
F4 "Enable" I L 6550 2950 60 
F5 "Reset" I L 6550 3250 60 
F6 "R_Clock" I L 6550 3100 60 
$EndSheet
$EndSCHEMATC
