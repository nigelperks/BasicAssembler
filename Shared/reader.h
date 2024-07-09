// Basic Assembler
// Copyright (c) 2024 Nigel Perks
// Buffered file reading.

#pragma once

#include <stdio.h>
#include "utils.h"

#define READER_BUFFER_SIZE (128 * 1024UL)

typedef struct {
  char* filename;
  FILE* fp;
  BYTE buf[READER_BUFFER_SIZE];
  size_t count;
  size_t pos;
  bool eof;
} READER;

READER* new_reader(const char* filename);

int read_char(READER*);
size_t read_buf(READER*, BYTE* buffer, size_t buffer_size);
