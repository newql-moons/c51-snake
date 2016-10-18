;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Timer0
	.globl _main
	.globl _DrawFood
	.globl _CreateFood
	.globl _DrawSnake
	.globl _MoveSnake
	.globl _InitSnake
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Init
	.globl _KeyPros
	.globl _InitTimer0
	.globl _Display
	.globl _Clr
	.globl _Draw
	.globl _HC595SendByte
	.globl _delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_line:
	.ds 8
_direct:
	.ds 1
_Timer0_count_1_17:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0'
;------------------------------------------------------------
;count                     Allocated with name '_Timer0_count_1_17'
;------------------------------------------------------------
;	main.c:119: static uint count = 0;
	clr	a
	mov	_Timer0_count_1_17,a
	mov	(_Timer0_count_1_17 + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:37: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:39: Init();
	lcall	_Init
00102$:
;	main.c:41: Display();
	lcall	_Display
;	main.c:42: KeyPros();
	lcall	_KeyPros
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'Init'
;------------------------------------------------------------
;	main.c:46: void Init()
;	-----------------------------------------
;	 function Init
;	-----------------------------------------
_Init:
;	main.c:48: InitTimer0();
	lcall	_InitTimer0
;	main.c:49: InitSnake();
	lcall	_InitSnake
;	main.c:50: CreateFood();
	lcall	_CreateFood
;	main.c:51: direct = UP;
	mov	_direct,#0x0a
;	main.c:52: DrawSnake(Draw);
	mov	dptr,#_Draw
	lcall	_DrawSnake
;	main.c:53: DrawFood(Draw);
	mov	dptr,#_Draw
	lcall	_DrawFood
;	main.c:54: led = 1;
	setb	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KeyPros'
;------------------------------------------------------------
;keyValue                  Allocated to registers r7 
;------------------------------------------------------------
;	main.c:57: void KeyPros()
;	-----------------------------------------
;	 function KeyPros
;	-----------------------------------------
_KeyPros:
;	main.c:59: uchar keyValue = 1;
	mov	r7,#0x01
;	main.c:61: key = 0x0f;
;	main.c:62: if (key != 0x0f) {
	mov	a,#0x0f
	mov	_P1,a
	cjne	a,_P1,00149$
	ret
00149$:
;	main.c:63: delay(1000);
	mov	dpl,#0xe8
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:64: if (key != 0x0f) {
	mov	a,#0x0f
	cjne	a,_P1,00150$
	ret
00150$:
;	main.c:65: key = 0x0f;
	mov	_P1,#0x0f
;	main.c:66: switch (key) {
	mov	r6,_P1
	cjne	r6,#0x07,00151$
	sjmp	00101$
00151$:
	cjne	r6,#0x0b,00152$
	sjmp	00102$
00152$:
	cjne	r6,#0x0d,00153$
	sjmp	00103$
00153$:
;	main.c:67: case 0x07:
	cjne	r6,#0x0e,00106$
	sjmp	00104$
00101$:
;	main.c:68: keyValue = 0;
	mov	r7,#0x00
;	main.c:69: break;
;	main.c:70: case 0x0b:
	sjmp	00106$
00102$:
;	main.c:71: keyValue = 1;
	mov	r7,#0x01
;	main.c:72: break;
;	main.c:73: case 0x0d:
	sjmp	00106$
00103$:
;	main.c:74: keyValue = 2;
	mov	r7,#0x02
;	main.c:75: break;
;	main.c:76: case 0x0e:
	sjmp	00106$
00104$:
;	main.c:77: keyValue = 3;
	mov	r7,#0x03
;	main.c:81: }
00106$:
;	main.c:83: key = 0xf0;
	mov	_P1,#0xf0
;	main.c:84: switch (key) {
	mov	r6,_P1
	cjne	r6,#0x70,00155$
	sjmp	00112$
00155$:
	cjne	r6,#0xb0,00156$
	sjmp	00108$
00156$:
	cjne	r6,#0xd0,00157$
	sjmp	00109$
00157$:
;	main.c:88: case 0xb0:
	cjne	r6,#0xe0,00112$
	sjmp	00110$
00108$:
;	main.c:89: keyValue += 4;
	mov	a,r7
	add	a,#0x04
	mov	r7,a
;	main.c:90: break;
;	main.c:91: case 0xd0:
	sjmp	00112$
00109$:
;	main.c:92: keyValue += 8;
	mov	a,#0x08
	add	a,r7
	mov	r7,a
;	main.c:93: break;
;	main.c:94: case 0xe0:
	sjmp	00112$
00110$:
;	main.c:95: keyValue += 12;
	mov	a,#0x0c
	add	a,r7
	mov	r7,a
;	main.c:99: }
00112$:
;	main.c:101: direct = keyValue;
	mov	_direct,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer0'
;------------------------------------------------------------
;	main.c:106: void InitTimer0()
;	-----------------------------------------
;	 function InitTimer0
;	-----------------------------------------
_InitTimer0:
;	main.c:108: TMOD = 0x01;
	mov	_TMOD,#0x01
;	main.c:110: EA  = 1;
	setb	_EA
;	main.c:111: ET0 = 1;
	setb	_ET0
;	main.c:112: TH0 = 0XFC;
	mov	_TH0,#0xfc
;	main.c:113: TL0 = 0X18;
	mov	_TL0,#0x18
;	main.c:114: TR0 = 1;
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0'
;------------------------------------------------------------
;count                     Allocated with name '_Timer0_count_1_17'
;------------------------------------------------------------
;	main.c:117: void Timer0() __interrupt 1
;	-----------------------------------------
;	 function Timer0
;	-----------------------------------------
_Timer0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:121: TH0 = 0XFC;
	mov	_TH0,#0xfc
;	main.c:122: TL0 = 0X18;
	mov	_TL0,#0x18
;	main.c:124: if (count++ == 600) {
	mov	r6,_Timer0_count_1_17
	mov	r7,(_Timer0_count_1_17 + 1)
	inc	_Timer0_count_1_17
	clr	a
	cjne	a,_Timer0_count_1_17,00108$
	inc	(_Timer0_count_1_17 + 1)
00108$:
	cjne	r6,#0x58,00103$
	cjne	r7,#0x02,00103$
;	main.c:125: count = 0;
	clr	a
	mov	_Timer0_count_1_17,a
	mov	(_Timer0_count_1_17 + 1),a
;	main.c:127: MoveSnake(direct);
	mov	dpl,_direct
	lcall	_MoveSnake
;	main.c:129: Clr();
	lcall	_Clr
;	main.c:130: DrawSnake(Draw);
	mov	dptr,#_Draw
	lcall	_DrawSnake
;	main.c:131: DrawFood(Draw);
	mov	dptr,#_Draw
	lcall	_DrawFood
00103$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Display'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;tmp                       Allocated to registers 
;------------------------------------------------------------
;	main.c:135: void Display()
;	-----------------------------------------
;	 function Display
;	-----------------------------------------
_Display:
;	main.c:141: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00102$:
;	main.c:142: mat = _cror_(tmp, i);
	mov	b,r7
	inc	b
	mov	a,#0x7f
	sjmp	00111$
00110$:
	clr	c
	rrc	a
00111$:
	djnz	b,00110$
	mov	r6,a
	mov	a,#0x08
	clr	c
	subb	a,r7
	mov	b,a
	inc	b
	mov	a,#0x7f
	sjmp	00114$
00112$:
	add	a,acc
00114$:
	djnz	b,00112$
	orl	a,r6
	mov	_P0,a
;	main.c:143: HC595SendByte(line[i]);
	mov	a,r7
	add	a,#_line
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_HC595SendByte
;	main.c:144: delay(100);
	mov	dpl,#0x64
	lcall	_delay
;	main.c:145: HC595SendByte(0x00);
	mov	dpl,#0x00
	lcall	_HC595SendByte
	pop	ar7
;	main.c:141: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00115$
00115$:
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clr'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:149: void Clr()
;	-----------------------------------------
;	 function Clr
;	-----------------------------------------
_Clr:
;	main.c:152: for (i = 0; i < 8; i++) {
	mov	r7,#0x00
00102$:
;	main.c:153: line[i] = 0x00;
	mov	a,r7
	add	a,#_line
	mov	r0,a
	mov	@r0,#0x00
;	main.c:152: for (i = 0; i < 8; i++) {
	inc	r7
	cjne	r7,#0x08,00110$
00110$:
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Draw'
;------------------------------------------------------------
;y                         Allocated to stack - _bp -3
;x                         Allocated to registers r7 
;tmp                       Allocated to registers r6 
;------------------------------------------------------------
;	main.c:157: void Draw(uchar x, uchar y) __reentrant
;	-----------------------------------------
;	 function Draw
;	-----------------------------------------
_Draw:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	main.c:160: tmp <<= y;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	mov	r6,a
;	main.c:161: line[x] |= tmp;
	mov	a,r7
	add	a,#_line
	mov	r1,a
	mov	ar7,@r1
	mov	a,r6
	orl	a,r7
	mov	@r1,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HC595SendByte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:164: void HC595SendByte(uchar dat)
;	-----------------------------------------
;	 function HC595SendByte
;	-----------------------------------------
_HC595SendByte:
	mov	r7,dpl
;	main.c:168: HC595_SHCP = 0;
	clr	_P3_6
;	main.c:169: HC595_STCP = 0;
	clr	_P3_5
;	main.c:170: for (i = 0; i < 8; i++) {
	mov	r6,#0x00
00102$:
;	main.c:171: HC595_DS = dat >> 7;
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	mov	_P3_4,c
;	main.c:172: dat <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	main.c:173: HC595_SHCP = 1;
	setb	_P3_6
;	main.c:174: _nop_();
	NOP	
;	main.c:175: _nop_();
	NOP	
;	main.c:176: HC595_SHCP = 0;
	clr	_P3_6
;	main.c:170: for (i = 0; i < 8; i++) {
	inc	r6
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	main.c:178: HC595_STCP = 1;
	setb	_P3_5
;	main.c:179: _nop_();
	NOP	
;	main.c:180: _nop_();
	NOP	
;	main.c:181: HC595_STCP = 0;
	clr	_P3_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	main.c:184: void delay(uchar i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dpl
;	main.c:186: while(i--);
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
