// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Resolve fixups.

#ifndef RESOLVE_H
#define RESOLVE_H

#include "segmented.h"

void resolve_fixups(SEGMENTED*, int verbose);

#endif // RESOLVE_H