#include "snake.h"
#include <stdlib.h>

typedef unsigned char uchar;
typedef unsigned int uint;

struct _Pos {
	uchar x;
	uchar y;
};

static Pos snake[MAX_LEN];
static uchar len;
static Pos food;

void InitSnake()
{
	uchar i;

	for (i = 0; i < MIN_LEN; i++) {
		snake[i].x = MIN_LEN - i - 1;
		snake[i].y = 0;
		len++;
	}
}

void MoveSnake(uchar direct)
{
	uchar last_x = 0, tmp_x;
	uchar last_y = 0, tmp_y;
	uchar i;

	
	switch (direct) {
		case LEFT:
			if (snake[0].x > 0) {
				last_x = snake[0].x - 1;
				last_y = snake[0].y;
			} else {
				return;
			}
			break;

		case RIGHT:
			if (snake[0].x < MAX_X) {
				last_x = snake[0].x + 1;
				last_y = snake[0].y;
			} else {
				return;
			}
			break;

		case UP:
			if (snake[0].y < MAX_Y) {
				last_x = snake[0].x;
				last_y = snake[0].y + 1;;
			} else {
				return;
			}
			break;

		case DOWN:
			if (snake[0].y > 0) {
				last_x = snake[0].x;
				last_y = snake[0].y - 1;;
			} else {
				return;
			}
			break;

		default:
			return;
	}

	if (food.x == last_x && food.y == last_y) {
		len++;
		CreateFood();
	}

	for (i = 0; i < len; i++) {
		if (last_x == (snake[i].x) && last_y == (snake[i].y)) {
			return;
		}
	}

	for (i = 0; i < len; i++) {
		tmp_x = last_x;
		tmp_y = last_y;

		last_x = snake[i].x;
		last_y = snake[i].y;

		snake[i].x = tmp_x;
		snake[i].y = tmp_y;
	}
}

void DrawSnake(Func func)
{
	uchar i;

	for (i = 0;i < len; i++) {
		func(snake[i].x, snake[i].y);
	}
}

void CreateFood()
{
	uchar i;
	uchar x, y;
	uchar flag = 1;

	while (flag) {
		flag = 0;
		x = rand() % 8;
		y = rand() % 8;
		for (i = 0; i < len; i++) {
			if (x == snake[i].x && y == snake[i].y) {
				flag = 1;
				break;
			}
		}
	}
	food.x = x;
	food.y = y;
}

void DrawFood(Func func)
{
	func(food.x, food.y);
}
