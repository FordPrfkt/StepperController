/*
 * StepperDisplay.c
 *
 * Created: 01.10.2016 02:34:39
 * Author : Daniel
 */ 

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/crc16.h>
#include <util/atomic.h>
#include <avr/cpufunc.h>
#include <avr/sfr_defs.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include <avr/signature.h>
#include "Button.h"

/* Pin definitions */
#define DDR_PIN_RCLK (DDA0)
#define DDR_PIN_SEROUT (DDA1)
#define DDR_PIN_SERCLK (DDA2)
#define DDR_PIN_BEEP (DDA3)
#define DDR_PIN_ENABLE (DDB3)
#define DDR_SPI_PIN_SO (DDB1)
#define PIN_RCLK (PORTA0)
#define PIN_SEROUT (PORTA1)
#define PIN_SERCLK (PORTA2)
#define PIN_BEEP (PORTA3)
#define PIN_BTN (PORTA4)
#define PIN_IN_BTN (PINA4)
#define PIN_ENABLE (PORTB3)
#define PIN_SPI_CS (PORTB6)
#define PIN_IN_SPI_CS (PINB6)

/* Number of Rows and Columns */
#define NUM_ROWS (3)
#define ROW_LEN (6)

/* Enable Testmode (Undef out to disable) */
#define WITH_TESTMODE (1)

/* Macro the generate clock strobes */
#define SER_CLOCK() PORTA |= _BV(PIN_SERCLK);\
					_NOP();\
					PORTA &= ~_BV(PIN_SERCLK);

#define LATCH_CLOCK() PORTA |= _BV(PIN_RCLK);\
					  _NOP();\
					  PORTA &= ~_BV(PIN_RCLK);

/* SPI configuration */
#define SPI_BUF_LEN (30)
#define SPI_TIMEOUT (300)

/* SPI commands */
#define SPI_CMD_VERSION (0x05)
#define SPI_CMD_POSITION (0x10)
#define SPI_CMD_DISPLAY (0x20)
#define SPI_CMD_BEEP (0x30)
#define SPI_CMD_CLEAR (0x50)
#define SPI_CMD_GETBUTTON (0x60)
#define SPI_CMD_RESET (0x70)
#define SPI_CMD_TESTMODE (0xCA)

/* character generator configuration */
#define PRINTABLE_CHAR_MIN (32u)
#define PRINTABLE_CHAR_MAX (126u)
#define NUM_CHARS ((PRINTABLE_CHAR_MAX - PRINTABLE_CHAR_MIN) + 1)

/* Printable character table */
#define DECIMAL_POINT (0x80u)
static const uint8_t characters[NUM_CHARS] PROGMEM =
{
    0x00, /* 32 	SP */
    0xB0, /* 33 	! */
    0x22, /* 34 	" */
    0x00, /* 35 	# */
    0x00, /* 36 	$ */
    0x00, /* 37 	% */
    0x00, /* 38 	& */
    0x20, /* 39 	' */
    0x39, /* 40 	( */
    0x15, /* 41 	) */
    0x00, /* 42 	* */
    0x00, /* 43 	+ */
    0x80, /* 44 	, */
    0x40, /* 45 	- */
    0x80, /* 46 	. */
    0xB6, /* 47 	/ */
    0x3F, /* 48	    0 */
    0x06, /* 49	    1 */
    0x5B, /* 50	    2 */
    0x4F, /* 51	    3 */
    0x66, /* 52	    4 */
    0x6D, /* 53	    5 */
    0x7D, /* 54     6 */
    0x07, /* 55     7 */
    0x7F, /* 56     8 */
    0x6F, /* 57     9 */
    0x00, /* 58 	: */
    0x00, /* 59 	; */
    0x00, /* 60 	< */
    0x48, /* 61 	= */
    0x00, /* 62 	> */
    0x00, /* 63 	? */
    0x00, /* 64 	@ */
    0x77, /* 65 	A */
    0x7F, /* 66 	B */
    0x39, /* 67 	C */
    0x5E, /* 68 	D */
    0x79, /* 69 	E */
    0x71, /* 70 	F */
    0x7D, /* 71 	G */
    0x76, /* 72 	H */
    0x06, /* 73 	I */
    0x1E, /* 74 	J */
    0x75, /* 75 	K */
    0x38, /* 76 	L */
    0x15, /* 77 	M */
    0x37, /* 78 	N */
    0x3F, /* 79 	O */
    0x73, /* 80 	P */
    0x6B, /* 81 	Q */
    0x33, /* 82 	R */
    0x6D, /* 83 	S */
    0x78, /* 84 	T */
    0x3E, /* 85 	U */
    0x3E, /* 86 	V */
    0x2A, /* 87 	W */
    0x76, /* 88 	X */
    0x6E, /* 89 	Y */
    0x5B, /* 90 	Z */
    0x39, /* 91 	[ */
    0x64, /* 92 	\ */
    0x15, /* 93 	] */
    0x23, /* 94 	^ */
    0x08, /* 95 	_ */
    0x20, /* 96 	` */
    0x5F, /* 97 	a */
    0x7C, /* 98 	b */
    0x58, /* 99 	c */
    0x5E, /* 100	d */
    0x7B, /* 101	e */
    0x71, /* 102	f */
    0x6F, /* 103	g */
    0x74, /* 104	h */
    0x10, /* 105	i */
    0x1E, /* 106	j */
    0x75, /* 107	k */
    0x30, /* 108	l */
    0x15, /* 109	m */
    0x54, /* 110	n */
    0x5C, /* 111	o */
    0x73, /* 112	p */
    0x67, /* 113	q */
    0x50, /* 114	r */
    0x6D, /* 115	s */
    0x78, /* 116	t */
    0x1C, /* 117	u */
    0x1C, /* 118	v */
    0x2A, /* 119	w */
    0x76, /* 120	x */
    0x6E, /* 121	y */
    0x5B, /* 122	z */
    0x39, /* 123 	{ */
    0xB0, /* 124 	| */
    0x15, /* 125 	} */
    0x01  /* 126 	~ */
};

static const char defaultText[NUM_ROWS*ROW_LEN] PROGMEM =
{
	'V','E','r','S','.',' ','0','.','0','.','1',' ','r','E','A','d','y',' '
};

static volatile uint8_t text[NUM_ROWS][ROW_LEN] = 
{
    {
        0,0,0,0,0,0
    },
    {
        0,0,0,0,0,0
    },
    {
        0,0,0,0,0,0
    }
};

static uint8_t currentSeg = 1;
static volatile bool run500us = false;
static volatile uint8_t spiDataCtr = 0;
static volatile uint8_t spiDataCkSum = 0;
static volatile uint8_t spiDataIn[SPI_BUF_LEN];
static volatile uint8_t spiDataOut[SPI_BUF_LEN];
static volatile uint8_t dimValue = 255;
static volatile uint16_t beepDuration = 0;
static volatile uint16_t spiDataTimeout = SPI_TIMEOUT;
static volatile uint16_t usCtr = 0;
static BTN_State_t curBtnState = BUTTON_RELEASE;

#ifdef WITH_TESTMODE
	static uint16_t speed = 2000;
	static uint16_t ct = 0;
	static uint8_t ct2 = 16;
	static uint8_t ct3 = 0;
	static bool testMode = false;
#endif // WITH_TESTMDOE


static void sendDisplayData(void);
static void beep(uint16_t duration);
static void showVersion(void);
static void clear(void);

int main(void)
{
	/* Enable output pins */
    DDRA = _BV(DDR_PIN_SEROUT) | _BV(DDR_PIN_SERCLK) | _BV(DDR_PIN_RCLK) | _BV(DDR_PIN_BEEP);
    DDRB = _BV(DDR_PIN_ENABLE) | _BV(DDR_SPI_PIN_SO);
    
	/* Enable pullups on Button input and CS */
    PORTA |= _BV(PIN_BTN);    
	PORTB |= _BV(PIN_SPI_CS);
 
	/* Set the watchdog to 15ms */
    wdt_enable(WDTO_15MS);

	/* Clear the shift registers */
 	clear();
   
	/* Enable the 500µs timer interrupt */
	TCCR0A = _BV(WGM00);
    TCCR0B = _BV(CS00)|_BV(CS02); /* Prescaler 1024 */
    OCR0A = 7; /* 0,5ms with Prescaler 1024 @ 16MHZ*/
    TIMSK |= _BV(OCIE0A);

	/* Configure SPI in slave mode */
	USICR = _BV(USIWM0)|_BV(USICS1)|_BV(USICS0);
    USISR &= ~(0x0F);
	USISR |= _BV(USIOIF);
	USIDR = 0;
	USIBR = 0;

	/* Enable CS interrupt */
    MCUCR = _BV(ISC00);
    GIMSK = _BV(INT0);
        
	BTN_Init();
	spiDataCtr = 0;
	spiDataCkSum = 0;
	memset((void*)spiDataIn, 0xFF, SPI_BUF_LEN);
	memset((void*)spiDataOut, 0xFF, SPI_BUF_LEN);

    sei();

	/* To indicate start, beep for 100ms and show version */
	beep(10);
    showVersion();

	do 
    {
		ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
		{
			if (run500us == true)
			{
				/* Update the display contents every 500µs */
				sendDisplayData();
				run500us = false;
			}

			if (20 <= usCtr) /* 10ms */
			{
				NONATOMIC_BLOCK(NONATOMIC_RESTORESTATE)
				{
					/* Update the button state */
					BTN_Main();
				}

				/* Clear the display if no new data arrived for 
				 * the timeout duration (to prevent showing old data) */
				if (0 < spiDataTimeout)
				{
					if (0 == --spiDataTimeout)
					{
						clear();
					}
				}

				/* Disable the buzzer if the duration of the beep is over */				
				if (0 < beepDuration)
				{
					if (0 == --beepDuration)
					{
						PORTA &= ~_BV(PIN_BEEP);
					}
				}

				/* Trigger the watchdog */
				wdt_reset();

				usCtr = 0;
			}
		}
    } while (1);
}

void clear()
{
	/* Empty the textbuffer and clear the shift
	 * register contents by pulling the enable pin. */
	memset(text, 0, (NUM_ROWS*ROW_LEN));
	PORTB |= _BV(PIN_ENABLE);
	LATCH_CLOCK();
	PORTB &= ~_BV(PIN_ENABLE);
}

void beep(uint16_t duration)
{
	/* Enable the buzzer */
	beepDuration = duration;
	PORTA |= _BV(PIN_BEEP);
}

void showVersion(void)
{
	uint8_t ctr;

	/* Show the version string on the display */
	for (ctr = 0; ctr < (NUM_ROWS*ROW_LEN); ctr++)
	{
		text[ctr / ROW_LEN][ctr % ROW_LEN] = pgm_read_byte(&characters[pgm_read_byte(&defaultText[ctr]) - PRINTABLE_CHAR_MIN]);
	}
}

void sendDisplayData(void)
{
	uint8_t ctr;
	uint8_t ctr2;

#ifdef WITH_TESTMODE
	if (testMode == true)
	{
		if (ct++ >= speed)
		{
			text[ct3 / 6][ct3 % 6] = pgm_read_byte(&characters[ct2]);

			if (18 == ++ct3)
			{
				ct3 = 0;
				ct2++;
				if (ct2 >= 26)
				{
					ct2 = 16;
				}
			}
			if (255 - OCR1B > 10)
			{
				OCR1B += 10;
			}
			else
			{
				OCR1B = 10;
			}
			ct = 0;
		}
	}
#endif // WITH_TESTMODE

	/* Reset all pins */
	PORTA &= ~(_BV(PIN_RCLK) | _BV(PIN_SERCLK) | _BV(PIN_SEROUT));

	/* Shift out the data for the current segment in all
	 * rows and columns. */
	for (ctr = 0; ctr < NUM_ROWS; ctr++)
	{
		for (ctr2 = 0; ctr2 < ROW_LEN; ctr2++)
		{
			/* If the character at the current row and column
			 * has the currently active segment set, enable that segment. */
			if ((text[2 - ctr][5 - ctr2] & (currentSeg)) == (currentSeg))
			{
				PORTA |= _BV(PIN_SEROUT);
			}
			
			/* Generate a clock strobe to clock the data into the shift register */
			SER_CLOCK();

			PORTA &= ~_BV(PIN_SEROUT);
		}

		/* The two lowest bits of each register are unused.
		 * Generate two clock strobes to skip them */
		SER_CLOCK();
		SER_CLOCK();
	}

	/* Clock in the segment line */
	for (ctr = 8; ctr-- > 0; )
	{	
		/* Enable the segment column of the currently active segment */
		if ((currentSeg & _BV(ctr % 8)) == _BV(ctr % 8))
		{
			PORTA |= _BV(PIN_SEROUT);
		}

		/* Clock the data in */
		SER_CLOCK();

		PORTA &= ~_BV(PIN_SEROUT);
	}		

	/* Generate a latch strobe to update the outputs of the shift register */
	LATCH_CLOCK();

	/* Continue with the next segment */
	currentSeg <<= 1;
	if (0 == currentSeg)
	{
		currentSeg = 1;
	}
}

void BTN_Callback(uint8_t btnNum, BTN_State_t status)
{
    static BTN_State_t btnState = BUTTON_RELEASE;
	(void)btnNum;

	if (BUTTON_RELEASE == status)
	{
		if (BUTTON_PRESS == btnState)
		{
#ifdef WITH_TESTMODE
			if (speed <= 250)
			{
				speed = 2000;
			}
			else
			{
				speed /= 2;
			}
#endif // WITH_TESTMODE

			curBtnState = BUTTON_PRESS;
		}
	}
	else if (BUTTON_LONGPRESS == status)
	{
		memset(text, 0, NUM_ROWS*NUM_CHARS);
		curBtnState = BUTTON_LONGPRESS;
	}

	btnState = status;
}

ISR(INT0_vect)
{
    int32_t data;
    uint8_t ctr;
    uint8_t ctr2;
    char buf[12];

	/* Check if CS pin is high */
    if ((PINB & _BV(PIN_IN_SPI_CS)) == _BV(PIN_IN_SPI_CS))
    {
		/* Disable the SPI overflow interrupt and reset
		 * the receive buffers */
        USICR &= ~_BV(USIOIE);
		USISR &= ~(0x0F);
		USIDR = 0;
		USIBR = 0;

		/* Check if data has been received at all */
        if (0 < spiDataCtr)
        {
			/* Calculate the checksum of the received data */
			spiDataCkSum = 0;
			for (ctr = 0; ctr < (spiDataCtr - 1); ctr++)
			{
				spiDataCkSum = _crc8_ccitt_update(spiDataCkSum, spiDataIn[ctr]);
			}
            
			/* If the checksum is correct, process the command */
            if (spiDataIn[spiDataCtr - 1] == spiDataCkSum)
            {
				/* Check the command */
                switch(spiDataIn[0])
                {
					/* Reset the controller */
                    case SPI_CMD_RESET:
						
						/* Clear the display, then
						 * generate a watchdog timeout */
						PORTB |= _BV(PIN_ENABLE);
						LATCH_CLOCK();
						PORTB &= ~_BV(PIN_ENABLE);
						
						cli();
						while (1)
                        {
							_NOP();
                        }
                    break;
                    
                    /* Clear the display */
                    case SPI_CMD_CLEAR:
						clear();
                    break;
     
					/* Show version information */
                    case SPI_CMD_VERSION:
	                    showVersion();
						spiDataTimeout = SPI_TIMEOUT;
                    break;

					/* Beep for x ms */
                    case SPI_CMD_BEEP:
                        if (spiDataCtr == 3)
                        {
							beep(spiDataIn[1]);
							spiDataTimeout = SPI_TIMEOUT;
                        }
                    break;
                    
					/* Display XYZ position */
                    case SPI_CMD_POSITION:
                        if (spiDataCtr == 14)
                        {
							/* Each axis is 4 Bytes of data, so 12 bytes at all */
                            for (ctr = 0; ctr < 12; ctr+=4)
                            {
								/* build up the 32 bits position of one axis */
								data = spiDataIn[1+ctr];
                                data <<= 8;
                                data |= spiDataIn[2+ctr];
                                data <<= 8;
                                data |= spiDataIn[3+ctr];
                                data <<= 8;
                                data |= spiDataIn[4+ctr];
                                
								/* Limit to maximum character length */
								if (data > 999999)
								{
									data = 999999;
								}
								else if (data < -99999)
								{
									data = -99999;
								}

								/* Generate a formatted string */
                                snprintf_P(buf, 10, PSTR("%06ld"), data);

								/* Copy the string into the output buffer */
                                for (ctr2 = 6; ctr2-- > 0; )
                                {
									/* Convert the characters into the display character codes */
                                    if ((buf[ctr2] >= PRINTABLE_CHAR_MIN) && (buf[ctr2] <= PRINTABLE_CHAR_MAX))
                                    {
                                        text[ctr/3][ctr2] = pgm_read_byte(&characters[buf[ctr2] - PRINTABLE_CHAR_MIN]);
                                    }
                                    else
                                    {
                                        text[ctr/3][ctr2] = 0;
                                    }
                                }
                                
                                text[ctr/3][2] |= DECIMAL_POINT;
                            }

							spiDataTimeout = SPI_TIMEOUT;
                        }
                    break;

					/* Display a text */
                    case SPI_CMD_DISPLAY:
                        if (spiDataCtr >= 2)
                        {
							/* Copy the string into the output buffer */
                            for (ctr = 0; ctr < (spiDataCtr - 2); ctr++)
                            {
								/* Convert the characters into the display character codes */
                                if ((spiDataIn[ctr+1] >= PRINTABLE_CHAR_MIN) && (spiDataIn[ctr+1] <= PRINTABLE_CHAR_MAX))
                                {
                                    text[ctr / ROW_LEN][ctr % ROW_LEN] = pgm_read_byte(&characters[spiDataIn[ctr+1] - PRINTABLE_CHAR_MIN]);
                                }
                                else
                                {
                                    text[ctr / ROW_LEN][ctr % ROW_LEN] = 0;
                                }
                            }
							
							spiDataTimeout = SPI_TIMEOUT;                           
                        }
                    break;
#ifdef WITH_TESTMODE
					/* Switch on testmode */
					case SPI_CMD_TESTMODE:
						testMode = true;
						spiDataTimeout = SPI_TIMEOUT;
					break;
#endif // WITH_TESTMODE

                    default:
                    break;
                }
            }
        }

		/* Clear the receive buffer */
        spiDataCtr = 0;
        memset((void*)spiDataIn, 0xFF, SPI_BUF_LEN);
        memset((void*)spiDataOut, 0xFF, SPI_BUF_LEN);
    }
    else
    {
		/* Chip select has gone low.
		 * Enable the SPI overflow interrupt and
		 * reset the receive data counter */
		USISR |= _BV(USIOIF);
		USICR |= _BV(USIOIE);
		USISR &= ~(0x0F);
		USIDR = spiDataOut[0];
		USIBR = 0;

		spiDataCtr = 0;
    }
}

ISR(USI_OVF_vect)
{
	/* Reset the overflow flag */
   	USISR |= _BV(USIOIF);

	/* Copy the receive data in and the TX data to the output */
    spiDataIn[spiDataCtr] = USIBR;
	USIDR = spiDataOut[spiDataCtr];

	/* Count the received byte */
    spiDataCtr++;
    spiDataCtr %= SPI_BUF_LEN;

	/* Send out requested data */
	if (SPI_CMD_GETBUTTON == spiDataIn[0])
	{
		if (0 != (spiDataCtr % 2))
		{
			spiDataOut[spiDataCtr] = (uint8_t)curBtnState;
			curBtnState = BUTTON_RELEASE;		
		}
		else
		{
			spiDataOut[spiDataCtr] = _crc8_ccitt_update(0, spiDataOut[spiDataCtr - 1]);
		}
	}
}

ISR(TIMER0_COMPA_vect)
{
	run500us = true;
	usCtr++;
}

/* EOF */
