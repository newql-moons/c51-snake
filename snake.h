#ifndef _SNAKE_H
#define _SNAKE_H

#define MAX_X 		7
#define MAX_Y 		7
#define MAX_LEN 	30
#define MIN_LEN 	3

#define LEFT 		13
#define RIGHT 		15
#define UP			10
#define DOWN		14

typedef struct _Pos Pos;
typedef void (*Func)(unsigned char x, unsigned char y) __reentrant;

void InitSnake();
void MoveSnake(unsigned char direct);
void DrawSnake(Func func);

void CreateFood();
void DrawFood(Func func);

#endif //_SNAKE_H
