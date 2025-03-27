bin: main.o logic.o ncurses_helper.o
	gcc *.o -o out -ltinfo -lncurses

main: main.o
	gcc -c main.c -ltinfo -lncurses

logic: logic.o
	gcc -c logic.c 

ncurses: ncurses_helper.o
	gcc -c ncurses_helper.c -ltinfo -lncurses

clean: 
	rm -f *.o

