;
; firstLetter.asm
;
; Created: 28.08.2017 16:52:42
; Author : Vadim-Kurbasov
;
.def		SlopReg=R16
.def		SlopReg1=R17
.def		ViewRegA=R18
.def		ViewRegK=R19
.def		SlopReg3=R20


Start:		rjmp	Init;

Init:		ldi		SlopReg,0b11111111	
			out		DDRB,SlopReg		
										
	 		ldi		SlopReg,0b11111111	
			out		DDRD,SlopReg		

			 ldi		SlopReg,0b11111111	
			out		DDRC,SlopReg


		
		  
		 ldi		SlopReg,0b00000000	
			out		DDRA,SlopReg		
			

;##################################################################################

	ldi		ViewRegA,0b10000000    ;формируем начальное состояние экрана
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

		 ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay:   sbiw   Xh:Xl,1
         brne   delay
			
;##################################################################################

;##################################################################################
TULA:




 ldi SlopReg1, 0b00101011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONA
 rjmp PRYG1
 JSLONA:
 rjmp SLONA


 PRYG1:
  ldi SlopReg1, 0b01000001
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONBE
 rjmp PRYG2
 JSLONBE:
 rjmp SLONBE

 PRYG2:
 ldi SlopReg1, 0b00100011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONVE
 rjmp PRYG3
 JSLONVE:
 rjmp SLONVE

 PRYG3:
  ldi SlopReg1, 0b00111100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONGE
 rjmp PRYG4
 JSLONGE:
 rjmp SLONGE

  PRYG4:
 ldi SlopReg1, 0b01001011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONDE
 rjmp PRYG5
 JSLONDE:
 rjmp SLONDE

  PRYG5:
  ldi SlopReg1, 0b00101100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONE
 rjmp PRYG6
 JSLONE:
 rjmp SLONE

 PRYG6:
 ldi SlopReg1, 0b01001100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONZHE
 rjmp PRYG7
 JSLONZHE:
 rjmp SLONZHE

 PRYG7:
 ldi SlopReg1, 0b01001101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONZ
 rjmp PRYG8
 JSLONZ:
rjmp SLONZ

PRYG8:
 ldi SlopReg1, 0b00110010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONI
 rjmp PRYG9
 JSLONI:
  rjmp SLONI

  PRYG9:
 ldi SlopReg1, 0b00101101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONK
 rjmp PRYG10
 JSLONK:
rjmp SLONK

PRYG10:
 ldi SlopReg1, 0b01000010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONL
 rjmp PRYG11
 JSLONL:
rjmp SLONL

PRYG11:
ldi SlopReg1, 0b00101010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONM
 rjmp PRYG12
 JSLONM:
rjmp SLONM

PRYG12:
ldi SlopReg1, 0b00110101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONN
 rjmp PRYG13
 JSLONN:
rjmp SLONN

PRYG13:
ldi SlopReg1, 0b00111011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONO
 rjmp PRYG14
 JSLONO:
rjmp SLONO

PRYG14:
ldi SlopReg1, 0b00110100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONP
 rjmp PRYG15
 JSLONP:
rjmp SLONP

PRYG15:
ldi SlopReg1, 0b00110011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONR
 rjmp PRYG16
 JSLONR:
rjmp SLONR

PRYG16:
ldi SlopReg1, 0b00100001
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONS
 rjmp PRYG17
 JSLONS:
rjmp SLONS

PRYG17:
ldi SlopReg1, 0b00110001
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONT
 rjmp PRYG18
 JSLONT:
rjmp SLONT

PRYG18:
ldi SlopReg1, 0b00100100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONU
 rjmp PRYG19
 JSLONU:
rjmp SLONU

PRYG19:
ldi SlopReg1, 0b00011100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONF
 rjmp PRYG20
 JSLONF:
rjmp SLONF

PRYG20:
ldi SlopReg1, 0b01010100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONX
 rjmp PRYG21
 JSLONX:
rjmp SLONX

PRYG21:
ldi SlopReg1, 0b00011101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONTCE
 rjmp PRYG22
 JSLONTCE:
rjmp SLONTCE

PRYG22:
ldi SlopReg1, 0b00100010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONCHE
 rjmp PRYG23
 JSLONCHE:
rjmp SLONCHE

PRYG23:
ldi SlopReg1, 0b01000011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONSHE
 rjmp PRYG24
 JSLONSHE:
rjmp SLONSHE

PRYG24:
ldi SlopReg1, 0b01000100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONCCHE
 rjmp PRYG25
 JSLONCCHE:
rjmp SLONCCHE

PRYG25:
ldi SlopReg1, 0b01011011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONTZ
 rjmp PRYG26
 JSLONTZ:
rjmp SLONTZ

PRYG26:
ldi SlopReg1, 0b00011011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONII
 rjmp PRYG27
 JSLONII:
rjmp SLONII

PRYG27:
ldi SlopReg1, 0b00111010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONMZ
 rjmp PRYG28
 JSLONMZ:
rjmp SLONMZ

PRYG28:
ldi SlopReg1, 0b01010010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONEE
 rjmp PRYG29
 JSLONEE:
rjmp SLONEE

PRYG29:
ldi SlopReg1, 0b01001001
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONYU
 rjmp PRYG30
 JSLONYU:
rjmp SLONYU

PRYG30:
ldi SlopReg1, 0b00011010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONYA
 rjmp PRYG31
 JSLONYA:
rjmp SLONYA


PRYG31:
ldi SlopReg1, 0b01110000
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON0
 rjmp PRYG32
 JSLON0:
rjmp SLON0

PRYG32:
ldi SlopReg1, 0b01101001
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON1
 rjmp PRYG33
 JSLON1:
rjmp SLON1

PRYG33:
ldi SlopReg1, 0b01110010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON2
 rjmp PRYG34
 JSLON2:
rjmp SLON2

PRYG34:
ldi SlopReg1, 0b01111010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON3
 rjmp PRYG35
 JSLON3:
rjmp SLON3

PRYG35:
ldi SlopReg1, 0b01101011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON4
 rjmp PRYG36
 JSLON4:
rjmp SLON4

PRYG36:
ldi SlopReg1, 0b01110011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON5
 rjmp PRYG37
 JSLON5:
rjmp SLON5

PRYG37:
ldi SlopReg1, 0b01110100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON6
 rjmp PRYG38
 JSLON6:
rjmp SLON6

PRYG38:
ldi SlopReg1, 0b01101100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON7
 rjmp PRYG39
 JSLON7:
rjmp SLON7

PRYG39:
ldi SlopReg1, 0b01110101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON8
 rjmp PRYG40
 JSLON8:
rjmp SLON8

PRYG40:
ldi SlopReg1, 0b01111101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLON9
 rjmp PRYG41
 JSLON9:
rjmp SLON9

PRYG41:
ldi SlopReg1, 0b00101001
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONPROBEL
 rjmp PRYG42
 JSLONPROBEL:
rjmp SLONPROBEL

PRYG42:
ldi SlopReg1, 0b01110001
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONTOCH
 rjmp PRYG43
 JSLONTOCH:
rjmp SLONTOCH

PRYG43:
ldi SlopReg1, 0b00010100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONZAP
 rjmp PRYG44
 JSLONZAP:
rjmp SLONZAP

PRYG44:
ldi SlopReg1, 0b00010110
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONVOSKL
 rjmp PRYG45
 JSLONVOSKL:
rjmp SLONVOSKL

PRYG45:
ldi SlopReg1, 0b01001010
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONVOPR
 rjmp PRYG46
 JSLONVOPR:
rjmp SLONVOPR

PRYG46:
ldi SlopReg1, 0b01111011
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONDEFI
 rjmp PRYG47
 JSLONDEFI:
rjmp SLONDEFI

PRYG47:
ldi SlopReg1, 0b01000101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONSKOB
 rjmp PRYG48
 JSLONSKOB:
rjmp SLONSKOB

PRYG48:
ldi SlopReg1, 0b00000101
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONULIB
 rjmp PRYG49
 JSLONULIB:
rjmp SLONULIB

PRYG49:
ldi SlopReg1, 0b00000110
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONZLOY
 rjmp PRYG50
 JSLONZLOY:
rjmp SLONZLOY

PRYG50:
ldi SlopReg1, 0b00000100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONWO
 rjmp PRYG51
 JSLONWO:
rjmp SLONWO

PRYG51:
ldi SlopReg1, 0b00001100
 in SlopReg,PinA
cp SlopReg,SlopReg1
 breq JSLONFUCK
 rjmp PRYG52
 JSLONFUCK:
rjmp SLONFUCK

PRYG52:
   rjmp TULA

	
		
  	SLONA:
	ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayAY:   sbiw   Xh:Xl,1
         brne   delayAY
	 rjmp KOTA

   SLONBE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayBEY:   sbiw   Xh:Xl,1
         brne   delayBEY
	 rjmp KOTBE

	   SLONVE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayVEY:   sbiw   Xh:Xl,1
         brne   delayVEY
	 rjmp KOTVE

	  SLONGE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayGEY:   sbiw   Xh:Xl,1
         brne   delayGEY
	 rjmp KOTGE

	  
	  SLONDE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayDEY:   sbiw   Xh:Xl,1
         brne   delayDEY
	 rjmp KOTDE

	  SLONE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayEY:   sbiw   Xh:Xl,1
         brne   delayEY
	 rjmp KOTE

	   SLONZHE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayZHEY:   sbiw   Xh:Xl,1
         brne   delayZHEY
	 rjmp KOTZHE

	    SLONZ:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayZY:   sbiw   Xh:Xl,1
         brne   delayZY
	 rjmp KOTZ

	 SLONI:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayIY:   sbiw   Xh:Xl,1
         brne   delayIY
	 rjmp KOTI

	  SLONK:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayKY:   sbiw   Xh:Xl,1
         brne   delayKY
	 rjmp KOTK

	  SLONL:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayLY:   sbiw   Xh:Xl,1
         brne   delayLY
	 rjmp KOTL

	 SLONM:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayMY:   sbiw   Xh:Xl,1
         brne   delayMY
	 rjmp KOTM

	 SLONN:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayNY:   sbiw   Xh:Xl,1
         brne   delayNY
	 rjmp KOTN

	 SLONO:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayOY:   sbiw   Xh:Xl,1
         brne   delayOY
	 rjmp KOTO

SLONP:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayPY:   sbiw   Xh:Xl,1
         brne   delayPY
	 rjmp KOTP

	 SLONR:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayRY:   sbiw   Xh:Xl,1
         brne   delayRY
	 rjmp KOTR

	  SLONS:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelaySY:   sbiw   Xh:Xl,1
         brne   delaySY
	 rjmp KOTS

 SLONT:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayTY:   sbiw   Xh:Xl,1
         brne   delayTY
	 rjmp KOTT

 SLONU:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayUY:   sbiw   Xh:Xl,1
         brne   delayUY
	 rjmp KOTU

	  SLONF:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayFY:   sbiw   Xh:Xl,1
         brne   delayFY
	 rjmp KOTF

	 SLONX:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayXY:   sbiw   Xh:Xl,1
         brne   delayXY
	 rjmp KOTX

	  SLONTCE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayTCEY:   sbiw   Xh:Xl,1
         brne   delayTCEY
	 rjmp KOTTCE

	   SLONCHE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayCHEY:   sbiw   Xh:Xl,1
         brne   delayCHEY
	 rjmp KOTCHE

	  SLONSHE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelaySHEY:   sbiw   Xh:Xl,1
         brne   delaySHEY
	 rjmp KOTSHE

	   SLONCCHE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayCCHEY:   sbiw   Xh:Xl,1
         brne   delayCCHEY
	 rjmp KOTCCHE

	  SLONTZ:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayTZY:   sbiw   Xh:Xl,1
         brne   delayTZY
	 rjmp KOTTZ

	 SLONII:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayIIY:   sbiw   Xh:Xl,1
         brne   delayIIY
	 rjmp KOTII

	 SLONMZ:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayMZY:   sbiw   Xh:Xl,1
         brne   delayMZY
	 rjmp KOTMZ

	  SLONEE:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayEEY:   sbiw   Xh:Xl,1
         brne   delayEEY
	 rjmp JKOTEE

	  SLONYU:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayYUY:   sbiw   Xh:Xl,1
         brne   delayYUY
	 rjmp JKOTYU

	  SLONYA:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayYAY:   sbiw   Xh:Xl,1
         brne   delayYAY
	 rjmp JKOTYA

	 SLON0:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay0Y:   sbiw   Xh:Xl,1
         brne   delay0Y
	 rjmp JKOT0

	 SLON1:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay1Y:   sbiw   Xh:Xl,1
         brne   delay1Y
	 rjmp JKOT1

	 SLON2:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay2Y:   sbiw   Xh:Xl,1
         brne   delay2Y
	 rjmp JKOT2

	  SLON3:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay3Y:   sbiw   Xh:Xl,1
         brne   delay3Y
	 rjmp JKOT3

 SLON4:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay4Y:   sbiw   Xh:Xl,1
         brne   delay4Y
	 rjmp JKOT4

 SLON5:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay5Y:   sbiw   Xh:Xl,1
         brne   delay5Y
	 rjmp JKOT5

	 SLON6:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay6Y:   sbiw   Xh:Xl,1
         brne   delay6Y
	 rjmp JKOT6

	  SLON7:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay7Y:   sbiw   Xh:Xl,1
         brne   delay7Y
	 rjmp JKOT7

	 SLON8:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay8Y:   sbiw   Xh:Xl,1
         brne   delay8Y
	 rjmp JKOT8

	  SLON9:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
Delay9Y:   sbiw   Xh:Xl,1
         brne   delay9Y
	 rjmp JKOT9

	  SLONPROBEL:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayPROBELY:   sbiw   Xh:Xl,1
         brne   delayPROBELY
	 rjmp JKOTPROBEL

	  SLONTOCH:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayTOCHY:   sbiw   Xh:Xl,1
         brne   delayTOCHY
	 rjmp JKOTTOCH

	  SLONZAP:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayZAPY:   sbiw   Xh:Xl,1
         brne   delayZAPY
	 rjmp JKOTZAP

	  SLONVOSKL:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayVOSKLY:   sbiw   Xh:Xl,1
         brne   delayVOSKLY
	 rjmp JKOTVOSKL

	  SLONVOPR:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayVOPRY:   sbiw   Xh:Xl,1
         brne   delayVOPRY
	 rjmp JKOTVOPR

	   SLONDEFI:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayDEFIY:   sbiw   Xh:Xl,1
         brne   delayDEFIY
	 rjmp JKOTDEFI

	  SLONSKOB:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelaySKOBY:   sbiw   Xh:Xl,1
         brne   delaySKOBY
	 rjmp JKOTSKOB

	   SLONULIB:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayULIBY:   sbiw   Xh:Xl,1
         brne   delayULIBY
	 rjmp JKOTULIB

SLONZLOY:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayZLOYY:   sbiw   Xh:Xl,1
         brne   delayZLOYY
	 rjmp JKOTZLOY

	 SLONWO:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayWOY:   sbiw   Xh:Xl,1
         brne   delayWOY
	 rjmp JKOTWO

	  SLONFUCK:
   ldi SlopReg,0b10111101
			out PortC, SlopReg
			ldi    Xh,0x7f            ;формируем задержку циклом
         ldi    Xl,0xff
DelayFUCKY:   sbiw   Xh:Xl,1
         brne   delayFUCKY
	 rjmp JKOTFUCK
;##################################################################################1

;##################################################################################

KOTA:
        ldi		ViewRegA,0b11000000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1A:   sbiw   Xh:Xl,1
         brne   delay1A

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10100000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2A:   sbiw   Xh:Xl,1
         brne   delay2A


    
			;##################################################################################3

	  ldi		ViewRegA,0b10010000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3A:   sbiw   Xh:Xl,1
         brne   delay3A

		

;##################################################################################4

	  ldi		ViewRegA,0b10001000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4A:   sbiw   Xh:Xl,1
         brne   delay4A

		 

;##################################################################################5

	  ldi		ViewRegA,0b11111100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5A:   sbiw   Xh:Xl,1
         brne   delay5A

		 

;##################################################################################6

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6A:   sbiw   Xh:Xl,1
         brne   delay6A

		

;##################################################################################7

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7A:   sbiw   Xh:Xl,1
         brne   delay7A

		

;##################################################################################8

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8A:   sbiw   Xh:Xl,1
         brne   delay8A

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTA
;##################################################################################
   
KOTBE:
        ldi		ViewRegA,0b11111110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1BE:   sbiw   Xh:Xl,1
         brne   delay1BE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2BE:   sbiw   Xh:Xl,1
         brne   delay2BE


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3BE:   sbiw   Xh:Xl,1
         brne   delay3BE

		

;##################################################################################4

	  ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4BE:   sbiw   Xh:Xl,1
         brne   delay4BE

		 

;##################################################################################5

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5BE:   sbiw   Xh:Xl,1
         brne   delay5BE

		 

;##################################################################################6

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6BE:   sbiw   Xh:Xl,1
         brne   delay6BE

		

;##################################################################################7

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7BE:   sbiw   Xh:Xl,1
         brne   delay7BE

		

;##################################################################################8

	  ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8BE:   sbiw   Xh:Xl,1
         brne   delay8BE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTBE

;##################################################################################

KOTVE:
        ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1VE:   sbiw   Xh:Xl,1
         brne   delay1VE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2VE:   sbiw   Xh:Xl,1
         brne   delay2VE


    
			;##################################################################################3

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3VE:   sbiw   Xh:Xl,1
         brne   delay3VE

		

;##################################################################################4

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4VE:   sbiw   Xh:Xl,1
         brne   delay4VE

		 

;##################################################################################5

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5VE:   sbiw   Xh:Xl,1
         brne   delay5VE

		 

;##################################################################################6

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6VE:   sbiw   Xh:Xl,1
         brne   delay6VE

		

;##################################################################################7

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7VE:   sbiw   Xh:Xl,1
         brne   delay7VE

		

;##################################################################################8

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8VE:   sbiw   Xh:Xl,1
         brne   delay8VE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTVE
;##################################################################################
KOTGE:
        ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1GE:   sbiw   Xh:Xl,1
         brne   delay1GE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2GE:   sbiw   Xh:Xl,1
         brne   delay2GE


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3GE:   sbiw   Xh:Xl,1
         brne   delay3GE

		

;##################################################################################4

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4GE:   sbiw   Xh:Xl,1
         brne   delay4GE

		 

;##################################################################################5

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5GE:   sbiw   Xh:Xl,1
         brne   delay5GE

		 

;##################################################################################6

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay6GE:   sbiw   Xh:Xl,1
         brne   delay6GE

		

;##################################################################################7

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7GE:   sbiw   Xh:Xl,1
         brne   delay7GE

		

;##################################################################################8

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b011111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8GE:   sbiw   Xh:Xl,1
         brne   delay8GE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTGE
;##################################################################################

KOTDE:
        ldi		ViewRegA,0b11111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1DE:   sbiw   Xh:Xl,1
         brne   delay1DE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01001000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2DE:   sbiw   Xh:Xl,1
         brne   delay2DE


    
			;##################################################################################3

	  ldi		ViewRegA,0b01001000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3DE:   sbiw   Xh:Xl,1
         brne   delay3DE

		

;##################################################################################4

	  ldi		ViewRegA,0b01001000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4DE:   sbiw   Xh:Xl,1
         brne   delay4DE

		 

;##################################################################################5

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5DE:   sbiw   Xh:Xl,1
         brne   delay5DE

		 

;##################################################################################6

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6DE:   sbiw   Xh:Xl,1
         brne   delay6DE

		

;##################################################################################7

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7DE:   sbiw   Xh:Xl,1
         brne   delay7DE

		

;##################################################################################8

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8DE:   sbiw   Xh:Xl,1
         brne   delay8DE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTDE

;##################################################################################

KOTE:
        ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1E:   sbiw   Xh:Xl,1
         brne   delay1E

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2E:   sbiw   Xh:Xl,1
         brne   delay2E


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3E:   sbiw   Xh:Xl,1
         brne   delay3E

		

;##################################################################################4

	  ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4E:   sbiw   Xh:Xl,1
         brne   delay4E

		 

;##################################################################################5

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5E:   sbiw   Xh:Xl,1
         brne   delay5E

		 

;##################################################################################6

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6E:   sbiw   Xh:Xl,1
         brne   delay6E

		

;##################################################################################7

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7E:   sbiw   Xh:Xl,1
         brne   delay7E

		

;##################################################################################8

	  ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8E:   sbiw   Xh:Xl,1
         brne   delay8E

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTE
;##################################################################################

KOTZHE:
        ldi		ViewRegA,0b11010110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1ZHE:   sbiw   Xh:Xl,1
         brne   delay1ZHE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01010100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2ZHE:   sbiw   Xh:Xl,1
         brne   delay2ZHE


    
			;##################################################################################3

	  ldi		ViewRegA,0b01010100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3ZHE:   sbiw   Xh:Xl,1
         brne   delay3ZHE

		

;##################################################################################4

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4ZHE:   sbiw   Xh:Xl,1
         brne   delay4ZHE

		 

;##################################################################################5

	  ldi		ViewRegA,0b01010100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5ZHE:   sbiw   Xh:Xl,1
         brne   delay5ZHE

		 

;##################################################################################6

	  ldi		ViewRegA,0b01010100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6ZHE:   sbiw   Xh:Xl,1
         brne   delay6ZHE

		

;##################################################################################7

	  ldi		ViewRegA,0b01010100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7ZHE:   sbiw   Xh:Xl,1
         brne   delay7ZHE

		

;##################################################################################8

	  ldi		ViewRegA,0b11010110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8ZHE:   sbiw   Xh:Xl,1
         brne   delay8ZHE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTZHE
;##################################################################################

KOTZ:
        ldi		ViewRegA,0b01111000
			ldi		ViewRegK,0b1111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1Z:   sbiw   Xh:Xl,1
         brne   delay1Z

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2Z:   sbiw   Xh:Xl,1
         brne   delay2Z


    
			;##################################################################################3

	  ldi		ViewRegA,0b10000000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3Z:   sbiw   Xh:Xl,1
         brne   delay3Z

		

;##################################################################################4

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4Z:   sbiw   Xh:Xl,1
         brne   delay4Z

		 

;##################################################################################5

	  ldi		ViewRegA,0b10000000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5Z:   sbiw   Xh:Xl,1
         brne   delay5Z

		 

;##################################################################################6

	  ldi		ViewRegA,0b10000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6Z:   sbiw   Xh:Xl,1
         brne   delay6Z

		

;##################################################################################7

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7Z:   sbiw   Xh:Xl,1
         brne   delay7Z

		

;##################################################################################8

	  ldi		ViewRegA,0b01111000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8Z:   sbiw   Xh:Xl,1
         brne   delay8Z

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTZ
;##################################################################################

KOTI:
        ldi		ViewRegA,0b01000001
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1I:   sbiw   Xh:Xl,1
         brne   delay1I

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01100001
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2I:   sbiw   Xh:Xl,1
         brne   delay2I


    
			;##################################################################################3

	  ldi		ViewRegA,0b01010001
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3I:   sbiw   Xh:Xl,1
         brne   delay3I

		

;##################################################################################4

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4I:   sbiw   Xh:Xl,1
         brne   delay4I

		 

;##################################################################################5

	  ldi		ViewRegA,0b01000101
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5I:   sbiw   Xh:Xl,1
         brne   delay5I

		 

;##################################################################################6

	  ldi		ViewRegA,0b01000011
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6I:   sbiw   Xh:Xl,1
         brne   delay6I

		

;##################################################################################7

	  ldi		ViewRegA,0b01000001
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7I:   sbiw   Xh:Xl,1
         brne   delay7I

		

;##################################################################################8

	  ldi		ViewRegA,0b01000001
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8I:   sbiw   Xh:Xl,1
         brne   delay8I

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTI
;##################################################################################

KOTK:
        ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1K:   sbiw   Xh:Xl,1
         brne   delay1K

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2K:   sbiw   Xh:Xl,1
         brne   delay2K


    
			;##################################################################################3

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3K:   sbiw   Xh:Xl,1
         brne   delay3K

		

;##################################################################################4

	  ldi		ViewRegA,0b00010100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4K:   sbiw   Xh:Xl,1
         brne   delay4K

		 

;##################################################################################5

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5K:   sbiw   Xh:Xl,1
         brne   delay5K

		 

;##################################################################################6

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6K:   sbiw   Xh:Xl,1
         brne   delay6K

		

;##################################################################################7

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7K:   sbiw   Xh:Xl,1
         brne   delay7K

		

;##################################################################################8

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8K:   sbiw   Xh:Xl,1
         brne   delay8K

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTK
;##################################################################################

KOTL:
        ldi		ViewRegA,0b11111000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1L:   sbiw   Xh:Xl,1
         brne   delay1L

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2L:   sbiw   Xh:Xl,1
         brne   delay2L


    
			;##################################################################################3

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3L:   sbiw   Xh:Xl,1
         brne   delay3L

		

;##################################################################################4

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4L:   sbiw   Xh:Xl,1
         brne   delay4L

		 

;##################################################################################5

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5L:   sbiw   Xh:Xl,1
         brne   delay5L

		 

;##################################################################################6

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6L:   sbiw   Xh:Xl,1
         brne   delay6L

		

;##################################################################################7

	  ldi		ViewRegA,0b10000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7L:   sbiw   Xh:Xl,1
         brne   delay7L

		

;##################################################################################8

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8L:   sbiw   Xh:Xl,1
         brne   delay8L

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTL
;##################################################################################
KOTM:
        ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1M:   sbiw   Xh:Xl,1
         brne   delay1M

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b11000110
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2M:   sbiw   Xh:Xl,1
         brne   delay2M


    
			;##################################################################################3

	  ldi		ViewRegA,0b10101010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3M:   sbiw   Xh:Xl,1
         brne   delay3M

		

;##################################################################################4

	  ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4M:   sbiw   Xh:Xl,1
         brne   delay4M

		 

;##################################################################################5

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5M:   sbiw   Xh:Xl,1
         brne   delay5M

		 

;##################################################################################6

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6M:   sbiw   Xh:Xl,1
         brne   delay6M

		

;##################################################################################7

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7M:   sbiw   Xh:Xl,1
         brne   delay7M

		

;##################################################################################8

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8M:   sbiw   Xh:Xl,1
         brne   delay8M

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTM
;##################################################################################
KOTN:
        ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1N:   sbiw   Xh:Xl,1
         brne   delay1N

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2N:   sbiw   Xh:Xl,1
         brne   delay2N


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3N:   sbiw   Xh:Xl,1
         brne   delay3N

		

;##################################################################################4

	  ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4N:   sbiw   Xh:Xl,1
         brne   delay4N

		 

;##################################################################################5

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5N:   sbiw   Xh:Xl,1
         brne   delay5N

		 

;##################################################################################6

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6N:   sbiw   Xh:Xl,1
         brne   delay6N

		

;##################################################################################7

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7N:   sbiw   Xh:Xl,1
         brne   delay7N

		

;##################################################################################8

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8N:   sbiw   Xh:Xl,1
         brne   delay8N

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTN
;##################################################################################
KOTO:
        ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1O:   sbiw   Xh:Xl,1
         brne   delay1O

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2O:   sbiw   Xh:Xl,1
         brne   delay2O


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3O:   sbiw   Xh:Xl,1
         brne   delay3O

		

;##################################################################################4

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4O:   sbiw   Xh:Xl,1
         brne   delay4O

		 

;##################################################################################5

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5O:   sbiw   Xh:Xl,1
         brne   delay5O

		 

;##################################################################################6

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6O:   sbiw   Xh:Xl,1
         brne   delay6O

		

;##################################################################################7

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7O:   sbiw   Xh:Xl,1
         brne   delay7O

		

;##################################################################################8

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8O:   sbiw   Xh:Xl,1
         brne   delay8O

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTO
;##################################################################################
KOTP:
        ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1P:   sbiw   Xh:Xl,1
         brne   delay1P

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2P:   sbiw   Xh:Xl,1
         brne   delay2P


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3P:   sbiw   Xh:Xl,1
         brne   delay3P

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4P:   sbiw   Xh:Xl,1
         brne   delay4P

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5P:   sbiw   Xh:Xl,1
         brne   delay5P

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6P:   sbiw   Xh:Xl,1
         brne   delay6P

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7P:   sbiw   Xh:Xl,1
         brne   delay7P

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8P:   sbiw   Xh:Xl,1
         brne   delay8P

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTP
;##################################################################################
KOTR:
        ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1R:   sbiw   Xh:Xl,1
         brne   delay1R

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2R:   sbiw   Xh:Xl,1
         brne   delay2R


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3R:   sbiw   Xh:Xl,1
         brne   delay3R

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4R:   sbiw   Xh:Xl,1
         brne   delay4R

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5R:   sbiw   Xh:Xl,1
         brne   delay5R

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6R:   sbiw   Xh:Xl,1
         brne   delay6R

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7R:   sbiw   Xh:Xl,1
         brne   delay7R

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8R:   sbiw   Xh:Xl,1
         brne   delay8R

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTR
;##################################################################################
KOTS:
        ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1S:   sbiw   Xh:Xl,1
         brne   delay1S

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2S:   sbiw   Xh:Xl,1
         brne   delay2S


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3S:   sbiw   Xh:Xl,1
         brne   delay3S

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4S:   sbiw   Xh:Xl,1
         brne   delay4S

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5S:   sbiw   Xh:Xl,1
         brne   delay5S

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6S:   sbiw   Xh:Xl,1
         brne   delay6S

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7S:   sbiw   Xh:Xl,1
         brne   delay7S

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8S:   sbiw   Xh:Xl,1
         brne   delay8S

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTS
;##################################################################################
KOTT:
        ldi		ViewRegA,0b01111111
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1T:   sbiw   Xh:Xl,1
         brne   delay1T

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2T:   sbiw   Xh:Xl,1
         brne   delay2T


    
			;##################################################################################3

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3T:   sbiw   Xh:Xl,1
         brne   delay3T

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4T:   sbiw   Xh:Xl,1
         brne   delay4T

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5T:   sbiw   Xh:Xl,1
         brne   delay5T

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6T:   sbiw   Xh:Xl,1
         brne   delay6T

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7T:   sbiw   Xh:Xl,1
         brne   delay7T

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8T:   sbiw   Xh:Xl,1
         brne   delay8T

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTT
;##################################################################################
KOTU:
        ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1U:   sbiw   Xh:Xl,1
         brne   delay1U

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2U:   sbiw   Xh:Xl,1
         brne   delay2U


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3U:   sbiw   Xh:Xl,1
         brne   delay3U

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01111000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4U:   sbiw   Xh:Xl,1
         brne   delay4U

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5U:   sbiw   Xh:Xl,1
         brne   delay5U

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6U:   sbiw   Xh:Xl,1
         brne   delay6U

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7U:   sbiw   Xh:Xl,1
         brne   delay7U

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8U:   sbiw   Xh:Xl,1
         brne   delay8U

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTU
;##################################################################################
KOTF:
        ldi		ViewRegA,0b00111110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1F:   sbiw   Xh:Xl,1
         brne   delay1F

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2F:   sbiw   Xh:Xl,1
         brne   delay2F


    
			;##################################################################################3

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3F:   sbiw   Xh:Xl,1
         brne   delay3F

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4F:   sbiw   Xh:Xl,1
         brne   delay4F

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00111110
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5F:   sbiw   Xh:Xl,1
         brne   delay5F

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6F:   sbiw   Xh:Xl,1
         brne   delay6F

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7F:   sbiw   Xh:Xl,1
         brne   delay7F

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8F:   sbiw   Xh:Xl,1
         brne   delay8F

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTF
;##################################################################################

KOTX:
        ldi		ViewRegA,0b10000001
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1X:   sbiw   Xh:Xl,1
         brne   delay1X

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2X:   sbiw   Xh:Xl,1
         brne   delay2X


    
			;##################################################################################3

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3X:   sbiw   Xh:Xl,1
         brne   delay3X

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4X:   sbiw   Xh:Xl,1
         brne   delay4X

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5X:   sbiw   Xh:Xl,1
         brne   delay5X

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6X:   sbiw   Xh:Xl,1
         brne   delay6X

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7X:   sbiw   Xh:Xl,1
         brne   delay7X

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b10000001
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8X:   sbiw   Xh:Xl,1
         brne   delay8X

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTX
;##################################################################################
KOTTCE:
        ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1TCE:   sbiw   Xh:Xl,1
         brne   delay1TCE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2TCE:   sbiw   Xh:Xl,1
         brne   delay2TCE


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3TCE:   sbiw   Xh:Xl,1
         brne   delay3TCE

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4TCE:   sbiw   Xh:Xl,1
         brne   delay4TCE

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5TCE:   sbiw   Xh:Xl,1
         brne   delay5TCE

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6TCE:   sbiw   Xh:Xl,1
         brne   delay6TCE

		

       ;##################################################################################7

	  ldi		ViewRegA,0b11111110
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7TCE:   sbiw   Xh:Xl,1
         brne   delay7TCE

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b10000000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8TCE:   sbiw   Xh:Xl,1
         brne   delay8TCE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTTCE
;##################################################################################
KOTCHE:
        ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1CHE:   sbiw   Xh:Xl,1
         brne   delay1CHE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2CHE:   sbiw   Xh:Xl,1
         brne   delay2CHE


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3CHE:   sbiw   Xh:Xl,1
         brne   delay3CHE

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4CHE:   sbiw   Xh:Xl,1
         brne   delay4CHE

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01111000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5CHE:   sbiw   Xh:Xl,1
         brne   delay5CHE

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6CHE:   sbiw   Xh:Xl,1
         brne   delay6CHE

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7CHE:   sbiw   Xh:Xl,1
         brne   delay7CHE

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8CHE:   sbiw   Xh:Xl,1
         brne   delay8CHE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTCHE
;##################################################################################
KOTSHE:
        ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1SHE:   sbiw   Xh:Xl,1
         brne   delay1SHE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2SHE:   sbiw   Xh:Xl,1
         brne   delay2SHE


    
			;##################################################################################3

	  ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3SHE:   sbiw   Xh:Xl,1
         brne   delay3SHE

		

         ;##################################################################################4

	  ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4SHE:   sbiw   Xh:Xl,1
         brne   delay4SHE

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5SHE:   sbiw   Xh:Xl,1
         brne   delay5SHE

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6SHE:   sbiw   Xh:Xl,1
         brne   delay6SHE

		

       ;##################################################################################7

	  ldi		ViewRegA,0b10010010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay7SHE:   sbiw   Xh:Xl,1
         brne   delay7SHE

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b11111110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8SHE:   sbiw   Xh:Xl,1
         brne   delay8SHE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTSHE
;##################################################################################
KOTCCHE:
        ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1CCHE:   sbiw   Xh:Xl,1
         brne   delay1CCHE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2CCHE:   sbiw   Xh:Xl,1
         brne   delay2CCHE


    
			;##################################################################################3

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3CCHE:   sbiw   Xh:Xl,1
         brne   delay3CCHE

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4CCHE:   sbiw   Xh:Xl,1
         brne   delay4CCHE

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5CCHE:   sbiw   Xh:Xl,1
         brne   delay5CCHE

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01001001
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6CCHE:   sbiw   Xh:Xl,1
         brne   delay6CCHE

		

       ;##################################################################################7

	  ldi		ViewRegA,0b11111111
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7CCHE:   sbiw   Xh:Xl,1
         brne   delay7CCHE

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b10000000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8CCHE:   sbiw   Xh:Xl,1
         brne   delay8CCHE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTCCHE
;##################################################################################
KOTTZ:
        ldi		ViewRegA,0b00000111
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1TZ:   sbiw   Xh:Xl,1
         brne   delay1TZ

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00000101
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2TZ:   sbiw   Xh:Xl,1
         brne   delay2TZ


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3TZ:   sbiw   Xh:Xl,1
         brne   delay3TZ

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4TZ:   sbiw   Xh:Xl,1
         brne   delay4TZ

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5TZ:   sbiw   Xh:Xl,1
         brne   delay5TZ

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6TZ:   sbiw   Xh:Xl,1
         brne   delay6TZ

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7TZ:   sbiw   Xh:Xl,1
         brne   delay7TZ

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8TZ:   sbiw   Xh:Xl,1
         brne   delay8TZ

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTTZ
;##################################################################################
KOTII:
        ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1II:   sbiw   Xh:Xl,1
         brne   delay1II

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2II:   sbiw   Xh:Xl,1
         brne   delay2II


    
			;##################################################################################3

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3II:   sbiw   Xh:Xl,1
         brne   delay3II

		

         ;##################################################################################4

	  ldi		ViewRegA,0b10011110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4II:   sbiw   Xh:Xl,1
         brne   delay4II

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b10100010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5II:   sbiw   Xh:Xl,1
         brne   delay5II

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b10100010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6II:   sbiw   Xh:Xl,1
         brne   delay6II

		

       ;##################################################################################7

	  ldi		ViewRegA,0b10100010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7II:   sbiw   Xh:Xl,1
         brne   delay7II

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b10011110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8II:   sbiw   Xh:Xl,1
         brne   delay8II

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTII
 ;##################################################################################
 KOTMZ:
        ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1MZ:   sbiw   Xh:Xl,1
         brne   delay1MZ

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2MZ:   sbiw   Xh:Xl,1
         brne   delay2MZ


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3MZ:   sbiw   Xh:Xl,1
         brne   delay3MZ

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00011110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4MZ:   sbiw   Xh:Xl,1
         brne   delay4MZ

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00100010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5MZ:   sbiw   Xh:Xl,1
         brne   delay5MZ

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00100010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6MZ:   sbiw   Xh:Xl,1
         brne   delay6MZ

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00100010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7MZ:   sbiw   Xh:Xl,1
         brne   delay7MZ

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00011110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8MZ:   sbiw   Xh:Xl,1
         brne   delay8MZ

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTMZ
;##################################################################################
JKOTEE:
rjmp KOTEE
JKOTYU:
rjmp KOTYU
JKOTYA:
rjmp KOTYA
JKOT0:
rjmp KOT0
JKOT1:
rjmp KOT1
JKOT2:
rjmp KOT2
JKOT3:
rjmp KOT3
JKOT4:
rjmp KOT4
JKOT5:
rjmp KOT5
JKOT6:
rjmp KOT6
JKOT7:
rjmp KOT7
JKOT8:
rjmp KOT8
JKOT9:
rjmp KOT9
JKOTPROBEL:
rjmp KOTPROBEL
JKOTTOCH:
rjmp KOTTOCH
JKOTZAP:
rjmp KOTZAP
JKOTVOSKL:
rjmp KOTVOSKL
JKOTVOPR:
rjmp KOTVOPR
JKOTDEFI:
rjmp KOTDEFI
JKOTSKOB:
rjmp KOTSKOB
JKOTULIB:
rjmp KOTULIB
JKOTZLOY:
rjmp KOTZLOY
JKOTWO:
rjmp KOTWO
JKOTFUCK:
rjmp KOTFUCK
;##################################################################################
KOTEE:
        ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1EE:   sbiw   Xh:Xl,1
         brne   delay1EE

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2EE:   sbiw   Xh:Xl,1
         brne   delay2EE


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3EE:   sbiw   Xh:Xl,1
         brne   delay3EE

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4EE:   sbiw   Xh:Xl,1
         brne   delay4EE

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5EE:   sbiw   Xh:Xl,1
         brne   delay5EE

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6EE:   sbiw   Xh:Xl,1
         brne   delay6EE

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7EE:   sbiw   Xh:Xl,1
         brne   delay7EE

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8EE:   sbiw   Xh:Xl,1
         brne   delay8EE

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTEE
;##################################################################################
KOTYU:
        ldi		ViewRegA,0b01110010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1YU:   sbiw   Xh:Xl,1
         brne   delay1YU

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b10001010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2YU:   sbiw   Xh:Xl,1
         brne   delay2YU


    
			;##################################################################################3

	  ldi		ViewRegA,0b10001010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3YU:   sbiw   Xh:Xl,1
         brne   delay3YU

		

         ;##################################################################################4

	  ldi		ViewRegA,0b10001110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4YU:   sbiw   Xh:Xl,1
         brne   delay4YU

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b10001010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5YU:   sbiw   Xh:Xl,1
         brne   delay5YU

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b10001010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6YU:   sbiw   Xh:Xl,1
         brne   delay6YU

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01001010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7YU:   sbiw   Xh:Xl,1
         brne   delay7YU

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00110010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8YU:   sbiw   Xh:Xl,1
         brne   delay8YU

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTYU
;##################################################################################
KOTYA:
        ldi		ViewRegA,0b01111000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1YA:   sbiw   Xh:Xl,1
         brne   delay1YA

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2YA:   sbiw   Xh:Xl,1
         brne   delay2YA


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3YA:   sbiw   Xh:Xl,1
         brne   delay3YA

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01111000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4YA:   sbiw   Xh:Xl,1
         brne   delay4YA

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01010000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5YA:   sbiw   Xh:Xl,1
         brne   delay5YA

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01001000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6YA:   sbiw   Xh:Xl,1
         brne   delay6YA

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7YA:   sbiw   Xh:Xl,1
         brne   delay7YA

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8YA:   sbiw   Xh:Xl,1
         brne   delay8YA

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOTYA
;##################################################################################
KOT0:
        ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay10:   sbiw   Xh:Xl,1
         brne   delay10

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay20:   sbiw   Xh:Xl,1
         brne   delay20


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay30:   sbiw   Xh:Xl,1
         brne   delay30

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay40:   sbiw   Xh:Xl,1
         brne   delay40

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay50:   sbiw   Xh:Xl,1
         brne   delay50

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay60:   sbiw   Xh:Xl,1
         brne   delay60

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay70:   sbiw   Xh:Xl,1
         brne   delay70

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay80:   sbiw   Xh:Xl,1
         brne   delay80

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOT0
;##################################################################################
KOT1:
        ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay11:   sbiw   Xh:Xl,1
         brne   delay11

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00110000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay21:   sbiw   Xh:Xl,1
         brne   delay21


    
			;##################################################################################3

	  ldi		ViewRegA,0b00101000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay31:   sbiw   Xh:Xl,1
         brne   delay31

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay41:   sbiw   Xh:Xl,1
         brne   delay41

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay51:   sbiw   Xh:Xl,1
         brne   delay51

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay61:   sbiw   Xh:Xl,1
         brne   delay61

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay71:   sbiw   Xh:Xl,1
         brne   delay71

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay81:   sbiw   Xh:Xl,1
         brne   delay81

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOT1

      ;##################################################################################
KOT2:
        ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay12:   sbiw   Xh:Xl,1
         brne   delay12

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay22:   sbiw   Xh:Xl,1
         brne   delay22


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay32:   sbiw   Xh:Xl,1
         brne   delay32

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay42:   sbiw   Xh:Xl,1
         brne   delay42

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay52:   sbiw   Xh:Xl,1
         brne   delay52

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay62:   sbiw   Xh:Xl,1
         brne   delay62

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay72:   sbiw   Xh:Xl,1
         brne   delay72

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b01111110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay82:   sbiw   Xh:Xl,1
         brne   delay82

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOT2
;##################################################################################
KOT3:
        ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay13:   sbiw   Xh:Xl,1
         brne   delay13

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay23:   sbiw   Xh:Xl,1
         brne   delay23


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay33:   sbiw   Xh:Xl,1
         brne   delay33

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay43:   sbiw   Xh:Xl,1
         brne   delay43

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay53:   sbiw   Xh:Xl,1
         brne   delay53

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay63:   sbiw   Xh:Xl,1
         brne   delay63

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay73:   sbiw   Xh:Xl,1
         brne   delay73

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b0111000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay83:   sbiw   Xh:Xl,1
         brne   delay83

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOT3
  ;##################################################################################
KOT4:
        ldi		ViewRegA,0b00100010
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay14:   sbiw   Xh:Xl,1
         brne   delay14

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00100010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay24:   sbiw   Xh:Xl,1
         brne   delay24


    
			;##################################################################################3

	  ldi		ViewRegA,0b00100010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay34:   sbiw   Xh:Xl,1
         brne   delay34

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00100010
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay44:   sbiw   Xh:Xl,1
         brne   delay44

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00111110
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay54:   sbiw   Xh:Xl,1
         brne   delay54

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay64:   sbiw   Xh:Xl,1
         brne   delay64

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay74:   sbiw   Xh:Xl,1
         brne   delay74

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay84:   sbiw   Xh:Xl,1
         brne   delay84

		

			in SlopReg,PinA
			out PortC, SlopReg
rjmp KOT4
;##################################################################################
KOT5:
        ldi		ViewRegA,0b00111110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay15:   sbiw   Xh:Xl,1
         brne   delay15

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay25:   sbiw   Xh:Xl,1
         brne   delay25


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay35:   sbiw   Xh:Xl,1
         brne   delay35

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00011110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay45:   sbiw   Xh:Xl,1
         brne   delay45

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay55:   sbiw   Xh:Xl,1
         brne   delay55

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay65:   sbiw   Xh:Xl,1
         brne   delay65

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay75:   sbiw   Xh:Xl,1
         brne   delay75

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00011110
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay85:   sbiw   Xh:Xl,1
         brne   delay85

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOT5
;##################################################################################
KOT6:
        ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay16:   sbiw   Xh:Xl,1
         brne   delay16

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay26:   sbiw   Xh:Xl,1
         brne   delay26


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay36:   sbiw   Xh:Xl,1
         brne   delay36

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay46:   sbiw   Xh:Xl,1
         brne   delay46

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay56:   sbiw   Xh:Xl,1
         brne   delay56

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay66:   sbiw   Xh:Xl,1
         brne   delay66

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay76:   sbiw   Xh:Xl,1
         brne   delay76

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay86:   sbiw   Xh:Xl,1
         brne   delay86

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOT6
;##################################################################################
KOT7:
        ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay17:   sbiw   Xh:Xl,1
         brne   delay17

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay27:   sbiw   Xh:Xl,1
         brne   delay27


    
			;##################################################################################3

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay37:   sbiw   Xh:Xl,1
         brne   delay37

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay47:   sbiw   Xh:Xl,1
         brne   delay47

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay57:   sbiw   Xh:Xl,1
         brne   delay57

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay67:   sbiw   Xh:Xl,1
         brne   delay67

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay77:   sbiw   Xh:Xl,1
         brne   delay77

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay87:   sbiw   Xh:Xl,1
         brne   delay87

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOT7
;##################################################################################
KOT8:
        ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay18:   sbiw   Xh:Xl,1
         brne   delay18

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay28:   sbiw   Xh:Xl,1
         brne   delay28


    
			;##################################################################################3

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay38:   sbiw   Xh:Xl,1
         brne   delay38

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay48:   sbiw   Xh:Xl,1
         brne   delay48

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay58:   sbiw   Xh:Xl,1
         brne   delay58

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay68:   sbiw   Xh:Xl,1
         brne   delay68

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay78:   sbiw   Xh:Xl,1
         brne   delay78

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111100
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay88:   sbiw   Xh:Xl,1
         brne   delay88

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOT8
;##################################################################################
KOT9:
        ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay19:   sbiw   Xh:Xl,1
         brne   delay19

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay29:   sbiw   Xh:Xl,1
         brne   delay29


    
			;##################################################################################3

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay39:   sbiw   Xh:Xl,1
         brne   delay39

		

         ;##################################################################################4

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay49:   sbiw   Xh:Xl,1
         brne   delay49

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b01111000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay59:   sbiw   Xh:Xl,1
         brne   delay59

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay69:   sbiw   Xh:Xl,1
         brne   delay69

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01000100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay79:   sbiw   Xh:Xl,1
         brne   delay79

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay89:   sbiw   Xh:Xl,1
         brne   delay89

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOT9
;##################################################################################
KOTPROBEL:
        ldi		ViewRegA,0b10000000
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay1PROBEL:   sbiw   Xh:Xl,1
         brne   delay1PROBEL

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay2PROBEL:   sbiw   Xh:Xl,1
         brne   delay2PROBEL


    
			;##################################################################################3

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay3PROBEL:   sbiw   Xh:Xl,1
         brne   delay3PROBEL

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00           ;формируем задержку циклом
         ldi    Xl,0xff
Delay4PROBEL:   sbiw   Xh:Xl,1
         brne   delay4PROBEL

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00          ;формируем задержку циклом
         ldi    Xl,0xff
Delay5PROBEL:   sbiw   Xh:Xl,1
         brne   delay5PROBEL

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay6PROBEL:   sbiw   Xh:Xl,1
         brne   delay6PROBEL

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay7PROBEL:   sbiw   Xh:Xl,1
         brne   delay7PROBEL

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00000001
			ldi		ViewRegK,0b11111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay8PROBEL:   sbiw   Xh:Xl,1
         brne   delay8PROBEL

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTPROBEL
;##################################################################################
KOTTOCH:
        ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay1TOCH:   sbiw   Xh:Xl,1
         brne   delay1TOCH

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay2TOCH:   sbiw   Xh:Xl,1
         brne   delay2TOCH


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay3TOCH:   sbiw   Xh:Xl,1
         brne   delay3TOCH

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00           ;формируем задержку циклом
         ldi    Xl,0xff
Delay4TOCH:   sbiw   Xh:Xl,1
         brne   delay4TOCH

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00          ;формируем задержку циклом
         ldi    Xl,0xff
Delay5TOCH:   sbiw   Xh:Xl,1
         brne   delay5TOCH

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay6TOCH:   sbiw   Xh:Xl,1
         brne   delay6TOCH

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay7TOCH:   sbiw   Xh:Xl,1
         brne   delay7TOCH

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00000001
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x00            ;формируем задержку циклом
         ldi    Xl,0xff
Delay8TOCH:   sbiw   Xh:Xl,1
         brne   delay8TOCH

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTTOCH
 ;##################################################################################
 KOTZAP:
        ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1ZAP:   sbiw   Xh:Xl,1
         brne   delay1ZAP

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2ZAP:   sbiw   Xh:Xl,1
         brne   delay2ZAP


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3ZAP:   sbiw   Xh:Xl,1
         brne   delay3ZAP

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4ZAP:   sbiw   Xh:Xl,1
         brne   delay4ZAP

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5ZAP:   sbiw   Xh:Xl,1
         brne   delay5ZAP

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6ZAP:   sbiw   Xh:Xl,1
         brne   delay6ZAP

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7ZAP:   sbiw   Xh:Xl,1
         brne   delay7ZAP

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00000001
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8ZAP:   sbiw   Xh:Xl,1
         brne   delay8ZAP

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTZAP
;##################################################################################
KOTVOSKL:
        ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1VOSKL:   sbiw   Xh:Xl,1
         brne   delay1VOSKL

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2VOSKL:   sbiw   Xh:Xl,1
         brne   delay2VOSKL


    
			;##################################################################################3

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3VOSKL:   sbiw   Xh:Xl,1
         brne   delay3VOSKL

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4VOSKL:   sbiw   Xh:Xl,1
         brne   delay4VOSKL

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5VOSKL:   sbiw   Xh:Xl,1
         brne   delay5VOSKL

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6VOSKL:   sbiw   Xh:Xl,1
         brne   delay6VOSKL

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7VOSKL:   sbiw   Xh:Xl,1
         brne   delay7VOSKL

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8VOSKL:   sbiw   Xh:Xl,1
         brne   delay8VOSKL

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTVOSKL
;##################################################################################
KOTVOPR:
        ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1VOPR:   sbiw   Xh:Xl,1
         brne   delay1VOPR

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00100100
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2VOPR:   sbiw   Xh:Xl,1
         brne   delay2VOPR


    
			;##################################################################################3

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3VOPR:   sbiw   Xh:Xl,1
         brne   delay3VOPR

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4VOPR:   sbiw   Xh:Xl,1
         brne   delay4VOPR

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5VOPR:   sbiw   Xh:Xl,1
         brne   delay5VOPR

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6VOPR:   sbiw   Xh:Xl,1
         brne   delay6VOPR

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7VOPR:   sbiw   Xh:Xl,1
         brne   delay7VOPR

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8VOPR:   sbiw   Xh:Xl,1
         brne   delay8VOPR

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTVOPR
;##################################################################################
KOTDEFI:
        ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1DEFI:   sbiw   Xh:Xl,1
         brne   delay1DEFI

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2DEFI:   sbiw   Xh:Xl,1
         brne   delay2DEFI


    
			;##################################################################################3

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3DEFI:   sbiw   Xh:Xl,1
         brne   delay3DEFI

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00111110
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4DEFI:   sbiw   Xh:Xl,1
         brne   delay4DEFI

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5DEFI:   sbiw   Xh:Xl,1
         brne   delay5DEFI

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6DEFI:   sbiw   Xh:Xl,1
         brne   delay6DEFI

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7DEFI:   sbiw   Xh:Xl,1
         brne   delay7DEFI

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8DEFI:   sbiw   Xh:Xl,1
         brne   delay8DEFI

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTDEFI
;##################################################################################
KOTSKOB:
        ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1SKOB:   sbiw   Xh:Xl,1
         brne   delay1SKOB

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00100000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2SKOB:   sbiw   Xh:Xl,1
         brne   delay2SKOB


    
			;##################################################################################3

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3SKOB:   sbiw   Xh:Xl,1
         brne   delay3SKOB

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4SKOB:   sbiw   Xh:Xl,1
         brne   delay4SKOB

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00000100
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5SKOB:   sbiw   Xh:Xl,1
         brne   delay5SKOB

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6SKOB:   sbiw   Xh:Xl,1
         brne   delay6SKOB

		

       ;##################################################################################7

	  ldi		ViewRegA,0b00000001
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7SKOB:   sbiw   Xh:Xl,1
         brne   delay7SKOB

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8SKOB:   sbiw   Xh:Xl,1
         brne   delay8SKOB

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTSKOB
;##################################################################################
KOTULIB:
        ldi		ViewRegA,0b11000110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1ULIB:   sbiw   Xh:Xl,1
         brne   delay1ULIB

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b11000110
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2ULIB:   sbiw   Xh:Xl,1
         brne   delay2ULIB


    
			;##################################################################################3

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3ULIB:   sbiw   Xh:Xl,1
         brne   delay3ULIB

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4ULIB:   sbiw   Xh:Xl,1
         brne   delay4ULIB

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5ULIB:   sbiw   Xh:Xl,1
         brne   delay5ULIB

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6ULIB:   sbiw   Xh:Xl,1
         brne   delay6ULIB

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7ULIB:   sbiw   Xh:Xl,1
         brne   delay7ULIB

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b00111000
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8ULIB:   sbiw   Xh:Xl,1
         brne   delay8ULIB

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTULIB
;##################################################################################
KOTZLOY:
        ldi		ViewRegA,0b11000110
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1ZLOY:   sbiw   Xh:Xl,1
         brne   delay1ZLOY

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b11000110
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2ZLOY:   sbiw   Xh:Xl,1
         brne   delay2ZLOY


    
			;##################################################################################3

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3ZLOY:   sbiw   Xh:Xl,1
         brne   delay3ZLOY

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00010000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4ZLOY:   sbiw   Xh:Xl,1
         brne   delay4ZLOY

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00001000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5ZLOY:   sbiw   Xh:Xl,1
         brne   delay5ZLOY

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b00000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6ZLOY:   sbiw   Xh:Xl,1
         brne   delay6ZLOY

		

       ;##################################################################################7

	  ldi		ViewRegA,0b01111100
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7ZLOY:   sbiw   Xh:Xl,1
         brne   delay7ZLOY

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b10000010
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8ZLOY:   sbiw   Xh:Xl,1
         brne   delay8ZLOY

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTZLOY
;##################################################################################
KOTWO:
        ldi		ViewRegA,0b01000000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1WO:   sbiw   Xh:Xl,1
         brne   delay1WO

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b01100000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2WO:   sbiw   Xh:Xl,1
         brne   delay2WO


    
			;##################################################################################3

	  ldi		ViewRegA,0b01010000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3WO:   sbiw   Xh:Xl,1
         brne   delay3WO

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00101001
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4WO:   sbiw   Xh:Xl,1
         brne   delay4WO

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b11001111
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5WO:   sbiw   Xh:Xl,1
         brne   delay5WO

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b10000000
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6WO:   sbiw   Xh:Xl,1
         brne   delay6WO

		

       ;##################################################################################7

	  ldi		ViewRegA,0b10000111
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7WO:   sbiw   Xh:Xl,1
         brne   delay7WO

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b01111001
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8WO:   sbiw   Xh:Xl,1
         brne   delay8WO

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTWO
;##################################################################################
KOTFUCK:
        ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11111110
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay1FUCK:   sbiw   Xh:Xl,1
         brne   delay1FUCK

		 

			
			;##################################################################################2

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11111101
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay2FUCK:   sbiw   Xh:Xl,1
         brne   delay2FUCK


    
			;##################################################################################3

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11111011
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay3FUCK:   sbiw   Xh:Xl,1
         brne   delay3FUCK

		

         ;##################################################################################4

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11110111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01           ;формируем задержку циклом
         ldi    Xl,0xfE
Delay4FUCK:   sbiw   Xh:Xl,1
         brne   delay4FUCK

		 

         ;##################################################################################5

	  ldi		ViewRegA,0b00011000
			ldi		ViewRegK,0b11101111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01          ;формируем задержку циклом
         ldi    Xl,0xfE
Delay5FUCK:   sbiw   Xh:Xl,1
         brne   delay5FUCK

		 

        ;##################################################################################6

	  ldi		ViewRegA,0b01011011
			ldi		ViewRegK,0b11011111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay6FUCK:   sbiw   Xh:Xl,1
         brne   delay6FUCK

		

       ;##################################################################################7

	  ldi		ViewRegA,0b11111111
			ldi		ViewRegK,0b10111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay7FUCK:   sbiw   Xh:Xl,1
         brne   delay7FUCK

		

      ;##################################################################################8
 
	  ldi		ViewRegA,0b11111111
			ldi		ViewRegK,0b01111111
			out		PortD,ViewRegA
			out		PortB,ViewRegK

			 ldi    Xh,0x01            ;формируем задержку циклом
         ldi    Xl,0xfE
Delay8FUCK:   sbiw   Xh:Xl,1
         brne   delay8FUCK

		

			in SlopReg,PinA
			out PortC,SlopReg
rjmp KOTFUCK
