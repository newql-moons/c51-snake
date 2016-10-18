;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module snake
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _aligned_alloc_PARM_2
	.globl _rand
	.globl _InitSnake
	.globl _MoveSnake
	.globl _DrawSnake
	.globl _CreateFood
	.globl _DrawFood
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_snake:
	.ds 60
_len:
	.ds 1
_food:
	.ds 2
_CreateFood_x_1_45:
	.ds 1
_CreateFood_y_1_45:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_aligned_alloc_PARM_2:
	.ds 2
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'InitSnake'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	snake.c:16: void InitSnake()
;	-----------------------------------------
;	 function InitSnake
;	-----------------------------------------
_InitSnake:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	snake.c:20: for (i = 0; i < MIN_LEN; i++) {
	mov	r7,#0x00
00102$:
;	snake.c:21: snake[i].x = MIN_LEN - i - 1;
	mov	a,r7
	add	a,r7
	mov	r6,a
	add	a,#_snake
	mov	r1,a
	mov	a,#0x02
	clr	c
	subb	a,r7
	mov	@r1,a
;	snake.c:22: snake[i].y = 0;
	mov	a,r6
	add	a,#_snake
	inc	a
	mov	r0,a
	mov	@r0,#0x00
;	snake.c:23: len++;
	inc	_len
;	snake.c:20: for (i = 0; i < MIN_LEN; i++) {
	inc	r7
	cjne	r7,#0x03,00110$
00110$:
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MoveSnake'
;------------------------------------------------------------
;direct                    Allocated to registers r7 
;last_x                    Allocated to registers r7 
;tmp_x                     Allocated to registers r4 
;last_y                    Allocated to registers r6 
;tmp_y                     Allocated to registers r3 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	snake.c:27: void MoveSnake(uchar direct)
;	-----------------------------------------
;	 function MoveSnake
;	-----------------------------------------
_MoveSnake:
	mov	r7,dpl
;	snake.c:34: switch (direct) {
	cjne	r7,#0x0a,00184$
	sjmp	00109$
00184$:
	cjne	r7,#0x0d,00185$
	sjmp	00101$
00185$:
	cjne	r7,#0x0e,00186$
	sjmp	00113$
00186$:
;	snake.c:35: case LEFT:
	cjne	r7,#0x0f,00117$
	sjmp	00105$
00101$:
;	snake.c:36: if (snake[0].x > 0) {
	mov	a,_snake
	mov	r7,a
	jz	00103$
;	snake.c:37: last_x = snake[0].x - 1;
	dec	r7
;	snake.c:38: last_y = snake[0].y;
	mov	r6,(_snake + 0x0001)
	sjmp	00118$
00103$:
;	snake.c:40: return;
	ret
;	snake.c:44: case RIGHT:
00105$:
;	snake.c:45: if (snake[0].x < MAX_X) {
	mov	r5,_snake
	cjne	r5,#0x07,00189$
00189$:
	jnc	00107$
;	snake.c:46: last_x = snake[0].x + 1;
	mov	a,r5
	inc	a
	mov	r7,a
;	snake.c:47: last_y = snake[0].y;
	mov	r6,(_snake + 0x0001)
	sjmp	00118$
00107$:
;	snake.c:49: return;
	ret
;	snake.c:53: case UP:
00109$:
;	snake.c:54: if (snake[0].y < MAX_Y) {
	mov	r5,(_snake + 0x0001)
	cjne	r5,#0x07,00191$
00191$:
	jnc	00111$
;	snake.c:55: last_x = snake[0].x;
	mov	r7,_snake
;	snake.c:56: last_y = snake[0].y + 1;;
	mov	a,r5
	inc	a
	mov	r6,a
	sjmp	00118$
00111$:
;	snake.c:58: return;
	ret
;	snake.c:62: case DOWN:
00113$:
;	snake.c:63: if (snake[0].y > 0) {
	mov	a,(_snake + 0x0001)
	mov	r5,a
	jz	00115$
;	snake.c:64: last_x = snake[0].x;
	mov	r7,_snake
;	snake.c:65: last_y = snake[0].y - 1;;
	mov	a,r5
	dec	a
	mov	r6,a
	sjmp	00118$
00115$:
;	snake.c:67: return;
;	snake.c:71: default:
	ret
00117$:
;	snake.c:72: return;
;	snake.c:73: }
	ret
00118$:
;	snake.c:75: if (food.x == last_x && food.y == last_y) {
	mov	a,r7
	cjne	a,_food,00148$
	mov	a,r6
	cjne	a,(_food + 0x0001),00148$
;	snake.c:76: len++;
	inc	_len
;	snake.c:77: CreateFood();
	push	ar7
	push	ar6
	lcall	_CreateFood
	pop	ar6
	pop	ar7
;	snake.c:80: for (i = 0; i < len; i++) {
00148$:
	mov	r5,#0x00
00128$:
	clr	c
	mov	a,r5
	subb	a,_len
	jnc	00150$
;	snake.c:81: if (last_x == (snake[i].x) && last_y == (snake[i].y)) {
	mov	a,r5
	add	a,r5
	mov	r4,a
	add	a,#_snake
	mov	r1,a
	mov	ar3,@r1
	mov	a,r7
	cjne	a,ar3,00129$
	mov	a,r4
	add	a,#_snake
	inc	a
	mov	r1,a
	mov	ar4,@r1
	mov	a,r6
	cjne	a,ar4,00129$
;	snake.c:82: return;
	ret
00129$:
;	snake.c:80: for (i = 0; i < len; i++) {
	inc	r5
;	snake.c:86: for (i = 0; i < len; i++) {
	sjmp	00128$
00150$:
	mov	r5,#0x00
00131$:
	clr	c
	mov	a,r5
	subb	a,_len
	jnc	00133$
;	snake.c:87: tmp_x = last_x;
	mov	ar4,r7
;	snake.c:88: tmp_y = last_y;
	mov	ar3,r6
;	snake.c:90: last_x = snake[i].x;
	mov	a,r5
	add	a,r5
	mov	r2,a
	add	a,#_snake
	mov	r1,a
	mov	ar7,@r1
;	snake.c:91: last_y = snake[i].y;
	mov	a,r2
	add	a,#_snake
	mov	r1,a
	inc	a
	mov	r0,a
	mov	ar6,@r0
;	snake.c:93: snake[i].x = tmp_x;
	mov	@r1,ar4
;	snake.c:94: snake[i].y = tmp_y;
	mov	@r0,ar3
;	snake.c:86: for (i = 0; i < len; i++) {
	inc	r5
	sjmp	00131$
00133$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DrawSnake'
;------------------------------------------------------------
;func                      Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	snake.c:98: void DrawSnake(Func func)
;	-----------------------------------------
;	 function DrawSnake
;	-----------------------------------------
_DrawSnake:
	mov	r6,dpl
	mov	r7,dph
;	snake.c:102: for (i = 0;i < len; i++) {
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r5
	subb	a,_len
	jnc	00105$
;	snake.c:103: func(snake[i].x, snake[i].y);
	mov	a,r5
	add	a,r5
	add	a,#_snake
	mov	r1,a
	inc	a
	mov	r0,a
	mov	ar4,@r0
	mov	ar3,@r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	00115$
	sjmp	00116$
00115$:
	push	ar6
	push	ar7
	mov	dpl,r3
	ret
00116$:
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	snake.c:102: for (i = 0;i < len; i++) {
	inc	r5
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CreateFood'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;x                         Allocated with name '_CreateFood_x_1_45'
;y                         Allocated with name '_CreateFood_y_1_45'
;flag                      Allocated to registers r7 
;------------------------------------------------------------
;	snake.c:107: void CreateFood()
;	-----------------------------------------
;	 function CreateFood
;	-----------------------------------------
_CreateFood:
;	snake.c:111: uchar flag = 1;
	mov	r7,#0x01
;	snake.c:113: while (flag) {
00105$:
	mov	a,r7
	jz	00107$
;	snake.c:114: flag = 0;
	mov	r7,#0x00
;	snake.c:115: x = rand() % 8;
	push	ar7
	lcall	_rand
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	_CreateFood_x_1_45,r5
;	snake.c:116: y = rand() % 8;
	lcall	_rand
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	pop	ar7
	mov	_CreateFood_y_1_45,r5
;	snake.c:117: for (i = 0; i < len; i++) {
	mov	r6,#0x00
00109$:
	clr	c
	mov	a,r6
	subb	a,_len
	jnc	00105$
;	snake.c:118: if (x == snake[i].x && y == snake[i].y) {
	mov	a,r6
	add	a,r6
	mov	r5,a
	add	a,#_snake
	mov	r1,a
	mov	a,@r1
	mov	r4,a
	cjne	a,_CreateFood_x_1_45,00110$
	mov	a,r5
	add	a,#_snake
	inc	a
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	cjne	a,_CreateFood_y_1_45,00110$
;	snake.c:119: flag = 1;
	mov	r7,#0x01
;	snake.c:120: break;
	sjmp	00105$
00110$:
;	snake.c:117: for (i = 0; i < len; i++) {
	inc	r6
	sjmp	00109$
00107$:
;	snake.c:124: food.x = x;
	mov	_food,_CreateFood_x_1_45
;	snake.c:125: food.y = y;
	mov	(_food + 0x0001),_CreateFood_y_1_45
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DrawFood'
;------------------------------------------------------------
;func                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	snake.c:128: void DrawFood(Func func)
;	-----------------------------------------
;	 function DrawFood
;	-----------------------------------------
_DrawFood:
	mov	r6,dpl
	mov	r7,dph
;	snake.c:130: func(food.x, food.y);
	push	ar7
	push	ar6
	push	(_food + 0x0001)
	lcall	00103$
	sjmp	00104$
00103$:
	push	ar6
	push	ar7
	mov	dpl,_food
	ret
00104$:
	dec	sp
	pop	ar6
	pop	ar7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
