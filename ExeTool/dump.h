// EXE analysis tool
// Copyright (c) 2021-24 Nigel Perks
// Memory dump.

#ifndef DUMP_H
#define DUMP_H

#include "utils.h"

MemSize dump_mem(const BYTE* buf, MemSize report_offset, MemSize size);

#endif // DUMP_H