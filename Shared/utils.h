// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Utility types and functions.

#ifndef UTILS_H
#define UTILS_H

#include <stdio.h>

extern const char* progname;

typedef int BOOL;

enum { FALSE, TRUE };

typedef unsigned char BYTE;
typedef unsigned short WORD;
typedef unsigned long DWORD;
typedef unsigned long long QWORD;

typedef signed char SBYTE;
typedef signed short SWORD;

void fatal(const char* fmt, ...);

void* emalloc(size_t);
void* erealloc(void*, size_t);
void* ecalloc(size_t count, size_t size);
char* estrdup(const char*);
void efree(void*);

void get_memory_counts(unsigned long *malloc_count, unsigned long *free_count);

FILE* efopen(const char* filename, const char* mode, const char* descrip);

void position(FILE*, const char* string, unsigned pos, unsigned tab_size);
void print_notabs(FILE*, const char*, unsigned tab_size);

WORD read_word_le(void*);
void write_word_le(void*, WORD);

typedef struct {
  unsigned size;
  unsigned long val[];
} VECTOR;

VECTOR* new_vector(unsigned size);
void delete_vector(VECTOR*);

#endif // UTILS_H
