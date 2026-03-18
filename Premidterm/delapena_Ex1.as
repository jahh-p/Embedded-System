opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_clearDisplay
	FNCALL	_main,_getKeyFromPort
	FNCALL	_main,_initLCD
	FNCALL	_main,_sendLCDData
	FNCALL	_main,_setCursorPosition
	FNCALL	_setCursorPosition,_sendLCDCommand
	FNCALL	_sendLCDData,_delay
	FNCALL	_initLCD,_clearDisplay
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_sendLCDCommand
	FNCALL	_clearDisplay,_delay
	FNCALL	_clearDisplay,_sendLCDCommand
	FNCALL	_sendLCDCommand,_delay
	FNROOT	_main
	global	_keypadLayout1
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	16
_keypadLayout1:
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	030h
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	044h
	retlw	0
	global __end_of_keypadLayout1
__end_of_keypadLayout1:
	global	_keypadLayout
psect	strings
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	15
_keypadLayout:
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	041h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	042h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	043h
	retlw	031h
	retlw	031h
	retlw	031h
	retlw	031h
	retlw	044h
	retlw	0
	global __end_of_keypadLayout
__end_of_keypadLayout:
	global	_keypadLayout1
	global	_keypadLayout
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_RD4
_RD4	set	0x44
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"delapena_Ex1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_clearDisplay:	; 0 bytes @ 0x0
?_sendLCDCommand:	; 0 bytes @ 0x0
?_sendLCDData:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_setCursorPosition:	; 0 bytes @ 0x0
??_getKeyFromPort:	; 0 bytes @ 0x0
?_getKeyFromPort:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	1
	global	getKeyFromPort@fol
getKeyFromPort@fol:	; 1 bytes @ 0x1
	ds	1
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	2
??_sendLCDCommand:	; 0 bytes @ 0x6
??_sendLCDData:	; 0 bytes @ 0x6
	global	sendLCDCommand@cmd
sendLCDCommand@cmd:	; 1 bytes @ 0x6
	global	sendLCDData@data
sendLCDData@data:	; 1 bytes @ 0x6
	ds	1
??_clearDisplay:	; 0 bytes @ 0x7
??_initLCD:	; 0 bytes @ 0x7
??_setCursorPosition:	; 0 bytes @ 0x7
	ds	1
	global	setCursorPosition@cmd
setCursorPosition@cmd:	; 1 bytes @ 0x8
	ds	1
	global	setCursorPosition@pos
setCursorPosition@pos:	; 1 bytes @ 0x9
	ds	1
??_main:	; 0 bytes @ 0xA
	ds	1
	global	main@hexIn
main@hexIn:	; 1 bytes @ 0xB
	ds	1
	global	main@posCount
main@posCount:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    37
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_setCursorPosition
;!    _setCursorPosition->_sendLCDCommand
;!    _sendLCDData->_delay
;!    _initLCD->_sendLCDCommand
;!    _clearDisplay->_sendLCDCommand
;!    _sendLCDCommand->_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0    2081
;!                                             10 COMMON     3     3      0
;!                       _clearDisplay
;!                     _getKeyFromPort
;!                            _initLCD
;!                        _sendLCDData
;!                  _setCursorPosition
;! ---------------------------------------------------------------------------------
;! (1) _setCursorPosition                                    3     3      0     322
;!                                              7 COMMON     3     3      0
;!                     _sendLCDCommand
;! ---------------------------------------------------------------------------------
;! (1) _sendLCDData                                          1     1      0     247
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     958
;!                       _clearDisplay
;!                              _delay
;!                     _sendLCDCommand
;! ---------------------------------------------------------------------------------
;! (2) _clearDisplay                                         0     0      0     479
;!                              _delay
;!                     _sendLCDCommand
;! ---------------------------------------------------------------------------------
;! (2) _sendLCDCommand                                       1     1      0     247
;!                                              6 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                6     4      2     232
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _getKeyFromPort                                       2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clearDisplay
;!     _delay
;!     _sendLCDCommand
;!       _delay
;!   _getKeyFromPort
;!   _initLCD
;!     _clearDisplay
;!       _delay
;!       _sendLCDCommand
;!         _delay
;!     _delay
;!     _sendLCDCommand
;!       _delay
;!   _sendLCDData
;!     _delay
;!   _setCursorPosition
;!     _sendLCDCommand
;!       _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      D       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 80 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hexIn           1   11[COMMON] unsigned char 
;;  posCount        1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   63[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_clearDisplay
;;		_getKeyFromPort
;;		_initLCD
;;		_sendLCDData
;;		_setCursorPosition
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	80
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	80
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	82
	
l593:	
;delapena_Ex1.c: 82: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	83
;delapena_Ex1.c: 83: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	84
	
l595:	
;delapena_Ex1.c: 84: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	86
	
l597:	
;delapena_Ex1.c: 86: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	88
	
l599:	
;delapena_Ex1.c: 88: initLCD();
	fcall	_initLCD
	line	89
	
l601:	
;delapena_Ex1.c: 89: unsigned char posCount = 0;
	clrf	(main@posCount)
	goto	l603
	line	91
;delapena_Ex1.c: 91: while(1) {
	
l64:	
	line	93
	
l603:	
;delapena_Ex1.c: 93: if (RD4) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l603
u80:
	line	94
	
l605:	
;delapena_Ex1.c: 94: unsigned char hexIn = getKeyFromPort();
	fcall	_getKeyFromPort
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@hexIn)
	line	97
;delapena_Ex1.c: 97: while (RD4);
	goto	l66
	
l67:	
	
l66:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u91
	goto	u90
u91:
	goto	l66
u90:
	goto	l607
	
l68:	
	line	100
	
l607:	
;delapena_Ex1.c: 100: if (posCount >= 80) {
	movlw	(050h)
	subwf	(main@posCount),w
	skipc
	goto	u101
	goto	u100
u101:
	goto	l613
u100:
	line	101
	
l609:	
;delapena_Ex1.c: 101: clearDisplay();
	fcall	_clearDisplay
	line	102
	
l611:	
;delapena_Ex1.c: 102: posCount = 0;
	clrf	(main@posCount)
	goto	l613
	line	103
	
l69:	
	line	106
	
l613:	
;delapena_Ex1.c: 103: }
;delapena_Ex1.c: 106: setCursorPosition(posCount);
	movf	(main@posCount),w
	fcall	_setCursorPosition
	line	110
	
l615:	
;delapena_Ex1.c: 110: sendLCDData(keypadLayout[hexIn]);
	movf	(main@hexIn),w
	addlw	low((_keypadLayout)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	fcall	_sendLCDData
	line	111
	
l617:	
;delapena_Ex1.c: 111: sendLCDData(keypadLayout1[hexIn]);
	movf	(main@hexIn),w
	addlw	low((_keypadLayout1)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	fcall	_sendLCDData
	line	114
	
l619:	
;delapena_Ex1.c: 114: posCount++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@posCount),f
	goto	l603
	line	115
	
l65:	
	goto	l603
	line	116
	
l70:	
	line	91
	goto	l603
	
l71:	
	line	118
;delapena_Ex1.c: 115: }
;delapena_Ex1.c: 116: }
;delapena_Ex1.c: 117: return 0;
;	Return value of _main is never used
	
l72:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_setCursorPosition

;; *************** function _setCursorPosition *****************
;; Defined at:
;;		line 53 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    9[COMMON] unsigned char 
;;  cmd             1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sendLCDCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	53
global __ptext1
__ptext1:	;psect for function _setCursorPosition
psect	text1
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	53
	global	__size_of_setCursorPosition
	__size_of_setCursorPosition	equ	__end_of_setCursorPosition-_setCursorPosition
	
_setCursorPosition:	
;incstack = 0
	opt	stack 5
; Regs used in _setCursorPosition: [wreg+status,2+status,0+pclath+cstack]
;setCursorPosition@pos stored from wreg
	movwf	(setCursorPosition@pos)
	line	56
	
l569:	
;delapena_Ex1.c: 54: unsigned char cmd;
;delapena_Ex1.c: 56: if (pos == 0) cmd = 0xC6;
	movf	(setCursorPosition@pos),f
	skipz
	goto	u41
	goto	u40
u41:
	goto	l573
u40:
	
l571:	
	movlw	(0C6h)
	movwf	(??_setCursorPosition+0)+0
	movf	(??_setCursorPosition+0)+0,w
	movwf	(setCursorPosition@cmd)
	goto	l585
	line	57
	
l43:	
	
l573:	
;delapena_Ex1.c: 57: else if (pos == 20) cmd = 0xC6;
	movf	(setCursorPosition@pos),w
	xorlw	014h
	skipz
	goto	u51
	goto	u50
u51:
	goto	l577
u50:
	
l575:	
	movlw	(0C6h)
	movwf	(??_setCursorPosition+0)+0
	movf	(??_setCursorPosition+0)+0,w
	movwf	(setCursorPosition@cmd)
	goto	l585
	line	58
	
l45:	
	
l577:	
;delapena_Ex1.c: 58: else if (pos == 40) cmd = 0x94;
	movf	(setCursorPosition@pos),w
	xorlw	028h
	skipz
	goto	u61
	goto	u60
u61:
	goto	l581
u60:
	
l579:	
	movlw	(094h)
	movwf	(??_setCursorPosition+0)+0
	movf	(??_setCursorPosition+0)+0,w
	movwf	(setCursorPosition@cmd)
	goto	l585
	line	59
	
l47:	
	
l581:	
;delapena_Ex1.c: 59: else if (pos == 60) cmd = 0xD4;
	movf	(setCursorPosition@pos),w
	xorlw	03Ch
	skipz
	goto	u71
	goto	u70
u71:
	goto	l585
u70:
	
l583:	
	movlw	(0D4h)
	movwf	(??_setCursorPosition+0)+0
	movf	(??_setCursorPosition+0)+0,w
	movwf	(setCursorPosition@cmd)
	goto	l585
	
l49:	
	goto	l585
	line	61
	
l48:	
	goto	l585
	
l46:	
	goto	l585
	
l44:	
	
l585:	
;delapena_Ex1.c: 61: sendLCDCommand(cmd);
	movf	(setCursorPosition@cmd),w
	fcall	_sendLCDCommand
	line	62
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_setCursorPosition
	__end_of_setCursorPosition:
	signat	_setCursorPosition,4216
	global	_sendLCDData

;; *************** function _sendLCDData *****************
;; Defined at:
;;		line 31 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	31
global __ptext2
__ptext2:	;psect for function _sendLCDData
psect	text2
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	31
	global	__size_of_sendLCDData
	__size_of_sendLCDData	equ	__end_of_sendLCDData-_sendLCDData
	
_sendLCDData:	
;incstack = 0
	opt	stack 6
; Regs used in _sendLCDData: [wreg+status,2+status,0+pclath+cstack]
;sendLCDData@data stored from wreg
	movwf	(sendLCDData@data)
	line	32
	
l555:	
;delapena_Ex1.c: 32: PORTC = data;
	movf	(sendLCDData@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	33
	
l557:	
;delapena_Ex1.c: 33: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	34
	
l559:	
;delapena_Ex1.c: 34: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	35
	
l561:	
;delapena_Ex1.c: 35: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	36
	
l563:	
;delapena_Ex1.c: 36: delay(1);
	movlw	low(01h)
	movwf	(delay@ms)
	movlw	high(01h)
	movwf	((delay@ms))+1
	fcall	_delay
	line	37
	
l565:	
;delapena_Ex1.c: 37: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	38
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_sendLCDData
	__end_of_sendLCDData:
	signat	_sendLCDData,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 40 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clearDisplay
;;		_delay
;;		_sendLCDCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	40
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	40
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l567:	
;delapena_Ex1.c: 41: delay(15);
	movlw	low(0Fh)
	movwf	(delay@ms)
	movlw	high(0Fh)
	movwf	((delay@ms))+1
	fcall	_delay
	line	42
;delapena_Ex1.c: 42: sendLCDCommand(0x38);
	movlw	(038h)
	fcall	_sendLCDCommand
	line	43
;delapena_Ex1.c: 43: sendLCDCommand(0x0F);
	movlw	(0Fh)
	fcall	_sendLCDCommand
	line	44
;delapena_Ex1.c: 44: clearDisplay();
	fcall	_clearDisplay
	line	45
;delapena_Ex1.c: 45: sendLCDCommand(0x06);
	movlw	(06h)
	fcall	_sendLCDCommand
	line	46
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_clearDisplay

;; *************** function _clearDisplay *****************
;; Defined at:
;;		line 48 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_sendLCDCommand
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	48
global __ptext4
__ptext4:	;psect for function _clearDisplay
psect	text4
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	48
	global	__size_of_clearDisplay
	__size_of_clearDisplay	equ	__end_of_clearDisplay-_clearDisplay
	
_clearDisplay:	
;incstack = 0
	opt	stack 4
; Regs used in _clearDisplay: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l553:	
;delapena_Ex1.c: 49: sendLCDCommand(0x01);
	movlw	(01h)
	fcall	_sendLCDCommand
	line	50
;delapena_Ex1.c: 50: delay(2);
	movlw	low(02h)
	movwf	(delay@ms)
	movlw	high(02h)
	movwf	((delay@ms))+1
	fcall	_delay
	line	51
	
l40:	
	return
	opt stack 0
GLOBAL	__end_of_clearDisplay
	__end_of_clearDisplay:
	signat	_clearDisplay,88
	global	_sendLCDCommand

;; *************** function _sendLCDCommand *****************
;; Defined at:
;;		line 20 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_clearDisplay
;;		_setCursorPosition
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	20
global __ptext5
__ptext5:	;psect for function _sendLCDCommand
psect	text5
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	20
	global	__size_of_sendLCDCommand
	__size_of_sendLCDCommand	equ	__end_of_sendLCDCommand-_sendLCDCommand
	
_sendLCDCommand:	
;incstack = 0
	opt	stack 5
; Regs used in _sendLCDCommand: [wreg+status,2+status,0+pclath+cstack]
;sendLCDCommand@cmd stored from wreg
	movwf	(sendLCDCommand@cmd)
	line	21
	
l541:	
;delapena_Ex1.c: 21: PORTC = cmd;
	movf	(sendLCDCommand@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	22
	
l543:	
;delapena_Ex1.c: 22: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	23
	
l545:	
;delapena_Ex1.c: 23: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	24
	
l547:	
;delapena_Ex1.c: 24: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	25
	
l549:	
;delapena_Ex1.c: 25: delay(1);
	movlw	low(01h)
	movwf	(delay@ms)
	movlw	high(01h)
	movwf	((delay@ms))+1
	fcall	_delay
	line	26
	
l551:	
;delapena_Ex1.c: 26: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	27
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_sendLCDCommand
	__end_of_sendLCDCommand:
	signat	_sendLCDCommand,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 64 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] unsigned int 
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sendLCDCommand
;;		_sendLCDData
;;		_initLCD
;;		_clearDisplay
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	64
global __ptext6
__ptext6:	;psect for function _delay
psect	text6
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	64
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	66
	
l529:	
;delapena_Ex1.c: 65: unsigned int i, j;
;delapena_Ex1.c: 66: for (i = 0; i < ms; i++) {
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l53
	
l54:	
	line	67
	
l531:	
;delapena_Ex1.c: 67: for (j = 0; j < 1000; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l533:	
	movlw	high(03E8h)
	subwf	(delay@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@j),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l537
u10:
	goto	l539
	
l535:	
	goto	l539
	
l55:	
	
l537:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	movlw	high(03E8h)
	subwf	(delay@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@j),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l537
u20:
	goto	l539
	
l56:	
	line	66
	
l539:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l53:	
	movf	(delay@ms+1),w
	subwf	(delay@i+1),w
	skipz
	goto	u35
	movf	(delay@ms),w
	subwf	(delay@i),w
u35:
	skipc
	goto	u31
	goto	u30
u31:
	goto	l531
u30:
	goto	l58
	
l57:	
	line	69
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_getKeyFromPort

;; *************** function _getKeyFromPort *****************
;; Defined at:
;;		line 71 in file "Z:\Embedded System\premid\delapena_Ex1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  fol             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	71
global __ptext7
__ptext7:	;psect for function _getKeyFromPort
psect	text7
	file	"Z:\Embedded System\premid\delapena_Ex1.c"
	line	71
	global	__size_of_getKeyFromPort
	__size_of_getKeyFromPort	equ	__end_of_getKeyFromPort-_getKeyFromPort
	
_getKeyFromPort:	
;incstack = 0
	opt	stack 7
; Regs used in _getKeyFromPort: [wreg+status,2]
	line	74
	
l587:	
;delapena_Ex1.c: 73: unsigned char fol;
;delapena_Ex1.c: 74: fol = PORTD & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_getKeyFromPort+0)+0
	movf	(??_getKeyFromPort+0)+0,w
	movwf	(getKeyFromPort@fol)
	line	77
	
l589:	
;delapena_Ex1.c: 77: return fol;
	movf	(getKeyFromPort@fol),w
	goto	l61
	
l591:	
	line	78
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_getKeyFromPort
	__end_of_getKeyFromPort:
	signat	_getKeyFromPort,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
