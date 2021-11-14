// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Hold source code for error messages.

#ifndef SOURCE_H
#define SOURCE_H

#include <stddef.h>

struct source_line {
  unsigned lineno;
  const char* text;
};

typedef struct {
  char* name;
  struct source_line * lines;
  size_t allocated;
  size_t used;
} SOURCE;

SOURCE* load_source_file(const char* filename);
SOURCE* load_source_mem(const char* mem);
void delete_source(SOURCE*);

const char* source_name(SOURCE*);
unsigned source_lines(SOURCE*);
const char* source_text(SOURCE*, unsigned index);
unsigned source_lineno(SOURCE*, unsigned index);

void print_source(const SOURCE*);

#endif // SOURCE_H
