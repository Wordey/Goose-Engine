#include <engine.h>
#include <window.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

uint64_t run(){
	if (!init()){
		fprintf(stderr, "Error: Cannot Initialize Game Engine\n");
		return 1;
	}
}

bool init(){
	loop();
	printf("Game Engine Initialized Successfully\n");
	return true;
}

void loop(){
	bool running = true;	
	while (running) {
		if (!running){ clean(); break; }
		on_update();
	}
}

void clean(){
	printf("Game Engine Cleaned Successfully\n");
}
