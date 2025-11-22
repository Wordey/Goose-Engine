#include <engine.h>
#include <stdio.h>
#include <stdlib.h>

uint64_t run(){
	if (!init()){
		fprintf(stderr, "Error: Cannot Initialize Game Engine\n");
		return 1;
	}
}

bool init(){
	return true;
}
