/*!
***     \file	  Button.c
***     \ingroup  Button
***     \author   Daniel
***     \date	  4/17/2015 11:50:10 PM
***     \brief    TODO
***
******************************************************************************/

/* Header file guard symbol to prevent multiple includes */
#ifndef Button_H_
#define Button_H_

/* storage class specifier if used with C++ */
#ifdef  __cplusplus
  extern "C" {
#endif

/*=============================================================================
=======                            INCLUDES                             =======
=============================================================================*/

/*=============================================================================
=======               DEFINES & MACROS FOR GENERAL PURPOSE              =======
=============================================================================*/
#define BUTTONS_HIGH_ACTIVE 0
#define BUTTONS_USE_PULLUPS 1
#define BUTTONS_USE_REPEAT 0
#define BUTTONS_DEBOUNCE_DELAY 10
#define BUTTONS_LONGPRESS_DELAY 150
#define BUTTONS_REPEAT_DELAY 200
#define BUTTONS_REPEAT_RATE 50
/*=============================================================================
=======                       CONSTANTS  &  TYPES                       =======
=============================================================================*/
typedef enum BTN_State_e
{
	BUTTON_RELEASE   = 0, // Button is not pressed / released
	BUTTON_PRESS     = 1, // Button pressed
	BUTTON_LONGPRESS = 2, // Long pressed button
	BUTTON_REPEAT    = 3  // Repeat during long presses button
}BTN_State_t;

/*=============================================================================
=======                              EXPORTS                            =======
=============================================================================*/
void BTN_Init(void);
void BTN_Main(void);
extern void BTN_Callback(uint8_t btnNum, BTN_State_t status);
/* end of storage class specifier if used with C++ */
#ifdef  __cplusplus
}
#endif

#endif /*Button_H_*/
