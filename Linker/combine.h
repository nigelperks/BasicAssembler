// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Incorporate module into program and combine public segments.

#ifndef COMBINE_H
#define COMBINE_H

#include "segmented.h"

void incorporate_module(SEGMENTED* prog, SEGMENTED* module, int verbose);

#endif // COMBINE_H