#include <xc.h> 

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF 

// Keypad mapping for 74C922
const unsigned char keyMap[16] = {
    1, 2, 3, 0, 
    4, 5, 6, 0, 
    7, 8, 9, 0, 
    0, 0, 0, 0  
};

// Global Variables
unsigned char current_count = 0;
unsigned char myTMR0IF = 0;
unsigned char reset_delay = 0; // Flag to tell the delay to restart

// XC8 v1.33 Interrupt Syntax
void interrupt ISR(void) {
    
    // 1. External Interrupt (Keypad Press on RB0/DAVBL)
    if (INTF == 1) { 
        INTF = 0; // Clear hardware flag
        
        // Read the keypad, map it, and overwrite the counter
        unsigned char raw_key = PORTD & 0x0F;
        current_count = keyMap[raw_key];
        
        // Output immediately so the 7-segment feels responsive
        PORTC = current_count;
        
        // Tell the delay function to restart its counting!
        reset_delay = 1; 
    }
    
    // 2. Timer0 Interrupt (Triggers every 8.192 ms)
    if (T0IF == 1) { 
        T0IF = 0;       // Clear hardware flag
        myTMR0IF = 1;   // Alert the delay loop
    }
}

// Custom Delay Subroutine
void delay(int cnt) {
    int of_count = 0;

    // Loop until we reach the target number of Timer0 overflows
    while (of_count < cnt) {
        
        // If a key was pressed, restart the wait time!
        if (reset_delay == 1) {
            of_count = 0;       
            reset_delay = 0;    
        }
        
        // Count one 8.192ms tick
        if (myTMR0IF == 1) {
            of_count++;       
            myTMR0IF = 0;     
        }
    } 
}

void main(void) {
    // 1. Port Configuration
    TRISB = 0xFF; // RB0 as input (DAVBL from keypad)
    TRISC = 0x00; // RC0-RC3 as output (To 7-Segment Decoder)
    TRISD = 0xFF; // RD0-RD3 as input (Data from keypad)

    PORTC = current_count; // Start display at 0

    // 2. Timer0 & Interrupt Configuration
    // 0xC4 = Rising edge on RB0, Internal Clock, 1:32 Prescaler (8.192ms)
    OPTION_REG = 0xC4; 

    INTF = 0; 
    INTE = 1; // Enable External Interrupt (RB0)

    T0IF = 0; 
    T0IE = 1; // Enable Timer0 Interrupt
    
    GIE = 1;  // Enable Global Interrupts

    // 3. Main Loop
    while(1) {
        
        // Wait exactly 0.8 seconds (98 * 8.192ms)
        delay(98); 
        
        // Increment the counter
        current_count++;
        
        // Wrap around to 0 if it goes past 9
        if (current_count > 9) {
            current_count = 0;
        }
        
        // Update the 7-segment display
        PORTC = current_count; 
    }
}