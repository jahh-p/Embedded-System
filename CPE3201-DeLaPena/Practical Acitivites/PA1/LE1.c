#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main(void) {
    int cnt;

    ADCON1 = 0x07;  
    TRISB = 0x00;    
    TRISA = 0x01;    
    PORTB = 0x00;    

    while(1) {
        if (RA0) {
            for (int i = 0; i < 3; i++) {
                PORTB = 0x01;
                for (cnt = 0; cnt < 10000; cnt++);
                PORTB = 0x00;
                for (cnt = 0; cnt < 10000; cnt++);
            }
            while (RA0); 
        }
    }
}
