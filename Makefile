NAME = snake

$(NAME).bin: $(NAME).hex
	objcopy -I ihex -O binary ./out/$(NAME).hex ./out/$(NAME).bin
$(NAME).hex: $(NAME).ihx
	packihx ./out/$(NAME).ihx > ./out/$(NAME).hex
$(NAME).ihx: main.rel snake.rel
	sdcc -o ./out/$(NAME).ihx ./out/main.rel ./out/snake.rel
main.rel: main.c
	sdcc -c main.c -o ./out/main.rel
snake.rel: snake.c
	sdcc -c snake.c -o ./out/snake.rel
