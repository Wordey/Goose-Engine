engine: engine.o main.o
	mkdir -p bin/exutable
	gcc -Iinclude bin/engine.o bin/main.o -o bin/exutable/engine

main.o :
	gcc -Iinclude -c core/main.c -o bin/main.o

engine.o :
	mkdir bin
	gcc -Iinclude -c core/engine.c -o bin/engine.o

clean:
	rm -rf bin
