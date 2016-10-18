                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Timer0
                                     12 	.globl _main
                                     13 	.globl _DrawFood
                                     14 	.globl _CreateFood
                                     15 	.globl _DrawSnake
                                     16 	.globl _MoveSnake
                                     17 	.globl _InitSnake
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ET2
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _T2EX
                                     88 	.globl _T2
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _B
                                    114 	.globl _A
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _Init
                                    142 	.globl _KeyPros
                                    143 	.globl _InitTimer0
                                    144 	.globl _Display
                                    145 	.globl _Clr
                                    146 	.globl _Draw
                                    147 	.globl _HC595SendByte
                                    148 	.globl _delay
                                    149 ;--------------------------------------------------------
                                    150 ; special function registers
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0	=	0x0080
                           000081   155 _SP	=	0x0081
                           000082   156 _DPL	=	0x0082
                           000083   157 _DPH	=	0x0083
                           000087   158 _PCON	=	0x0087
                           000088   159 _TCON	=	0x0088
                           000089   160 _TMOD	=	0x0089
                           00008A   161 _TL0	=	0x008a
                           00008B   162 _TL1	=	0x008b
                           00008C   163 _TH0	=	0x008c
                           00008D   164 _TH1	=	0x008d
                           000090   165 _P1	=	0x0090
                           000098   166 _SCON	=	0x0098
                           000099   167 _SBUF	=	0x0099
                           0000A0   168 _P2	=	0x00a0
                           0000A8   169 _IE	=	0x00a8
                           0000B0   170 _P3	=	0x00b0
                           0000B8   171 _IP	=	0x00b8
                           0000C8   172 _T2CON	=	0x00c8
                           0000C9   173 _T2MOD	=	0x00c9
                           0000CA   174 _RCAP2L	=	0x00ca
                           0000CB   175 _RCAP2H	=	0x00cb
                           0000CC   176 _TL2	=	0x00cc
                           0000CD   177 _TH2	=	0x00cd
                           0000D0   178 _PSW	=	0x00d0
                           0000E0   179 _ACC	=	0x00e0
                           0000E0   180 _A	=	0x00e0
                           0000F0   181 _B	=	0x00f0
                                    182 ;--------------------------------------------------------
                                    183 ; special function bits
                                    184 ;--------------------------------------------------------
                                    185 	.area RSEG    (ABS,DATA)
      000000                        186 	.org 0x0000
                           000080   187 _P0_0	=	0x0080
                           000081   188 _P0_1	=	0x0081
                           000082   189 _P0_2	=	0x0082
                           000083   190 _P0_3	=	0x0083
                           000084   191 _P0_4	=	0x0084
                           000085   192 _P0_5	=	0x0085
                           000086   193 _P0_6	=	0x0086
                           000087   194 _P0_7	=	0x0087
                           000088   195 _IT0	=	0x0088
                           000089   196 _IE0	=	0x0089
                           00008A   197 _IT1	=	0x008a
                           00008B   198 _IE1	=	0x008b
                           00008C   199 _TR0	=	0x008c
                           00008D   200 _TF0	=	0x008d
                           00008E   201 _TR1	=	0x008e
                           00008F   202 _TF1	=	0x008f
                           000090   203 _P1_0	=	0x0090
                           000091   204 _P1_1	=	0x0091
                           000092   205 _P1_2	=	0x0092
                           000093   206 _P1_3	=	0x0093
                           000094   207 _P1_4	=	0x0094
                           000095   208 _P1_5	=	0x0095
                           000096   209 _P1_6	=	0x0096
                           000097   210 _P1_7	=	0x0097
                           000090   211 _T2	=	0x0090
                           000091   212 _T2EX	=	0x0091
                           000098   213 _RI	=	0x0098
                           000099   214 _TI	=	0x0099
                           00009A   215 _RB8	=	0x009a
                           00009B   216 _TB8	=	0x009b
                           00009C   217 _REN	=	0x009c
                           00009D   218 _SM2	=	0x009d
                           00009E   219 _SM1	=	0x009e
                           00009F   220 _SM0	=	0x009f
                           0000A0   221 _P2_0	=	0x00a0
                           0000A1   222 _P2_1	=	0x00a1
                           0000A2   223 _P2_2	=	0x00a2
                           0000A3   224 _P2_3	=	0x00a3
                           0000A4   225 _P2_4	=	0x00a4
                           0000A5   226 _P2_5	=	0x00a5
                           0000A6   227 _P2_6	=	0x00a6
                           0000A7   228 _P2_7	=	0x00a7
                           0000A8   229 _EX0	=	0x00a8
                           0000A9   230 _ET0	=	0x00a9
                           0000AA   231 _EX1	=	0x00aa
                           0000AB   232 _ET1	=	0x00ab
                           0000AC   233 _ES	=	0x00ac
                           0000AD   234 _ET2	=	0x00ad
                           0000AF   235 _EA	=	0x00af
                           0000B0   236 _P3_0	=	0x00b0
                           0000B1   237 _P3_1	=	0x00b1
                           0000B2   238 _P3_2	=	0x00b2
                           0000B3   239 _P3_3	=	0x00b3
                           0000B4   240 _P3_4	=	0x00b4
                           0000B5   241 _P3_5	=	0x00b5
                           0000B6   242 _P3_6	=	0x00b6
                           0000B7   243 _P3_7	=	0x00b7
                           0000B0   244 _RXD	=	0x00b0
                           0000B1   245 _TXD	=	0x00b1
                           0000B2   246 _INT0	=	0x00b2
                           0000B3   247 _INT1	=	0x00b3
                           0000B4   248 _T0	=	0x00b4
                           0000B5   249 _T1	=	0x00b5
                           0000B6   250 _WR	=	0x00b6
                           0000B7   251 _RD	=	0x00b7
                           0000B8   252 _PX0	=	0x00b8
                           0000B9   253 _PT0	=	0x00b9
                           0000BA   254 _PX1	=	0x00ba
                           0000BB   255 _PT1	=	0x00bb
                           0000BC   256 _PS	=	0x00bc
                           0000BD   257 _PT2	=	0x00bd
                           0000C8   258 _T2CON_0	=	0x00c8
                           0000C9   259 _T2CON_1	=	0x00c9
                           0000CA   260 _T2CON_2	=	0x00ca
                           0000CB   261 _T2CON_3	=	0x00cb
                           0000CC   262 _T2CON_4	=	0x00cc
                           0000CD   263 _T2CON_5	=	0x00cd
                           0000CE   264 _T2CON_6	=	0x00ce
                           0000CF   265 _T2CON_7	=	0x00cf
                           0000C8   266 _CP_RL2	=	0x00c8
                           0000C9   267 _C_T2	=	0x00c9
                           0000CA   268 _TR2	=	0x00ca
                           0000CB   269 _EXEN2	=	0x00cb
                           0000CC   270 _TCLK	=	0x00cc
                           0000CD   271 _RCLK	=	0x00cd
                           0000CE   272 _EXF2	=	0x00ce
                           0000CF   273 _TF2	=	0x00cf
                           0000D0   274 _P	=	0x00d0
                           0000D1   275 _FL	=	0x00d1
                           0000D2   276 _OV	=	0x00d2
                           0000D3   277 _RS0	=	0x00d3
                           0000D4   278 _RS1	=	0x00d4
                           0000D5   279 _F0	=	0x00d5
                           0000D6   280 _AC	=	0x00d6
                           0000D7   281 _CY	=	0x00d7
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable register banks
                                    284 ;--------------------------------------------------------
                                    285 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        286 	.ds 8
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable bit register bank
                                    289 ;--------------------------------------------------------
                                    290 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        291 bits:
      000020                        292 	.ds 1
                           008000   293 	b0 = bits[0]
                           008100   294 	b1 = bits[1]
                           008200   295 	b2 = bits[2]
                           008300   296 	b3 = bits[3]
                           008400   297 	b4 = bits[4]
                           008500   298 	b5 = bits[5]
                           008600   299 	b6 = bits[6]
                           008700   300 	b7 = bits[7]
                                    301 ;--------------------------------------------------------
                                    302 ; internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area DSEG    (DATA)
      000008                        305 _line:
      000008                        306 	.ds 8
      000010                        307 _direct:
      000010                        308 	.ds 1
      000011                        309 _Timer0_count_1_17:
      000011                        310 	.ds 2
                                    311 ;--------------------------------------------------------
                                    312 ; overlayable items in internal ram 
                                    313 ;--------------------------------------------------------
                                    314 	.area	OSEG    (OVR,DATA)
                                    315 	.area	OSEG    (OVR,DATA)
                                    316 	.area	OSEG    (OVR,DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; Stack segment in internal ram 
                                    319 ;--------------------------------------------------------
                                    320 	.area	SSEG
      000062                        321 __start__stack:
      000062                        322 	.ds	1
                                    323 
                                    324 ;--------------------------------------------------------
                                    325 ; indirectly addressable internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area ISEG    (DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; absolute internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area IABS    (ABS,DATA)
                                    332 	.area IABS    (ABS,DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; bit data
                                    335 ;--------------------------------------------------------
                                    336 	.area BSEG    (BIT)
                                    337 ;--------------------------------------------------------
                                    338 ; paged external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area PSEG    (PAG,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XSEG    (XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; absolute external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XABS    (ABS,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; external initialized ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XISEG   (XDATA)
                                    353 	.area HOME    (CODE)
                                    354 	.area GSINIT0 (CODE)
                                    355 	.area GSINIT1 (CODE)
                                    356 	.area GSINIT2 (CODE)
                                    357 	.area GSINIT3 (CODE)
                                    358 	.area GSINIT4 (CODE)
                                    359 	.area GSINIT5 (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area CSEG    (CODE)
                                    363 ;--------------------------------------------------------
                                    364 ; interrupt vector 
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
      000000                        367 __interrupt_vect:
      000000 02 00 11         [24]  368 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  369 	reti
      000004                        370 	.ds	7
      00000B 02 01 1F         [24]  371 	ljmp	_Timer0
                                    372 ;--------------------------------------------------------
                                    373 ; global & static initialisations
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 	.globl __sdcc_gsinit_startup
                                    380 	.globl __sdcc_program_startup
                                    381 	.globl __start__stack
                                    382 	.globl __mcs51_genXINIT
                                    383 	.globl __mcs51_genXRAMCLEAR
                                    384 	.globl __mcs51_genRAMCLEAR
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'Timer0'
                                    387 ;------------------------------------------------------------
                                    388 ;count                     Allocated with name '_Timer0_count_1_17'
                                    389 ;------------------------------------------------------------
                                    390 ;	main.c:119: static uint count = 0;
      00006A E4               [12]  391 	clr	a
      00006B F5 11            [12]  392 	mov	_Timer0_count_1_17,a
      00006D F5 12            [12]  393 	mov	(_Timer0_count_1_17 + 1),a
                                    394 	.area GSFINAL (CODE)
      000079 02 00 0E         [24]  395 	ljmp	__sdcc_program_startup
                                    396 ;--------------------------------------------------------
                                    397 ; Home
                                    398 ;--------------------------------------------------------
                                    399 	.area HOME    (CODE)
                                    400 	.area HOME    (CODE)
      00000E                        401 __sdcc_program_startup:
      00000E 02 00 7C         [24]  402 	ljmp	_main
                                    403 ;	return from main will return to caller
                                    404 ;--------------------------------------------------------
                                    405 ; code
                                    406 ;--------------------------------------------------------
                                    407 	.area CSEG    (CODE)
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'main'
                                    410 ;------------------------------------------------------------
                                    411 ;	main.c:37: void main()
                                    412 ;	-----------------------------------------
                                    413 ;	 function main
                                    414 ;	-----------------------------------------
      00007C                        415 _main:
                           000007   416 	ar7 = 0x07
                           000006   417 	ar6 = 0x06
                           000005   418 	ar5 = 0x05
                           000004   419 	ar4 = 0x04
                           000003   420 	ar3 = 0x03
                           000002   421 	ar2 = 0x02
                           000001   422 	ar1 = 0x01
                           000000   423 	ar0 = 0x00
                                    424 ;	main.c:39: Init();
      00007C 12 00 87         [24]  425 	lcall	_Init
      00007F                        426 00102$:
                                    427 ;	main.c:41: Display();
      00007F 12 01 8D         [24]  428 	lcall	_Display
                                    429 ;	main.c:42: KeyPros();
      000082 12 00 A2         [24]  430 	lcall	_KeyPros
      000085 80 F8            [24]  431 	sjmp	00102$
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'Init'
                                    434 ;------------------------------------------------------------
                                    435 ;	main.c:46: void Init()
                                    436 ;	-----------------------------------------
                                    437 ;	 function Init
                                    438 ;	-----------------------------------------
      000087                        439 _Init:
                                    440 ;	main.c:48: InitTimer0();
      000087 12 01 0F         [24]  441 	lcall	_InitTimer0
                                    442 ;	main.c:49: InitSnake();
      00008A 12 02 36         [24]  443 	lcall	_InitSnake
                                    444 ;	main.c:50: CreateFood();
      00008D 12 03 33         [24]  445 	lcall	_CreateFood
                                    446 ;	main.c:51: direct = UP;
      000090 75 10 0A         [24]  447 	mov	_direct,#0x0a
                                    448 ;	main.c:52: DrawSnake(Draw);
      000093 90 01 E0         [24]  449 	mov	dptr,#_Draw
      000096 12 02 FC         [24]  450 	lcall	_DrawSnake
                                    451 ;	main.c:53: DrawFood(Draw);
      000099 90 01 E0         [24]  452 	mov	dptr,#_Draw
      00009C 12 03 89         [24]  453 	lcall	_DrawFood
                                    454 ;	main.c:54: led = 1;
      00009F D2 A0            [12]  455 	setb	_P2_0
      0000A1 22               [24]  456 	ret
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'KeyPros'
                                    459 ;------------------------------------------------------------
                                    460 ;keyValue                  Allocated to registers r7 
                                    461 ;------------------------------------------------------------
                                    462 ;	main.c:57: void KeyPros()
                                    463 ;	-----------------------------------------
                                    464 ;	 function KeyPros
                                    465 ;	-----------------------------------------
      0000A2                        466 _KeyPros:
                                    467 ;	main.c:59: uchar keyValue = 1;
      0000A2 7F 01            [12]  468 	mov	r7,#0x01
                                    469 ;	main.c:61: key = 0x0f;
                                    470 ;	main.c:62: if (key != 0x0f) {
      0000A4 74 0F            [12]  471 	mov	a,#0x0f
      0000A6 F5 90            [12]  472 	mov	_P1,a
      0000A8 B5 90 01         [24]  473 	cjne	a,_P1,00149$
      0000AB 22               [24]  474 	ret
      0000AC                        475 00149$:
                                    476 ;	main.c:63: delay(1000);
      0000AC 75 82 E8         [24]  477 	mov	dpl,#0xe8
      0000AF C0 07            [24]  478 	push	ar7
      0000B1 12 02 2D         [24]  479 	lcall	_delay
      0000B4 D0 07            [24]  480 	pop	ar7
                                    481 ;	main.c:64: if (key != 0x0f) {
      0000B6 74 0F            [12]  482 	mov	a,#0x0f
      0000B8 B5 90 01         [24]  483 	cjne	a,_P1,00150$
      0000BB 22               [24]  484 	ret
      0000BC                        485 00150$:
                                    486 ;	main.c:65: key = 0x0f;
      0000BC 75 90 0F         [24]  487 	mov	_P1,#0x0f
                                    488 ;	main.c:66: switch (key) {
      0000BF AE 90            [24]  489 	mov	r6,_P1
      0000C1 BE 07 02         [24]  490 	cjne	r6,#0x07,00151$
      0000C4 80 0F            [24]  491 	sjmp	00101$
      0000C6                        492 00151$:
      0000C6 BE 0B 02         [24]  493 	cjne	r6,#0x0b,00152$
      0000C9 80 0E            [24]  494 	sjmp	00102$
      0000CB                        495 00152$:
      0000CB BE 0D 02         [24]  496 	cjne	r6,#0x0d,00153$
      0000CE 80 0D            [24]  497 	sjmp	00103$
      0000D0                        498 00153$:
                                    499 ;	main.c:67: case 0x07:
      0000D0 BE 0E 10         [24]  500 	cjne	r6,#0x0e,00106$
      0000D3 80 0C            [24]  501 	sjmp	00104$
      0000D5                        502 00101$:
                                    503 ;	main.c:68: keyValue = 0;
      0000D5 7F 00            [12]  504 	mov	r7,#0x00
                                    505 ;	main.c:69: break;
                                    506 ;	main.c:70: case 0x0b:
      0000D7 80 0A            [24]  507 	sjmp	00106$
      0000D9                        508 00102$:
                                    509 ;	main.c:71: keyValue = 1;
      0000D9 7F 01            [12]  510 	mov	r7,#0x01
                                    511 ;	main.c:72: break;
                                    512 ;	main.c:73: case 0x0d:
      0000DB 80 06            [24]  513 	sjmp	00106$
      0000DD                        514 00103$:
                                    515 ;	main.c:74: keyValue = 2;
      0000DD 7F 02            [12]  516 	mov	r7,#0x02
                                    517 ;	main.c:75: break;
                                    518 ;	main.c:76: case 0x0e:
      0000DF 80 02            [24]  519 	sjmp	00106$
      0000E1                        520 00104$:
                                    521 ;	main.c:77: keyValue = 3;
      0000E1 7F 03            [12]  522 	mov	r7,#0x03
                                    523 ;	main.c:81: }
      0000E3                        524 00106$:
                                    525 ;	main.c:83: key = 0xf0;
      0000E3 75 90 F0         [24]  526 	mov	_P1,#0xf0
                                    527 ;	main.c:84: switch (key) {
      0000E6 AE 90            [24]  528 	mov	r6,_P1
      0000E8 BE 70 02         [24]  529 	cjne	r6,#0x70,00155$
      0000EB 80 1F            [24]  530 	sjmp	00112$
      0000ED                        531 00155$:
      0000ED BE B0 02         [24]  532 	cjne	r6,#0xb0,00156$
      0000F0 80 0A            [24]  533 	sjmp	00108$
      0000F2                        534 00156$:
      0000F2 BE D0 02         [24]  535 	cjne	r6,#0xd0,00157$
      0000F5 80 0B            [24]  536 	sjmp	00109$
      0000F7                        537 00157$:
                                    538 ;	main.c:88: case 0xb0:
      0000F7 BE E0 12         [24]  539 	cjne	r6,#0xe0,00112$
      0000FA 80 0C            [24]  540 	sjmp	00110$
      0000FC                        541 00108$:
                                    542 ;	main.c:89: keyValue += 4;
      0000FC EF               [12]  543 	mov	a,r7
      0000FD 24 04            [12]  544 	add	a,#0x04
      0000FF FF               [12]  545 	mov	r7,a
                                    546 ;	main.c:90: break;
                                    547 ;	main.c:91: case 0xd0:
      000100 80 0A            [24]  548 	sjmp	00112$
      000102                        549 00109$:
                                    550 ;	main.c:92: keyValue += 8;
      000102 74 08            [12]  551 	mov	a,#0x08
      000104 2F               [12]  552 	add	a,r7
      000105 FF               [12]  553 	mov	r7,a
                                    554 ;	main.c:93: break;
                                    555 ;	main.c:94: case 0xe0:
      000106 80 04            [24]  556 	sjmp	00112$
      000108                        557 00110$:
                                    558 ;	main.c:95: keyValue += 12;
      000108 74 0C            [12]  559 	mov	a,#0x0c
      00010A 2F               [12]  560 	add	a,r7
      00010B FF               [12]  561 	mov	r7,a
                                    562 ;	main.c:99: }
      00010C                        563 00112$:
                                    564 ;	main.c:101: direct = keyValue;
      00010C 8F 10            [24]  565 	mov	_direct,r7
      00010E 22               [24]  566 	ret
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'InitTimer0'
                                    569 ;------------------------------------------------------------
                                    570 ;	main.c:106: void InitTimer0()
                                    571 ;	-----------------------------------------
                                    572 ;	 function InitTimer0
                                    573 ;	-----------------------------------------
      00010F                        574 _InitTimer0:
                                    575 ;	main.c:108: TMOD = 0x01;
      00010F 75 89 01         [24]  576 	mov	_TMOD,#0x01
                                    577 ;	main.c:110: EA  = 1;
      000112 D2 AF            [12]  578 	setb	_EA
                                    579 ;	main.c:111: ET0 = 1;
      000114 D2 A9            [12]  580 	setb	_ET0
                                    581 ;	main.c:112: TH0 = 0XFC;
      000116 75 8C FC         [24]  582 	mov	_TH0,#0xfc
                                    583 ;	main.c:113: TL0 = 0X18;
      000119 75 8A 18         [24]  584 	mov	_TL0,#0x18
                                    585 ;	main.c:114: TR0 = 1;
      00011C D2 8C            [12]  586 	setb	_TR0
      00011E 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'Timer0'
                                    590 ;------------------------------------------------------------
                                    591 ;count                     Allocated with name '_Timer0_count_1_17'
                                    592 ;------------------------------------------------------------
                                    593 ;	main.c:117: void Timer0() __interrupt 1
                                    594 ;	-----------------------------------------
                                    595 ;	 function Timer0
                                    596 ;	-----------------------------------------
      00011F                        597 _Timer0:
      00011F C0 20            [24]  598 	push	bits
      000121 C0 E0            [24]  599 	push	acc
      000123 C0 F0            [24]  600 	push	b
      000125 C0 82            [24]  601 	push	dpl
      000127 C0 83            [24]  602 	push	dph
      000129 C0 07            [24]  603 	push	(0+7)
      00012B C0 06            [24]  604 	push	(0+6)
      00012D C0 05            [24]  605 	push	(0+5)
      00012F C0 04            [24]  606 	push	(0+4)
      000131 C0 03            [24]  607 	push	(0+3)
      000133 C0 02            [24]  608 	push	(0+2)
      000135 C0 01            [24]  609 	push	(0+1)
      000137 C0 00            [24]  610 	push	(0+0)
      000139 C0 D0            [24]  611 	push	psw
      00013B 75 D0 00         [24]  612 	mov	psw,#0x00
                                    613 ;	main.c:121: TH0 = 0XFC;
      00013E 75 8C FC         [24]  614 	mov	_TH0,#0xfc
                                    615 ;	main.c:122: TL0 = 0X18;
      000141 75 8A 18         [24]  616 	mov	_TL0,#0x18
                                    617 ;	main.c:124: if (count++ == 600) {
      000144 AE 11            [24]  618 	mov	r6,_Timer0_count_1_17
      000146 AF 12            [24]  619 	mov	r7,(_Timer0_count_1_17 + 1)
      000148 05 11            [12]  620 	inc	_Timer0_count_1_17
      00014A E4               [12]  621 	clr	a
      00014B B5 11 02         [24]  622 	cjne	a,_Timer0_count_1_17,00108$
      00014E 05 12            [12]  623 	inc	(_Timer0_count_1_17 + 1)
      000150                        624 00108$:
      000150 BE 58 1D         [24]  625 	cjne	r6,#0x58,00103$
      000153 BF 02 1A         [24]  626 	cjne	r7,#0x02,00103$
                                    627 ;	main.c:125: count = 0;
      000156 E4               [12]  628 	clr	a
      000157 F5 11            [12]  629 	mov	_Timer0_count_1_17,a
      000159 F5 12            [12]  630 	mov	(_Timer0_count_1_17 + 1),a
                                    631 ;	main.c:127: MoveSnake(direct);
      00015B 85 10 82         [24]  632 	mov	dpl,_direct
      00015E 12 02 53         [24]  633 	lcall	_MoveSnake
                                    634 ;	main.c:129: Clr();
      000161 12 01 D1         [24]  635 	lcall	_Clr
                                    636 ;	main.c:130: DrawSnake(Draw);
      000164 90 01 E0         [24]  637 	mov	dptr,#_Draw
      000167 12 02 FC         [24]  638 	lcall	_DrawSnake
                                    639 ;	main.c:131: DrawFood(Draw);
      00016A 90 01 E0         [24]  640 	mov	dptr,#_Draw
      00016D 12 03 89         [24]  641 	lcall	_DrawFood
      000170                        642 00103$:
      000170 D0 D0            [24]  643 	pop	psw
      000172 D0 00            [24]  644 	pop	(0+0)
      000174 D0 01            [24]  645 	pop	(0+1)
      000176 D0 02            [24]  646 	pop	(0+2)
      000178 D0 03            [24]  647 	pop	(0+3)
      00017A D0 04            [24]  648 	pop	(0+4)
      00017C D0 05            [24]  649 	pop	(0+5)
      00017E D0 06            [24]  650 	pop	(0+6)
      000180 D0 07            [24]  651 	pop	(0+7)
      000182 D0 83            [24]  652 	pop	dph
      000184 D0 82            [24]  653 	pop	dpl
      000186 D0 F0            [24]  654 	pop	b
      000188 D0 E0            [24]  655 	pop	acc
      00018A D0 20            [24]  656 	pop	bits
      00018C 32               [24]  657 	reti
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'Display'
                                    660 ;------------------------------------------------------------
                                    661 ;i                         Allocated to registers r7 
                                    662 ;tmp                       Allocated to registers 
                                    663 ;------------------------------------------------------------
                                    664 ;	main.c:135: void Display()
                                    665 ;	-----------------------------------------
                                    666 ;	 function Display
                                    667 ;	-----------------------------------------
      00018D                        668 _Display:
                                    669 ;	main.c:141: for (i = 0; i < 8; i++) {
      00018D 7F 00            [12]  670 	mov	r7,#0x00
      00018F                        671 00102$:
                                    672 ;	main.c:142: mat = _cror_(tmp, i);
      00018F 8F F0            [24]  673 	mov	b,r7
      000191 05 F0            [12]  674 	inc	b
      000193 74 7F            [12]  675 	mov	a,#0x7f
      000195 80 02            [24]  676 	sjmp	00111$
      000197                        677 00110$:
      000197 C3               [12]  678 	clr	c
      000198 13               [12]  679 	rrc	a
      000199                        680 00111$:
      000199 D5 F0 FB         [24]  681 	djnz	b,00110$
      00019C FE               [12]  682 	mov	r6,a
      00019D 74 08            [12]  683 	mov	a,#0x08
      00019F C3               [12]  684 	clr	c
      0001A0 9F               [12]  685 	subb	a,r7
      0001A1 F5 F0            [12]  686 	mov	b,a
      0001A3 05 F0            [12]  687 	inc	b
      0001A5 74 7F            [12]  688 	mov	a,#0x7f
      0001A7 80 02            [24]  689 	sjmp	00114$
      0001A9                        690 00112$:
      0001A9 25 E0            [12]  691 	add	a,acc
      0001AB                        692 00114$:
      0001AB D5 F0 FB         [24]  693 	djnz	b,00112$
      0001AE 4E               [12]  694 	orl	a,r6
      0001AF F5 80            [12]  695 	mov	_P0,a
                                    696 ;	main.c:143: HC595SendByte(line[i]);
      0001B1 EF               [12]  697 	mov	a,r7
      0001B2 24 08            [12]  698 	add	a,#_line
      0001B4 F9               [12]  699 	mov	r1,a
      0001B5 87 82            [24]  700 	mov	dpl,@r1
      0001B7 C0 07            [24]  701 	push	ar7
      0001B9 12 02 06         [24]  702 	lcall	_HC595SendByte
                                    703 ;	main.c:144: delay(100);
      0001BC 75 82 64         [24]  704 	mov	dpl,#0x64
      0001BF 12 02 2D         [24]  705 	lcall	_delay
                                    706 ;	main.c:145: HC595SendByte(0x00);
      0001C2 75 82 00         [24]  707 	mov	dpl,#0x00
      0001C5 12 02 06         [24]  708 	lcall	_HC595SendByte
      0001C8 D0 07            [24]  709 	pop	ar7
                                    710 ;	main.c:141: for (i = 0; i < 8; i++) {
      0001CA 0F               [12]  711 	inc	r7
      0001CB BF 08 00         [24]  712 	cjne	r7,#0x08,00115$
      0001CE                        713 00115$:
      0001CE 40 BF            [24]  714 	jc	00102$
      0001D0 22               [24]  715 	ret
                                    716 ;------------------------------------------------------------
                                    717 ;Allocation info for local variables in function 'Clr'
                                    718 ;------------------------------------------------------------
                                    719 ;i                         Allocated to registers r7 
                                    720 ;------------------------------------------------------------
                                    721 ;	main.c:149: void Clr()
                                    722 ;	-----------------------------------------
                                    723 ;	 function Clr
                                    724 ;	-----------------------------------------
      0001D1                        725 _Clr:
                                    726 ;	main.c:152: for (i = 0; i < 8; i++) {
      0001D1 7F 00            [12]  727 	mov	r7,#0x00
      0001D3                        728 00102$:
                                    729 ;	main.c:153: line[i] = 0x00;
      0001D3 EF               [12]  730 	mov	a,r7
      0001D4 24 08            [12]  731 	add	a,#_line
      0001D6 F8               [12]  732 	mov	r0,a
      0001D7 76 00            [12]  733 	mov	@r0,#0x00
                                    734 ;	main.c:152: for (i = 0; i < 8; i++) {
      0001D9 0F               [12]  735 	inc	r7
      0001DA BF 08 00         [24]  736 	cjne	r7,#0x08,00110$
      0001DD                        737 00110$:
      0001DD 40 F4            [24]  738 	jc	00102$
      0001DF 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'Draw'
                                    742 ;------------------------------------------------------------
                                    743 ;y                         Allocated to stack - _bp -3
                                    744 ;x                         Allocated to registers r7 
                                    745 ;tmp                       Allocated to registers r6 
                                    746 ;------------------------------------------------------------
                                    747 ;	main.c:157: void Draw(uchar x, uchar y) __reentrant
                                    748 ;	-----------------------------------------
                                    749 ;	 function Draw
                                    750 ;	-----------------------------------------
      0001E0                        751 _Draw:
      0001E0 C0 17            [24]  752 	push	_bp
      0001E2 85 81 17         [24]  753 	mov	_bp,sp
      0001E5 AF 82            [24]  754 	mov	r7,dpl
                                    755 ;	main.c:160: tmp <<= y;
      0001E7 E5 17            [12]  756 	mov	a,_bp
      0001E9 24 FD            [12]  757 	add	a,#0xfd
      0001EB F8               [12]  758 	mov	r0,a
      0001EC 86 F0            [24]  759 	mov	b,@r0
      0001EE 05 F0            [12]  760 	inc	b
      0001F0 74 01            [12]  761 	mov	a,#0x01
      0001F2 80 02            [24]  762 	sjmp	00105$
      0001F4                        763 00103$:
      0001F4 25 E0            [12]  764 	add	a,acc
      0001F6                        765 00105$:
      0001F6 D5 F0 FB         [24]  766 	djnz	b,00103$
      0001F9 FE               [12]  767 	mov	r6,a
                                    768 ;	main.c:161: line[x] |= tmp;
      0001FA EF               [12]  769 	mov	a,r7
      0001FB 24 08            [12]  770 	add	a,#_line
      0001FD F9               [12]  771 	mov	r1,a
      0001FE 87 07            [24]  772 	mov	ar7,@r1
      000200 EE               [12]  773 	mov	a,r6
      000201 4F               [12]  774 	orl	a,r7
      000202 F7               [12]  775 	mov	@r1,a
      000203 D0 17            [24]  776 	pop	_bp
      000205 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'HC595SendByte'
                                    780 ;------------------------------------------------------------
                                    781 ;dat                       Allocated to registers r7 
                                    782 ;i                         Allocated to registers r6 
                                    783 ;------------------------------------------------------------
                                    784 ;	main.c:164: void HC595SendByte(uchar dat)
                                    785 ;	-----------------------------------------
                                    786 ;	 function HC595SendByte
                                    787 ;	-----------------------------------------
      000206                        788 _HC595SendByte:
      000206 AF 82            [24]  789 	mov	r7,dpl
                                    790 ;	main.c:168: HC595_SHCP = 0;
      000208 C2 B6            [12]  791 	clr	_P3_6
                                    792 ;	main.c:169: HC595_STCP = 0;
      00020A C2 B5            [12]  793 	clr	_P3_5
                                    794 ;	main.c:170: for (i = 0; i < 8; i++) {
      00020C 7E 00            [12]  795 	mov	r6,#0x00
      00020E                        796 00102$:
                                    797 ;	main.c:171: HC595_DS = dat >> 7;
      00020E EF               [12]  798 	mov	a,r7
      00020F 23               [12]  799 	rl	a
      000210 54 01            [12]  800 	anl	a,#0x01
      000212 FD               [12]  801 	mov	r5,a
      000213 24 FF            [12]  802 	add	a,#0xff
      000215 92 B4            [24]  803 	mov	_P3_4,c
                                    804 ;	main.c:172: dat <<= 1;
      000217 EF               [12]  805 	mov	a,r7
      000218 2F               [12]  806 	add	a,r7
      000219 FF               [12]  807 	mov	r7,a
                                    808 ;	main.c:173: HC595_SHCP = 1;
      00021A D2 B6            [12]  809 	setb	_P3_6
                                    810 ;	main.c:174: _nop_();
      00021C 00               [12]  811 	NOP	
                                    812 ;	main.c:175: _nop_();
      00021D 00               [12]  813 	NOP	
                                    814 ;	main.c:176: HC595_SHCP = 0;
      00021E C2 B6            [12]  815 	clr	_P3_6
                                    816 ;	main.c:170: for (i = 0; i < 8; i++) {
      000220 0E               [12]  817 	inc	r6
      000221 BE 08 00         [24]  818 	cjne	r6,#0x08,00113$
      000224                        819 00113$:
      000224 40 E8            [24]  820 	jc	00102$
                                    821 ;	main.c:178: HC595_STCP = 1;
      000226 D2 B5            [12]  822 	setb	_P3_5
                                    823 ;	main.c:179: _nop_();
      000228 00               [12]  824 	NOP	
                                    825 ;	main.c:180: _nop_();
      000229 00               [12]  826 	NOP	
                                    827 ;	main.c:181: HC595_STCP = 0;
      00022A C2 B5            [12]  828 	clr	_P3_5
      00022C 22               [24]  829 	ret
                                    830 ;------------------------------------------------------------
                                    831 ;Allocation info for local variables in function 'delay'
                                    832 ;------------------------------------------------------------
                                    833 ;i                         Allocated to registers 
                                    834 ;------------------------------------------------------------
                                    835 ;	main.c:184: void delay(uchar i)
                                    836 ;	-----------------------------------------
                                    837 ;	 function delay
                                    838 ;	-----------------------------------------
      00022D                        839 _delay:
      00022D AF 82            [24]  840 	mov	r7,dpl
                                    841 ;	main.c:186: while(i--);
      00022F                        842 00101$:
      00022F 8F 06            [24]  843 	mov	ar6,r7
      000231 1F               [12]  844 	dec	r7
      000232 EE               [12]  845 	mov	a,r6
      000233 70 FA            [24]  846 	jnz	00101$
      000235 22               [24]  847 	ret
                                    848 	.area CSEG    (CODE)
                                    849 	.area CONST   (CODE)
                                    850 	.area XINIT   (CODE)
                                    851 	.area CABS    (ABS,CODE)
