                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module snake
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _aligned_alloc_PARM_2
                                     12 	.globl _rand
                                     13 	.globl _InitSnake
                                     14 	.globl _MoveSnake
                                     15 	.globl _DrawSnake
                                     16 	.globl _CreateFood
                                     17 	.globl _DrawFood
                                     18 ;--------------------------------------------------------
                                     19 ; special function registers
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; special function bits
                                     25 ;--------------------------------------------------------
                                     26 	.area RSEG    (ABS,DATA)
      000000                         27 	.org 0x0000
                                     28 ;--------------------------------------------------------
                                     29 ; overlayable register banks
                                     30 ;--------------------------------------------------------
                                     31 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         32 	.ds 8
                                     33 ;--------------------------------------------------------
                                     34 ; internal ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DSEG    (DATA)
      000021                         37 _snake:
      000021                         38 	.ds 60
      00005D                         39 _len:
      00005D                         40 	.ds 1
      00005E                         41 _food:
      00005E                         42 	.ds 2
      000060                         43 _CreateFood_x_1_45:
      000060                         44 	.ds 1
      000061                         45 _CreateFood_y_1_45:
      000061                         46 	.ds 1
                                     47 ;--------------------------------------------------------
                                     48 ; overlayable items in internal ram 
                                     49 ;--------------------------------------------------------
                                     50 	.area	OSEG    (OVR,DATA)
      000018                         51 _aligned_alloc_PARM_2:
      000018                         52 	.ds 2
                                     53 ;--------------------------------------------------------
                                     54 ; indirectly addressable internal ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area ISEG    (DATA)
                                     57 ;--------------------------------------------------------
                                     58 ; absolute internal ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area IABS    (ABS,DATA)
                                     61 	.area IABS    (ABS,DATA)
                                     62 ;--------------------------------------------------------
                                     63 ; bit data
                                     64 ;--------------------------------------------------------
                                     65 	.area BSEG    (BIT)
                                     66 ;--------------------------------------------------------
                                     67 ; paged external ram data
                                     68 ;--------------------------------------------------------
                                     69 	.area PSEG    (PAG,XDATA)
                                     70 ;--------------------------------------------------------
                                     71 ; external ram data
                                     72 ;--------------------------------------------------------
                                     73 	.area XSEG    (XDATA)
                                     74 ;--------------------------------------------------------
                                     75 ; absolute external ram data
                                     76 ;--------------------------------------------------------
                                     77 	.area XABS    (ABS,XDATA)
                                     78 ;--------------------------------------------------------
                                     79 ; external initialized ram data
                                     80 ;--------------------------------------------------------
                                     81 	.area XISEG   (XDATA)
                                     82 	.area HOME    (CODE)
                                     83 	.area GSINIT0 (CODE)
                                     84 	.area GSINIT1 (CODE)
                                     85 	.area GSINIT2 (CODE)
                                     86 	.area GSINIT3 (CODE)
                                     87 	.area GSINIT4 (CODE)
                                     88 	.area GSINIT5 (CODE)
                                     89 	.area GSINIT  (CODE)
                                     90 	.area GSFINAL (CODE)
                                     91 	.area CSEG    (CODE)
                                     92 ;--------------------------------------------------------
                                     93 ; global & static initialisations
                                     94 ;--------------------------------------------------------
                                     95 	.area HOME    (CODE)
                                     96 	.area GSINIT  (CODE)
                                     97 	.area GSFINAL (CODE)
                                     98 	.area GSINIT  (CODE)
                                     99 ;--------------------------------------------------------
                                    100 ; Home
                                    101 ;--------------------------------------------------------
                                    102 	.area HOME    (CODE)
                                    103 	.area HOME    (CODE)
                                    104 ;--------------------------------------------------------
                                    105 ; code
                                    106 ;--------------------------------------------------------
                                    107 	.area CSEG    (CODE)
                                    108 ;------------------------------------------------------------
                                    109 ;Allocation info for local variables in function 'InitSnake'
                                    110 ;------------------------------------------------------------
                                    111 ;i                         Allocated to registers r7 
                                    112 ;------------------------------------------------------------
                                    113 ;	snake.c:16: void InitSnake()
                                    114 ;	-----------------------------------------
                                    115 ;	 function InitSnake
                                    116 ;	-----------------------------------------
      000236                        117 _InitSnake:
                           000007   118 	ar7 = 0x07
                           000006   119 	ar6 = 0x06
                           000005   120 	ar5 = 0x05
                           000004   121 	ar4 = 0x04
                           000003   122 	ar3 = 0x03
                           000002   123 	ar2 = 0x02
                           000001   124 	ar1 = 0x01
                           000000   125 	ar0 = 0x00
                                    126 ;	snake.c:20: for (i = 0; i < MIN_LEN; i++) {
      000236 7F 00            [12]  127 	mov	r7,#0x00
      000238                        128 00102$:
                                    129 ;	snake.c:21: snake[i].x = MIN_LEN - i - 1;
      000238 EF               [12]  130 	mov	a,r7
      000239 2F               [12]  131 	add	a,r7
      00023A FE               [12]  132 	mov	r6,a
      00023B 24 21            [12]  133 	add	a,#_snake
      00023D F9               [12]  134 	mov	r1,a
      00023E 74 02            [12]  135 	mov	a,#0x02
      000240 C3               [12]  136 	clr	c
      000241 9F               [12]  137 	subb	a,r7
      000242 F7               [12]  138 	mov	@r1,a
                                    139 ;	snake.c:22: snake[i].y = 0;
      000243 EE               [12]  140 	mov	a,r6
      000244 24 21            [12]  141 	add	a,#_snake
      000246 04               [12]  142 	inc	a
      000247 F8               [12]  143 	mov	r0,a
      000248 76 00            [12]  144 	mov	@r0,#0x00
                                    145 ;	snake.c:23: len++;
      00024A 05 5D            [12]  146 	inc	_len
                                    147 ;	snake.c:20: for (i = 0; i < MIN_LEN; i++) {
      00024C 0F               [12]  148 	inc	r7
      00024D BF 03 00         [24]  149 	cjne	r7,#0x03,00110$
      000250                        150 00110$:
      000250 40 E6            [24]  151 	jc	00102$
      000252 22               [24]  152 	ret
                                    153 ;------------------------------------------------------------
                                    154 ;Allocation info for local variables in function 'MoveSnake'
                                    155 ;------------------------------------------------------------
                                    156 ;direct                    Allocated to registers r7 
                                    157 ;last_x                    Allocated to registers r7 
                                    158 ;tmp_x                     Allocated to registers r4 
                                    159 ;last_y                    Allocated to registers r6 
                                    160 ;tmp_y                     Allocated to registers r3 
                                    161 ;i                         Allocated to registers r5 
                                    162 ;------------------------------------------------------------
                                    163 ;	snake.c:27: void MoveSnake(uchar direct)
                                    164 ;	-----------------------------------------
                                    165 ;	 function MoveSnake
                                    166 ;	-----------------------------------------
      000253                        167 _MoveSnake:
      000253 AF 82            [24]  168 	mov	r7,dpl
                                    169 ;	snake.c:34: switch (direct) {
      000255 BF 0A 02         [24]  170 	cjne	r7,#0x0a,00184$
      000258 80 29            [24]  171 	sjmp	00109$
      00025A                        172 00184$:
      00025A BF 0D 02         [24]  173 	cjne	r7,#0x0d,00185$
      00025D 80 0A            [24]  174 	sjmp	00101$
      00025F                        175 00185$:
      00025F BF 0E 02         [24]  176 	cjne	r7,#0x0e,00186$
      000262 80 2E            [24]  177 	sjmp	00113$
      000264                        178 00186$:
                                    179 ;	snake.c:35: case LEFT:
      000264 BF 0F 38         [24]  180 	cjne	r7,#0x0f,00117$
      000267 80 0B            [24]  181 	sjmp	00105$
      000269                        182 00101$:
                                    183 ;	snake.c:36: if (snake[0].x > 0) {
      000269 E5 21            [12]  184 	mov	a,_snake
      00026B FF               [12]  185 	mov	r7,a
      00026C 60 05            [24]  186 	jz	00103$
                                    187 ;	snake.c:37: last_x = snake[0].x - 1;
      00026E 1F               [12]  188 	dec	r7
                                    189 ;	snake.c:38: last_y = snake[0].y;
      00026F AE 22            [24]  190 	mov	r6,(_snake + 0x0001)
      000271 80 2D            [24]  191 	sjmp	00118$
      000273                        192 00103$:
                                    193 ;	snake.c:40: return;
      000273 22               [24]  194 	ret
                                    195 ;	snake.c:44: case RIGHT:
      000274                        196 00105$:
                                    197 ;	snake.c:45: if (snake[0].x < MAX_X) {
      000274 AD 21            [24]  198 	mov	r5,_snake
      000276 BD 07 00         [24]  199 	cjne	r5,#0x07,00189$
      000279                        200 00189$:
      000279 50 07            [24]  201 	jnc	00107$
                                    202 ;	snake.c:46: last_x = snake[0].x + 1;
      00027B ED               [12]  203 	mov	a,r5
      00027C 04               [12]  204 	inc	a
      00027D FF               [12]  205 	mov	r7,a
                                    206 ;	snake.c:47: last_y = snake[0].y;
      00027E AE 22            [24]  207 	mov	r6,(_snake + 0x0001)
      000280 80 1E            [24]  208 	sjmp	00118$
      000282                        209 00107$:
                                    210 ;	snake.c:49: return;
      000282 22               [24]  211 	ret
                                    212 ;	snake.c:53: case UP:
      000283                        213 00109$:
                                    214 ;	snake.c:54: if (snake[0].y < MAX_Y) {
      000283 AD 22            [24]  215 	mov	r5,(_snake + 0x0001)
      000285 BD 07 00         [24]  216 	cjne	r5,#0x07,00191$
      000288                        217 00191$:
      000288 50 07            [24]  218 	jnc	00111$
                                    219 ;	snake.c:55: last_x = snake[0].x;
      00028A AF 21            [24]  220 	mov	r7,_snake
                                    221 ;	snake.c:56: last_y = snake[0].y + 1;;
      00028C ED               [12]  222 	mov	a,r5
      00028D 04               [12]  223 	inc	a
      00028E FE               [12]  224 	mov	r6,a
      00028F 80 0F            [24]  225 	sjmp	00118$
      000291                        226 00111$:
                                    227 ;	snake.c:58: return;
      000291 22               [24]  228 	ret
                                    229 ;	snake.c:62: case DOWN:
      000292                        230 00113$:
                                    231 ;	snake.c:63: if (snake[0].y > 0) {
      000292 E5 22            [12]  232 	mov	a,(_snake + 0x0001)
      000294 FD               [12]  233 	mov	r5,a
      000295 60 07            [24]  234 	jz	00115$
                                    235 ;	snake.c:64: last_x = snake[0].x;
      000297 AF 21            [24]  236 	mov	r7,_snake
                                    237 ;	snake.c:65: last_y = snake[0].y - 1;;
      000299 ED               [12]  238 	mov	a,r5
      00029A 14               [12]  239 	dec	a
      00029B FE               [12]  240 	mov	r6,a
      00029C 80 02            [24]  241 	sjmp	00118$
      00029E                        242 00115$:
                                    243 ;	snake.c:67: return;
                                    244 ;	snake.c:71: default:
      00029E 22               [24]  245 	ret
      00029F                        246 00117$:
                                    247 ;	snake.c:72: return;
                                    248 ;	snake.c:73: }
      00029F 22               [24]  249 	ret
      0002A0                        250 00118$:
                                    251 ;	snake.c:75: if (food.x == last_x && food.y == last_y) {
      0002A0 EF               [12]  252 	mov	a,r7
      0002A1 B5 5E 11         [24]  253 	cjne	a,_food,00148$
      0002A4 EE               [12]  254 	mov	a,r6
      0002A5 B5 5F 0D         [24]  255 	cjne	a,(_food + 0x0001),00148$
                                    256 ;	snake.c:76: len++;
      0002A8 05 5D            [12]  257 	inc	_len
                                    258 ;	snake.c:77: CreateFood();
      0002AA C0 07            [24]  259 	push	ar7
      0002AC C0 06            [24]  260 	push	ar6
      0002AE 12 03 33         [24]  261 	lcall	_CreateFood
      0002B1 D0 06            [24]  262 	pop	ar6
      0002B3 D0 07            [24]  263 	pop	ar7
                                    264 ;	snake.c:80: for (i = 0; i < len; i++) {
      0002B5                        265 00148$:
      0002B5 7D 00            [12]  266 	mov	r5,#0x00
      0002B7                        267 00128$:
      0002B7 C3               [12]  268 	clr	c
      0002B8 ED               [12]  269 	mov	a,r5
      0002B9 95 5D            [12]  270 	subb	a,_len
      0002BB 50 1B            [24]  271 	jnc	00150$
                                    272 ;	snake.c:81: if (last_x == (snake[i].x) && last_y == (snake[i].y)) {
      0002BD ED               [12]  273 	mov	a,r5
      0002BE 2D               [12]  274 	add	a,r5
      0002BF FC               [12]  275 	mov	r4,a
      0002C0 24 21            [12]  276 	add	a,#_snake
      0002C2 F9               [12]  277 	mov	r1,a
      0002C3 87 03            [24]  278 	mov	ar3,@r1
      0002C5 EF               [12]  279 	mov	a,r7
      0002C6 B5 03 0C         [24]  280 	cjne	a,ar3,00129$
      0002C9 EC               [12]  281 	mov	a,r4
      0002CA 24 21            [12]  282 	add	a,#_snake
      0002CC 04               [12]  283 	inc	a
      0002CD F9               [12]  284 	mov	r1,a
      0002CE 87 04            [24]  285 	mov	ar4,@r1
      0002D0 EE               [12]  286 	mov	a,r6
      0002D1 B5 04 01         [24]  287 	cjne	a,ar4,00129$
                                    288 ;	snake.c:82: return;
      0002D4 22               [24]  289 	ret
      0002D5                        290 00129$:
                                    291 ;	snake.c:80: for (i = 0; i < len; i++) {
      0002D5 0D               [12]  292 	inc	r5
                                    293 ;	snake.c:86: for (i = 0; i < len; i++) {
      0002D6 80 DF            [24]  294 	sjmp	00128$
      0002D8                        295 00150$:
      0002D8 7D 00            [12]  296 	mov	r5,#0x00
      0002DA                        297 00131$:
      0002DA C3               [12]  298 	clr	c
      0002DB ED               [12]  299 	mov	a,r5
      0002DC 95 5D            [12]  300 	subb	a,_len
      0002DE 50 1B            [24]  301 	jnc	00133$
                                    302 ;	snake.c:87: tmp_x = last_x;
      0002E0 8F 04            [24]  303 	mov	ar4,r7
                                    304 ;	snake.c:88: tmp_y = last_y;
      0002E2 8E 03            [24]  305 	mov	ar3,r6
                                    306 ;	snake.c:90: last_x = snake[i].x;
      0002E4 ED               [12]  307 	mov	a,r5
      0002E5 2D               [12]  308 	add	a,r5
      0002E6 FA               [12]  309 	mov	r2,a
      0002E7 24 21            [12]  310 	add	a,#_snake
      0002E9 F9               [12]  311 	mov	r1,a
      0002EA 87 07            [24]  312 	mov	ar7,@r1
                                    313 ;	snake.c:91: last_y = snake[i].y;
      0002EC EA               [12]  314 	mov	a,r2
      0002ED 24 21            [12]  315 	add	a,#_snake
      0002EF F9               [12]  316 	mov	r1,a
      0002F0 04               [12]  317 	inc	a
      0002F1 F8               [12]  318 	mov	r0,a
      0002F2 86 06            [24]  319 	mov	ar6,@r0
                                    320 ;	snake.c:93: snake[i].x = tmp_x;
      0002F4 A7 04            [24]  321 	mov	@r1,ar4
                                    322 ;	snake.c:94: snake[i].y = tmp_y;
      0002F6 A6 03            [24]  323 	mov	@r0,ar3
                                    324 ;	snake.c:86: for (i = 0; i < len; i++) {
      0002F8 0D               [12]  325 	inc	r5
      0002F9 80 DF            [24]  326 	sjmp	00131$
      0002FB                        327 00133$:
      0002FB 22               [24]  328 	ret
                                    329 ;------------------------------------------------------------
                                    330 ;Allocation info for local variables in function 'DrawSnake'
                                    331 ;------------------------------------------------------------
                                    332 ;func                      Allocated to registers r6 r7 
                                    333 ;i                         Allocated to registers r5 
                                    334 ;------------------------------------------------------------
                                    335 ;	snake.c:98: void DrawSnake(Func func)
                                    336 ;	-----------------------------------------
                                    337 ;	 function DrawSnake
                                    338 ;	-----------------------------------------
      0002FC                        339 _DrawSnake:
      0002FC AE 82            [24]  340 	mov	r6,dpl
      0002FE AF 83            [24]  341 	mov	r7,dph
                                    342 ;	snake.c:102: for (i = 0;i < len; i++) {
      000300 7D 00            [12]  343 	mov	r5,#0x00
      000302                        344 00103$:
      000302 C3               [12]  345 	clr	c
      000303 ED               [12]  346 	mov	a,r5
      000304 95 5D            [12]  347 	subb	a,_len
      000306 50 2A            [24]  348 	jnc	00105$
                                    349 ;	snake.c:103: func(snake[i].x, snake[i].y);
      000308 ED               [12]  350 	mov	a,r5
      000309 2D               [12]  351 	add	a,r5
      00030A 24 21            [12]  352 	add	a,#_snake
      00030C F9               [12]  353 	mov	r1,a
      00030D 04               [12]  354 	inc	a
      00030E F8               [12]  355 	mov	r0,a
      00030F 86 04            [24]  356 	mov	ar4,@r0
      000311 87 03            [24]  357 	mov	ar3,@r1
      000313 C0 07            [24]  358 	push	ar7
      000315 C0 06            [24]  359 	push	ar6
      000317 C0 05            [24]  360 	push	ar5
      000319 C0 04            [24]  361 	push	ar4
      00031B 12 03 20         [24]  362 	lcall	00115$
      00031E 80 07            [24]  363 	sjmp	00116$
      000320                        364 00115$:
      000320 C0 06            [24]  365 	push	ar6
      000322 C0 07            [24]  366 	push	ar7
      000324 8B 82            [24]  367 	mov	dpl,r3
      000326 22               [24]  368 	ret
      000327                        369 00116$:
      000327 15 81            [12]  370 	dec	sp
      000329 D0 05            [24]  371 	pop	ar5
      00032B D0 06            [24]  372 	pop	ar6
      00032D D0 07            [24]  373 	pop	ar7
                                    374 ;	snake.c:102: for (i = 0;i < len; i++) {
      00032F 0D               [12]  375 	inc	r5
      000330 80 D0            [24]  376 	sjmp	00103$
      000332                        377 00105$:
      000332 22               [24]  378 	ret
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'CreateFood'
                                    381 ;------------------------------------------------------------
                                    382 ;i                         Allocated to registers r6 
                                    383 ;x                         Allocated with name '_CreateFood_x_1_45'
                                    384 ;y                         Allocated with name '_CreateFood_y_1_45'
                                    385 ;flag                      Allocated to registers r7 
                                    386 ;------------------------------------------------------------
                                    387 ;	snake.c:107: void CreateFood()
                                    388 ;	-----------------------------------------
                                    389 ;	 function CreateFood
                                    390 ;	-----------------------------------------
      000333                        391 _CreateFood:
                                    392 ;	snake.c:111: uchar flag = 1;
      000333 7F 01            [12]  393 	mov	r7,#0x01
                                    394 ;	snake.c:113: while (flag) {
      000335                        395 00105$:
      000335 EF               [12]  396 	mov	a,r7
      000336 60 4A            [24]  397 	jz	00107$
                                    398 ;	snake.c:114: flag = 0;
      000338 7F 00            [12]  399 	mov	r7,#0x00
                                    400 ;	snake.c:115: x = rand() % 8;
      00033A C0 07            [24]  401 	push	ar7
      00033C 12 03 A7         [24]  402 	lcall	_rand
      00033F 75 18 08         [24]  403 	mov	__modsint_PARM_2,#0x08
      000342 75 19 00         [24]  404 	mov	(__modsint_PARM_2 + 1),#0x00
      000345 12 04 AD         [24]  405 	lcall	__modsint
      000348 AD 82            [24]  406 	mov	r5,dpl
      00034A 8D 60            [24]  407 	mov	_CreateFood_x_1_45,r5
                                    408 ;	snake.c:116: y = rand() % 8;
      00034C 12 03 A7         [24]  409 	lcall	_rand
      00034F 75 18 08         [24]  410 	mov	__modsint_PARM_2,#0x08
      000352 75 19 00         [24]  411 	mov	(__modsint_PARM_2 + 1),#0x00
      000355 12 04 AD         [24]  412 	lcall	__modsint
      000358 AD 82            [24]  413 	mov	r5,dpl
      00035A D0 07            [24]  414 	pop	ar7
      00035C 8D 61            [24]  415 	mov	_CreateFood_y_1_45,r5
                                    416 ;	snake.c:117: for (i = 0; i < len; i++) {
      00035E 7E 00            [12]  417 	mov	r6,#0x00
      000360                        418 00109$:
      000360 C3               [12]  419 	clr	c
      000361 EE               [12]  420 	mov	a,r6
      000362 95 5D            [12]  421 	subb	a,_len
      000364 50 CF            [24]  422 	jnc	00105$
                                    423 ;	snake.c:118: if (x == snake[i].x && y == snake[i].y) {
      000366 EE               [12]  424 	mov	a,r6
      000367 2E               [12]  425 	add	a,r6
      000368 FD               [12]  426 	mov	r5,a
      000369 24 21            [12]  427 	add	a,#_snake
      00036B F9               [12]  428 	mov	r1,a
      00036C E7               [12]  429 	mov	a,@r1
      00036D FC               [12]  430 	mov	r4,a
      00036E B5 60 0E         [24]  431 	cjne	a,_CreateFood_x_1_45,00110$
      000371 ED               [12]  432 	mov	a,r5
      000372 24 21            [12]  433 	add	a,#_snake
      000374 04               [12]  434 	inc	a
      000375 F9               [12]  435 	mov	r1,a
      000376 E7               [12]  436 	mov	a,@r1
      000377 FD               [12]  437 	mov	r5,a
      000378 B5 61 04         [24]  438 	cjne	a,_CreateFood_y_1_45,00110$
                                    439 ;	snake.c:119: flag = 1;
      00037B 7F 01            [12]  440 	mov	r7,#0x01
                                    441 ;	snake.c:120: break;
      00037D 80 B6            [24]  442 	sjmp	00105$
      00037F                        443 00110$:
                                    444 ;	snake.c:117: for (i = 0; i < len; i++) {
      00037F 0E               [12]  445 	inc	r6
      000380 80 DE            [24]  446 	sjmp	00109$
      000382                        447 00107$:
                                    448 ;	snake.c:124: food.x = x;
      000382 85 60 5E         [24]  449 	mov	_food,_CreateFood_x_1_45
                                    450 ;	snake.c:125: food.y = y;
      000385 85 61 5F         [24]  451 	mov	(_food + 0x0001),_CreateFood_y_1_45
      000388 22               [24]  452 	ret
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'DrawFood'
                                    455 ;------------------------------------------------------------
                                    456 ;func                      Allocated to registers r6 r7 
                                    457 ;------------------------------------------------------------
                                    458 ;	snake.c:128: void DrawFood(Func func)
                                    459 ;	-----------------------------------------
                                    460 ;	 function DrawFood
                                    461 ;	-----------------------------------------
      000389                        462 _DrawFood:
      000389 AE 82            [24]  463 	mov	r6,dpl
      00038B AF 83            [24]  464 	mov	r7,dph
                                    465 ;	snake.c:130: func(food.x, food.y);
      00038D C0 07            [24]  466 	push	ar7
      00038F C0 06            [24]  467 	push	ar6
      000391 C0 5F            [24]  468 	push	(_food + 0x0001)
      000393 12 03 98         [24]  469 	lcall	00103$
      000396 80 08            [24]  470 	sjmp	00104$
      000398                        471 00103$:
      000398 C0 06            [24]  472 	push	ar6
      00039A C0 07            [24]  473 	push	ar7
      00039C 85 5E 82         [24]  474 	mov	dpl,_food
      00039F 22               [24]  475 	ret
      0003A0                        476 00104$:
      0003A0 15 81            [12]  477 	dec	sp
      0003A2 D0 06            [24]  478 	pop	ar6
      0003A4 D0 07            [24]  479 	pop	ar7
      0003A6 22               [24]  480 	ret
                                    481 	.area CSEG    (CODE)
                                    482 	.area CONST   (CODE)
                                    483 	.area XINIT   (CODE)
                                    484 	.area CABS    (ABS,CODE)
