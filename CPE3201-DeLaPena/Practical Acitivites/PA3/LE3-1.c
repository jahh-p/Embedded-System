#include <xc.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 

// Global variables for v1.33 compatibility
unsigned char counting_state = 0; // 0 = stopped, 1 = counting
unsigned char timer_ticks = 0;
unsigned char counter = 0;

// Interrupt Service Routine (v1.33 syntax)
void interrupt ISR(void) {
    
    // 1. External Button Interrupt on RB0 (Start/Stop)
    if (INTF == 1) {
        INTF = 0;              // Clear the hardware flag
        counting_state ^= 1;   // Toggle between 1 (Start) and 0 (Stop)
    }
    
    // 2. Timer0 Interrupt (Heartbeat for the delay)
    if (T0IF == 1) {
        T0IF = 0;              // Clear Timer0 flag
        timer_ticks++;         // Count how many times Timer0 overflows
    }
}

void main(void) {
    // 1. Port Configuration
    TRISB = 0xFF; // Set RB0 as input for the button
    TRISC = 0x00; // Set RC0-RC3 as output for the 7-segment decoder
    PORTC = 0x00; // Initialize display to '0'

    // 2. Timer0 and Interrupt Configuration
    // 0xC4 = 1100 0100 (No pull-ups, Rising Edge INT, Internal Clock, 1:32 Prescaler)
    OPTION_REG = 0xC4; 

    // Enable External Interrupt (RB0)
    INTF = 0;
    INTE = 1;

    // Enable Timer0 Interrupt
    T0IF = 0;
    T0IE = 1;

    // Enable Global Interrupts
    GIE = 1;

    // 3. Main Loop
    while(1) {
        // Only count if the button has turned the state to 1
        if (counting_state == 1) {
            
            // Wait for 122 Timer0 overflows (Approx 1 second at 4MHz)
            if (timer_ticks >= 122) {
                timer_ticks = 0; // Reset the tick counter
                
                counter++; // Go to next number
                
                // Wrap around back to 0 after hitting 9 (for the 7-seg decoder)
                if (counter > 9) {
                    counter = 0;
                }
                
                // Send the binary number to the decoder on RC0-RC3
                PORTC = counter; 
            }
        }
    }
}