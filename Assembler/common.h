// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Utility functions common to passes.

#ifndef COMMON_H
#define COMMON_H

#include "parse.h"

enum { NOT_ADDRESSABLE, ADDRESSABLE, MAYBE_ADDRESSABLE };

void perform_ends(STATE*, IFILE*, LEX*);

BOOL string_instruction(const INSDEF*);

void perform_codeseg(STATE*, IFILE*, LEX*);
void perform_dataseg(STATE*, IFILE*, LEX*);

#endif // COMMON_H