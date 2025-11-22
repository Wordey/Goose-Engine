#ifndef ENGINE_H
#define ENGINE_H

#include <stdint.h>
#include <stdbool.h>

bool init();
uint64_t run();
void clean();
void loop();
extern bool running;

#endif
