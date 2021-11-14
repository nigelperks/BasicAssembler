// EXE analysis tool
// Copyright (c) 2021 Nigel Perks
// Memory dump.

#ifndef DUMP_H
#define DUMP_H

#include "utils.h"

size_t dump_mem(const BYTE* buf, unsigned long report_offset, unsigned long size);

#endif // DUMP_H