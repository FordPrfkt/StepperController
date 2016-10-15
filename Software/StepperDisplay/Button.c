/*!
***     \file	  Button.c
***     \ingroup  Button
***     \author   Daniel
***     \date	  4/17/2015 11:49:59 PM
***     \brief    TODO
***
******************************************************************************/

/*=============================================================================
 =======                            INCLUDES                             =======
 =============================================================================*/
#include <stdint.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include "Button.h"
/*=============================================================================
 =======               DEFINES & MACROS FOR GENERAL PURPOSE              =======
 =============================================================================*/

/*=============================================================================
 =======                       CONSTANTS  &  TYPES                       =======
 =============================================================================*/
/* Status information for each button */
typedef struct
{
	uint8_t status :2;    // RELEASE, PRESS, LONGPRESS, REPEAT
	uint8_t curStatus :1; // Current pin value
	uint8_t :5;           // unused
	uint8_t ctr;          // Debounce timer
} buttons_statusType;

/*=============================================================================
 =======                VARIABLES & MESSAGES & RESSOURCEN                =======
 =============================================================================*/

/*=============================================================================
 =======                              METHODS                           =======
 =============================================================================*/

/* -----------------------------------------------------
 * --               Public functions                  --
 * ----------------------------------------------------- */

/* -----------------------------------------------------
 * --               Private functions                  --
 * ----------------------------------------------------- */
buttons_statusType buttonStatus;

void BTN_Init(void)
{
	buttonStatus.ctr = 0;
	buttonStatus.status = BUTTON_RELEASE;
	buttonStatus.curStatus = 0;
}

void BTN_Main(void)
{
    /* Get current value from portpin... */
    uint8_t curState = !((PINA & (1 << PINA4)) >> PINA4);

    /* Actual state hasn't change since the last read... */
    if (buttonStatus.curStatus == curState)
    {
      /* If the current button state is different from the last stable state,
       * run the debounce timer. Also keep the debounce timer running if the
       * button is pressed, because we need it for long press/repeat
       * recognition */
      if ((buttonStatus.curStatus != buttonStatus.status) || (BUTTON_RELEASE != buttonStatus.status))
      {
        buttonStatus.ctr++;
      }
    }
    else
    {
      /* Actual state has changed since the last read. Restart the debounce
       * timer */
      buttonStatus.ctr = 0;
      buttonStatus.curStatus = curState;
    }

    /* Button was stable for DEBOUNCE_TIME * 20 ms */
    if (BUTTONS_DEBOUNCE_DELAY <= buttonStatus.ctr)
    {
      /* Button is pressed.. */
      if (1 == buttonStatus.curStatus)
      {
        switch (buttonStatus.status)
        {
          /* ..and was not pressed before. Send the PRESS event */
          case BUTTON_RELEASE:
            buttonStatus.status = BUTTON_PRESS;
            BTN_Callback(0, buttonStatus.status);
            break;

          /* ..and was pressed before. Wait for long press. */
          case BUTTON_PRESS:
            if (BUTTONS_LONGPRESS_DELAY <= buttonStatus.ctr)
            {
              /* Long press time reached. Send LONGPRESS event. */
              buttonStatus.status = BUTTON_LONGPRESS;
              BTN_Callback(0, buttonStatus.status);
            }
            break;

#if 1 == BUTTONS_USE_REPEAT
          /* ..and was long pressed before. Wait for repeat start. */
          case BUTTON_LONGPRESS:
            if (BUTTONS_REPEAT_DELAY <= buttonStatus.ctr)
            {
              /* Repeat time reached. Send first REPEAT event. */
              buttonStatus.status = BUTTON_REPEAT;
              BTN_Callback(0, buttonStatus.status);
            }
            break;

          /* ..and is in repeat. Send cyclic REPEAT events. */
          case BUTTON_REPEAT:
            if (BUTTONS_REPEAT_DELAY + BUTTONS_REPEAT_RATE <= buttonStatus.ctr)
            {
              buttonStatus.status = BUTTON_REPEAT;
              buttonStatus.ctr = BUTTONS_REPEAT_DELAY;
              BTN_Callback(0, buttonStatus.status);
            }
            break;

#else
          case BUTTON_LONGPRESS:
            /* Wait for button release */
            break;

#endif
          default:
            break;
        }
      }
      else
      {
        /* Button is not pressed anymore. Send RELEASE. */
        buttonStatus.status = BUTTON_RELEASE;
        buttonStatus.ctr = 0;
        BTN_Callback(0, buttonStatus.status);
      }
    }
}