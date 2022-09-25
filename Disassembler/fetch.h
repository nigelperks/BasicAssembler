// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Fetch machine instructions for disassembly.

#ifndef FETCH_H
#define FETCH_H

#include <stdio.h>
#include <stdbool.h>
#include "decoder.h"
#include "utils.h"

enum fetch_errors {
  FETCH_OK,
  FETCH_ERR_EOF,
  FETCH_ERR_BUFFER_TOO_SMALL,
  FETCH_ERR_TOO_MANY_PREFIXES,
  FETCH_ERR_UNKNOWN_OPCODE,
  FETCH_ERR_UNKNOWN_OPCODE2,
  FETCH_ERR_NO_MODRM_MATCH,
};

const char* fetch_error_string(int error);

int fetch_instruction(const DECODER* dec, FILE* fp, bool print_hex, BYTE* buf, size_t bufsz, unsigned *len);

#endif
