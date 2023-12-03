;---------------
; Assembly Code
;---------------
#define __SFR_OFFSET 0x00
#include "avr/io.h"
;------------------------
.global start
.global led1
.global led2
.global led3
;------------------------
start:
    SBI   DDRB, 5             ;set PB5 (D19) as i/o
    SBI   DDRB, 4             ;set PB4 (D18) as i/o
    SBI   DDRB, 3             ;set PB3 (D17) as i/o
    RET                       ;return to setup() function
;---------------------------------------------------------------------------
led1:
    SBI   PORTB, 5            ;set D19 to high
    CBI   PORTB, 4            ;set D18 to low
    CBI   PORTB, 3            ;set D17 to low
    RET                       ;return to loop() function
;---------------------------------------------------------------------------
led2:
    SBI   PORTB, 4            ;set D18 to high
    CBI   PORTB, 5            ;set D19 to low
    CBI   PORTB, 3            ;set D17 to low
    RET                       ;return to loop() function
;---------------------------------------------------------------------------
led3:
    SBI   PORTB, 3            ;set D17 to high
    CBI   PORTB, 4            ;set D18 to low
    CBI   PORTB, 5            ;set D19 to low
    RET                       ;return to loop() function
;---------------------------------------------------------------------------
