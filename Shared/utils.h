// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Utility types and functions.

#ifndef UTILS_H
#define UTILS_H

#include <stdio.h>
#include <stdbool.h>

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
void* ecalloc(size_t);
char* estrdup(const char*);
void efree(void*);

typedef DWORD MemSize;

#define MAX_MEMSIZE ((DWORD)(-1))

void get_memory_counts(unsigned long *malloc_count, unsigned long *free_count);

#define MAX_FILESIZE ULONG_MAX

typedef unsigned long FileSize;

FILE* efopen(const char* filename, const char* mode, const char* action);
BYTE* read_file(FILE*, FileSize);
FileSize file_size(FILE*, const char* name);

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

unsigned long p2aligned(unsigned long value, unsigned p2);
unsigned long p2gap(unsigned long value, unsigned p2);

#ifdef UNIT_TEST
bool zero(const BYTE*, size_t len);
#endif

#endif // UTILS_H
