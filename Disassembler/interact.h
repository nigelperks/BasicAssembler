// Basic Assembler
// Copyright (c) 2022-24 Nigel Perks
// Interactive COM disassembler.

#ifndef INTERACT_H
#define INTERACT_H

#include <stdbool.h>
#include "decoder.h"

void interact(const DECODER*, const char* fileName, DWORD origin);

#endif // INTERACT_H
