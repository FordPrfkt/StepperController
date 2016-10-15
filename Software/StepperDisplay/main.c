/*
 * StepperDisplay.c
 *
 * Created: 01.10.2016 02:34:39
 * Author : Daniel
 */ 

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <util/crc16.h>
#include <util/atomic.h>
#include <avr/cpufunc.h>
#include <avr/sfr_defs.h>
#include <avr/pgmspace.h>
#include <avr/signature.h>
#include <avr/interrupt.h>
#include "Button.h"

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

#define SPI_CMD_RESET (0x60)
#define SPI_CMD_CLEAR (0x50)
#define SPI_CMD_VERSION (0x05)
#define SPI_CMD_POSITION (0x10)
#define SPI_CMD_DISPLAY (0x20)
#define SPI_CMD_BEEP (0x30)
#define SPI_CMD_BRIGHTNESS (0x40)
#define SPI_CMD_GETBUTTON (0x50)

#define PRINTABLE_CHAR_MIN (32u)
#define PRINTABLE_CHAR_MAX (126u)
#define NUM_CHARS ((PRINTABLE_CHAR_MAX - PRINTABLE_CHAR_MIN) + 1)

#define SPI_BUF_LEN (20)
#define NUM_ROWS (3)
#define ROW_LEN (6)

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

static const char defaultText[NUM_ROWS][ROW_LEN] PROGMEM =
{
	{
		'V','E','r','S','.',' '
	},
	{
		'0','.','0','.','1',' '
	},
	{
		'r','E','A','d','y',' '
	}
};

static volatile uint8_t text[NUM_ROWS][ROW_LEN] = 
{
    {
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF /* 8.8.8.8.8.8. */
    },
    {
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF /* 8.8.8.8.8.8. */
    },
    {
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF /* 8.8.8.8.8.8. */
    }
};

static volatile uint16_t beepDuration = 0;

static volatile uint8_t serialOutBuf[4] = {0,0,0,0};
static volatile uint8_t runMainCtr = 0;

static volatile uint8_t spiDataIn[SPI_BUF_LEN];
static volatile uint8_t spiDataOut[SPI_BUF_LEN];
static volatile uint8_t spiDataCtr = 0;
static volatile uint8_t spiDataCkSum = 0;
static volatile BTN_State_t curBtnState = BUTTON_RELEASE;

int main(void)
{
    DDRA = _BV(DDR_PIN_SEROUT) |_BV(DDR_PIN_SERCLK) |_BV(DDR_PIN_RCLK) |_BV(DDR_PIN_BEEP);
    DDRB = _BV(DDR_PIN_ENABLE) | _BV(DDR_SPI_PIN_SO);
    
    PORTA |= _BV(PIN_BTN);
    PORTB |= _BV(PIN_SPI_CS);
    
    PORTA &= ~_BV(PIN_RCLK);
    _NOP();
    _NOP();
    PORTA |= _BV(PIN_RCLK);
    _NOP();
    _NOP();
    PORTA &= ~_BV(PIN_RCLK);
    
    wdt_enable(WDTO_30MS);
    
    TCCR0A = _BV(WGM00);
    TCNT0L = 0;
    OCR0A = 58; /* 5ms with Prescaler 1024 @ 12MHZ*/
    TIMSK = _BV(OCIE0A);
    TCCR0B = _BV(CS00)|_BV(CS02); /* Prescaler 1024 */
    
    TCCR1A = _BV(PWM1B)|_BV(COM1B1)|_BV(COM1B0);
    OCR1B = 127;
    TCNT1 = 0;
    TCCR1B = _BV(CS11)|_BV(CS10)|_BV(CS13);
    
    USICR = _BV(USIWM0)|_BV(USICS1);
    USIPP = 0;
    
    MCUCR = _BV(ISC00);
    GIMSK = _BV(INT0);
    
    PORTB |= _BV(PIN_ENABLE);
    
	BTN_Init();
	memset((void*)spiDataIn, 0xFF, SPI_BUF_LEN);
	memset((void*)spiDataOut, 0xFF, SPI_BUF_LEN);

    sei();

    do 
    {
        if (10 == runMainCtr)
        {
            ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
            {
                BTN_Main();
                if (10 <= beepDuration)
                {
                    PORTA |= _BV(PIN_BEEP);
                    beepDuration -= 10;
                }
                else
                {
                    beepDuration = 0;
                    PORTA &= ~_BV(PIN_BEEP);
                }
            
                wdt_reset();
                runMainCtr = 0;
            }
        }
    } while (1);
}

void BTN_Callback(uint8_t btnNum, BTN_State_t status)
{
    static BTN_State_t btnState = BUTTON_RELEASE;

	if (BUTTON_RELEASE == status)
	{
		if (BUTTON_PRESS == btnState)
		{
			curBtnState = BUTTON_PRESS;
		}
	}
	else if (BUTTON_LONGPRESS == status)
	{
		curBtnState = BUTTON_LONGPRESS;
	}

	btnState = status;
}

ISR(INT0_vect)
{
    uint32_t data;
    uint8_t ctr;
    uint8_t ctr2;
    char buf[10];
    
    if ((PINB & _BV(PIN_IN_SPI_CS)) == _BV(PIN_IN_SPI_CS))
    {
        USICR &= ~_BV(USIOIF);
        
        if (0 < spiDataCtr)
        {           
            if (spiDataIn[spiDataCtr - 1] == spiDataCkSum)
            {
                switch(spiDataIn[0])
                {
                    case SPI_CMD_RESET:
						cli();

						while (1)
                        {
							_NOP();
                        }
                    break;
                    
                    case SPI_CMD_CLEAR:
                        memset(text, 0, (NUM_ROWS*ROW_LEN));
                    break;
                    
                    case SPI_CMD_BRIGHTNESS:
                        if (spiDataCtr == 3)
                        {
                            OCR1B = spiDataIn[1];
                        }
                    break;

                    case SPI_CMD_VERSION:
                    if (spiDataCtr == 1)
                    {
	                    for (ctr = 0; ctr < (NUM_ROWS*ROW_LEN); ctr++)
	                    {
		                    text[ctr / ROW_LEN][ctr % ROW_LEN] = pgm_read_byte(characters[pgm_read_byte(defaultText[ctr]) - PRINTABLE_CHAR_MIN]);
	                    }
                    }
                    break;

                    case SPI_CMD_BEEP:
                        if (spiDataCtr == 4)
                        {
                            beepDuration = (spiDataIn[1]<<8) | spiDataIn[2];
                        }                        
                    break;
                    
                    case SPI_CMD_POSITION:
                        if (spiDataCtr == 11)
                        {
                            for (ctr = 0; ctr < 6; ctr+=3)
                            {
                                data = spiDataIn[1+ctr];
                                data <<= 8;
                                data |= spiDataIn[2+ctr];
                                data <<= 8;
                                data |= spiDataIn[3+ctr];
                                
                                utoa(data, buf, 10);
                                
                                for (ctr2 = 6; ctr2 > 0; ctr2--)
                                {
                                    if ((buf[ctr] >= PRINTABLE_CHAR_MIN) && (buf[ctr] <= PRINTABLE_CHAR_MAX))
                                    {
                                        text[ctr/3][ctr2] = pgm_read_byte(characters[buf[ctr] - PRINTABLE_CHAR_MIN]);
                                    }
                                    else
                                    {
                                        text[ctr/3][ctr2] = 0;
                                    }
                                }
                                
                                text[ctr/3][2] |= DECIMAL_POINT;
                            }
                        }
                    break;

                    case SPI_CMD_DISPLAY:
                        if (spiDataCtr == SPI_BUF_LEN)
                        {
                            for (ctr = 0; ctr < (NUM_ROWS*ROW_LEN); ctr++)
                            {
                                if ((spiDataIn[ctr+1] >= PRINTABLE_CHAR_MIN) && (spiDataIn[ctr+1] <= PRINTABLE_CHAR_MAX))
                                {
                                    text[ctr / ROW_LEN][ctr % ROW_LEN] = pgm_read_byte(characters[spiDataIn[ctr+1] - PRINTABLE_CHAR_MIN]);
                                }
                                else
                                {
                                    text[ctr / ROW_LEN][ctr % ROW_LEN] = 0;
                                }
                            }                            
                        }
                    break;
					                                          
                    default:
                    break;
                }
            }
        }
    }
    else
    {
        USICR |= _BV(USIOIF);
        spiDataCtr = 0;
        spiDataCkSum = 0;
        memset((void*)spiDataIn, 0xFF, SPI_BUF_LEN);
        memset((void*)spiDataOut, 0xFF, SPI_BUF_LEN);        
    }
}

ISR(USI_OVF_vect)
{
    spiDataIn[spiDataCtr] = USIBR;
    spiDataCkSum = _crc8_ccitt_update(spiDataCkSum, spiDataIn[spiDataCtr]);
    
    spiDataCtr++;
    spiDataCtr %= SPI_BUF_LEN;

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

	USIBR = spiDataOut[spiDataCtr];
}

ISR(TIMER0_COMPA_vect, ISR_BLOCK)
{
    static volatile uint8_t currentSeg = 1;
    static volatile bool outputMode = false;
    static volatile uint8_t bitCtr = 0;
    
    uint8_t currentChar = 0;
    uint8_t currentRow = 0;
    
    if (false == outputMode)
    {
        runMainCtr += 5;
        memset((void*)&serialOutBuf[0], 0, 4);
        
        for (currentRow = 0; currentRow < NUM_ROWS; currentRow++)
        {
            for (currentChar = 0; currentChar < ROW_LEN; currentChar++)
            {
                if ((text[2 - currentRow][currentChar] & (currentSeg)) == (currentSeg))
                {
                    serialOutBuf[currentRow] |= _BV(currentChar + 2);
                }
            }
        }
    
        serialOutBuf[3] = currentSeg;
    
        currentSeg <<= 1;
        if (0 == currentSeg)
        {
            currentSeg = 1;
        }
        
        outputMode = true;

        TCCR0B |= _BV(TSM);
        TCCR0B &= ~(_BV(CS00)|_BV(CS01)|_BV(CS02)); /* Prescaler 0 */
        TCCR0B |= _BV(CS00); /* Prescaler 1 */
        OCR0A = 6; /* 2MHz with Prescaler 1 @ 12MHZ*/
        TCNT0L = 0;
        TCCR0B &= ~_BV(TSM);
    }
    else
    {
        if (33 > bitCtr)
        {
            PORTA &= ~_BV(PIN_RCLK);
            PORTA &= ~_BV(PIN_SERCLK);
        
            if ((serialOutBuf[bitCtr / 8] & _BV(bitCtr)) == _BV(bitCtr))
            {
                PORTA |= _BV(PIN_SEROUT);
            }
            else
            {
                PORTA &= ~_BV(PIN_SEROUT);
            }
            
            _NOP();
            _NOP();
            _NOP();
            PORTA |= _BV(PIN_SERCLK);
            
            bitCtr++;
        }
        else
        {
            PORTA &= ~(_BV(PIN_SEROUT) | _BV(PIN_SERCLK));
            _NOP();
            PORTA |= _BV(PIN_RCLK);
            _NOP();
            _NOP();
            _NOP();
            _NOP();
            PORTA &= ~_BV(PIN_RCLK);
            
            bitCtr = 0;
            outputMode = false;

            TCCR0B |= _BV(TSM);
            TCCR0B |= _BV(CS00)|_BV(CS02); /* Prescaler 1024 */
            OCR0A = 58; /* 5ms with Prescaler 1024 @ 12MHZ*/
            TCNT0L = 0;
            TCCR0B &= ~_BV(TSM);
        }        
    }
}
