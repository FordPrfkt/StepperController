/*
 * StepperDisplay.c
 *
 * Created: 01.10.2016 02:34:39
 * Author : Daniel
 */ 

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/sfr_defs.h>
#include <avr/pgmspace.h>
#include <avr/signature.h>
#include <avr/interrupt.h>

#define DDR_SEROUT (DDRA)
#define DDR_PIN_SEROUT (DDA1)
#define DDR_PIN_SERCLK (DDA2)
#define DDR_PIN_RCLK (DDA0)

#define DDR_BEEP (DDRA)
#define DDR_PIN_BEEP (DDA3)

#define DDR_ENABLE (DDRB)
#define DDR_PIN_ENABLE (DDB3)

#define PORT_SEROUT (PORTA)
#define PIN_SEROUT (PORTA1)
#define PIN_SERCLK (PORTA2)
#define PIN_RCLK (PORTA0)

#define PORT_BEEP (PORTA)
#define PIN_BEEP (PORTA3)

#define PORT_BTN (PORTA)
#define PIN_BTN (PORTA4)

#define PORT_ENABLE (PORTB)
#define PIN_ENABLE (PORTB3)

#define SPI_CMD_RESET (0x50)
#define SPI_CMD_CLEAR (0x40)
#define SPI_CMD_DISPLAY (0x10)
#define SPI_CMD_BEEP (0x20)
#define SPI_CMD_BRIGHTNESS (0x30)

#define PRINTABLE_CHAR_MIN (32u)
#define PRINTABLE_CHAR_MAX (126u)
#define NUM_CHARS ((PRINTABLE_CHAR_MAX - PRINTABLE_CHAR_MIN) + 1)

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

static volatile uint8_t text[3][6] = 
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

static volatile uint8_t serialOutBuf[4] = {0,0,0,0};
static volatile uint8_t runMainCtr = 0;

int main(void)
{
    DDR_SEROUT |= DDR_PIN_SEROUT|DDR_PIN_SERCLK|DDR_PIN_RCLK;
    DDR_BEEP |= DDR_PIN_BEEP;
    DDR_ENABLE |= DDR_PIN_ENABLE;
    
    wdt_enable(WDTO_15MS);
    
    TCCR0B |= _BV(TSM);
    TCCR0B |= _BV(CS00)|_BV(CS02); /* Prescaler 1024 */
    TIMSK |= _BV(OCIE0A);
    OCR0A = 58; /* 5ms with Prescaler 1024 @ 12MHZ*/
    TCCR0B &= ~_BV(TSM);
    
    PORT_ENABLE |= PIN_ENABLE;
    
    if (10 == runMainCtr)
    {
        wdt_reset();
        runMainCtr = 0;
    }    
}

ISR(USI_START_vect)
{
    
}

ISR(TIMER0_COMPA_vect)
{
    static volatile uint8_t currentSeg = 1;
    static volatile bool outputMode = false;
    static volatile uint8_t bitCtr = 0;
    
    uint8_t currentChar = 0;
    uint8_t currentRow = 0;
    
    if (false == outputMode)
    {
        runMainCtr += 5;
        memset((void*)serialOutBuf, 0, sizeof(serialOutBuf));
        
        for (currentRow = 0; currentRow < 3; currentRow++)
        {
            for (currentChar = 0; currentChar < 6; currentChar++)
            {
                if ((text[currentRow][currentChar] & (currentSeg)) == (currentSeg))
                {
                    serialOutBuf[currentRow + 1] |= _BV(currentChar + 3);
                }
            }
        }
    
        serialOutBuf[0] = currentSeg;
    
        currentSeg <<= 1;
        if (0 == currentSeg)
        {
            currentSeg = 1;
        }
        
        outputMode = true;

        TCCR0B |= _BV(TSM);
        TCCR0B &= ~(_BV(CS00)|_BV(CS01)|_BV(CS02)); /* Prescaler 0 */
        OCR0A = 12; /* 1MHz with Prescaler 0 @ 12MHZ*/
        TCNT0L = TCNT0H = 0;
        TCCR0B &= ~_BV(TSM);
    }
    else
    {
        if (33 > bitCtr)
        {
            PORT_SEROUT |= PIN_RCLK;
            PORT_SEROUT |= PIN_SERCLK;
        
            if ((serialOutBuf[bitCtr / 8] & _BV(bitCtr)) == _BV(bitCtr))
            {
                PORT_SEROUT |= PIN_SEROUT;
            }
            else
            {
                PORT_SEROUT &= ~PIN_SEROUT;
            }

            PORT_SEROUT &= ~PIN_SERCLK;
            
            bitCtr++;
        }
        else
        {
            PORT_SEROUT |= (PIN_SEROUT | PIN_SERCLK);
            
            if (33 == bitCtr)
            {
                PORT_SEROUT &= ~PIN_RCLK;
                bitCtr++;
            }
            else
            {
                PORT_SEROUT |= PIN_RCLK;
                bitCtr = 0;
                outputMode = false;

                TCCR0B |= _BV(TSM);
                TCCR0B |= _BV(CS00)|_BV(CS02); /* Prescaler 1024 */
                OCR0A = 58; /* 5ms with Prescaler 1024 @ 12MHZ*/
                TCNT0L = TCNT0H = 0;
                TCCR0B &= ~_BV(TSM);
            }
        }        
    }
}
