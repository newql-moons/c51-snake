#include <at89x52.h>
#include "snake.h"

typedef unsigned char uchar;
typedef unsigned int uint;

#define _nop_() __asm NOP __endasm
#define _crol_(dat, i) ((dat << i) | (dat >> (8 - i)))
#define _cror_(dat, i) ((dat >> i) | (dat << (8 - i)))


#define HC595_SHCP 	P3_6
#define HC595_STCP 	P3_5
#define HC595_DS	P3_4

#define mat 		P0
#define key			P1
#define led			P2_0

void Init();

void HC595SendByte(uchar dat);
void Draw(uchar x, uchar y) __reentrant;
void Clr();
void Display();

void InitTimer0();

void KeyPros();

void delay(uchar i);

static uchar line[8];
static uchar direct;


void main()
{
	Init();
	for (;;) {
		Display();
		KeyPros();
	}
}

void Init()
{
	InitTimer0();
	InitSnake();
	CreateFood();
	direct = UP;
	DrawSnake(Draw);
	DrawFood(Draw);
	led = 1;
}

void KeyPros()
{
	uchar keyValue = 1;

	key = 0x0f;
	if (key != 0x0f) {
		delay(1000);
		if (key != 0x0f) {
			key = 0x0f;
			switch (key) {
				case 0x07:
					keyValue = 0;
					break;
				case 0x0b:
					keyValue = 1;
					break;
				case 0x0d:
					keyValue = 2;
					break;
				case 0x0e:
					keyValue = 3;
					break;
				default:
					break;
			}

			key = 0xf0;
			switch (key) {
				case 0x70:
					keyValue += 0;
					break;
				case 0xb0:
					keyValue += 4;
					break;
				case 0xd0:
					keyValue += 8;
					break;
				case 0xe0:
					keyValue += 12;
					break;
				default:
					break;
			}

			direct = keyValue;
		}
	}
}

void InitTimer0()
{
	TMOD = 0x01;

	EA  = 1;
	ET0 = 1;
	TH0 = 0XFC;
	TL0 = 0X18;
	TR0 = 1;
}

void Timer0() __interrupt 1
{
	static uint count = 0;

	TH0 = 0XFC;
	TL0 = 0X18;

	if (count++ == 600) {
		count = 0;

		MoveSnake(direct);

		Clr();
		DrawSnake(Draw);
		DrawFood(Draw);
	}
}

void Display()
{
	uchar i;
	uchar tmp;

	tmp = 0x7f;
	for (i = 0; i < 8; i++) {
		mat = _cror_(tmp, i);
		HC595SendByte(line[i]);
		delay(100);
		HC595SendByte(0x00);
	}
}

void Clr()
{
	uchar i;
	for (i = 0; i < 8; i++) {
		line[i] = 0x00;
	}
}

void Draw(uchar x, uchar y) __reentrant
{
	uchar tmp = 0x01; //0000 0001
	tmp <<= y;
	line[x] |= tmp;
}

void HC595SendByte(uchar dat)
{
	uchar i;

	HC595_SHCP = 0;
	HC595_STCP = 0;
	for (i = 0; i < 8; i++) {
		HC595_DS = dat >> 7;
		dat <<= 1;
		HC595_SHCP = 1;
		_nop_();
		_nop_();
		HC595_SHCP = 0;
	}
	HC595_STCP = 1;
	_nop_();
	_nop_();
	HC595_STCP = 0;
}

void delay(uchar i)
{
	while(i--);
}
