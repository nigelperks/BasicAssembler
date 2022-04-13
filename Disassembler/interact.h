// Basic Assembler
// Copyright (c) 2022 Nigel Perks
// Interactive COM disassembler.

#ifndef INTERACT_H
#define INTERACT_H

#include <stdbool.h>
#include "instable.h"

void interact(const DECODER*, const char* fileName);

void tab_to_assembly(bool printing_hex, unsigned bytes);

#endif // INTERACT_H
