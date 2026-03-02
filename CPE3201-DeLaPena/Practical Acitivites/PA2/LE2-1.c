#include <xc.h>

#define _XTAL_FREQ 4M
#define RS RC0
#define EN RC1
#define RW RC2
#define delay for(j=0;j<100;j++)

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

int j;

void instCtrl(unsigned char data)
{
    PORTB= data;
    RS=0;
    RW=0;
    EN=1;
    delay;
    EN=0;
}

void initLCD()
{
    instCtrl(0x38); // 0011 1000 -> 8 bits for data + 2 line display + 5 by 7 dot matris + X +X where X is dont care bits
    instCtrl(0x08); //turning off
    instCtrl(0x01); //clearing display
    instCtrl(0x06); // entry mode set 
    instCtrl(0x0E); // 0000 1100  -> turning display on | L L L L H D C B | Where D is high when display on nad L when off | C is for curose 1 = on 0 = off | B is for blinkin 1 = on 0 = off
    instCtrl(0x06); // 0000 0110 -> 
    instCtrl(0x80); // 1000 0000 
   
   
}

void dataCtrl(unsigned char b)
{
    PORTB=b;
    RS=1;
    RW=0;
    EN=1;
    delay;
    EN=0;
}



void main(void)
 {
    
    TRISB = 0X00;
    TRISC = 0X00;
    TRISD = 0XFF;
    
    // Intializing LCD
    initLCD();
   instCtrl(0xC6);
   dataCtrl('H');
   dataCtrl('E');
   dataCtrl('L');
   dataCtrl('L');
   dataCtrl('O');
   dataCtrl('!');
    
    while(1)
       ;
      
 }

 