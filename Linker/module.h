// Basic Linker
// Copyright (c) 2021 Nigel Perks
// The logic for processing one object module,
// using the mechanisms of OFILE and SEGMENTS.

#ifndef MODULE_H
#define MODULE_H

#include "object.h"
#include "segmented.h"

SEGMENTED* build_module_segments(const OFILE*, int case_sensitivity, int verbose, const char* module_name);

#endif // MODULE_H