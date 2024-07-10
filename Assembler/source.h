// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Hold source code for error messages.

#ifndef SOURCE_H
#define SOURCE_H

#include <stddef.h>

struct source_line {
  unsigned lineno;
  char* text;
};

typedef struct {
  char* name;
  struct source_line * lines;
  unsigned allocated;
  unsigned used;
} SOURCE;

SOURCE* new_source(const char* name);
SOURCE* load_source_file(const char* filename);
SOURCE* load_source_mem(const char* mem);
void delete_source(SOURCE*);

const char* source_name(SOURCE*);
unsigned source_lines(SOURCE*);
const char* source_text(SOURCE*, unsigned index);
unsigned source_lineno(SOURCE*, unsigned index);

void print_source(const SOURCE*);

unsigned append_source_line(SOURCE*, unsigned lineno, const char* line);

#endif // SOURCE_H
