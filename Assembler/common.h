// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Utility functions common to passes.

#ifndef COMMON_H
#define COMMON_H

#include <stdbool.h>
#include "parse.h"

enum { NOT_ADDRESSABLE, ADDRESSABLE, MAYBE_ADDRESSABLE };

void perform_ends(STATE*, IFILE*, LEX*);

BOOL string_instruction(const INSDEF*);

void perform_codeseg(STATE*, IFILE*, LEX*);
void perform_dataseg(STATE*, IFILE*, LEX*);
void perform_udataseg(STATE*, IFILE*, LEX*);

bool parse_alignment(STATE*, LEX*, unsigned *p2);

void select_cpu(STATE*, int token);

bool wait_precedes(const IFILE*);

void define_dollar(STATE*, IFILE*);

bool valid_byte_expr(int type);
bool valid_word_expr(int type);
bool valid_dword_expr(int type);
bool valid_qword_expr(int type);
bool valid_tbyte_expr(int type);

typedef size_t EXPR_SIZE(int type, VALUE*, BOOL *init);
size_t byte_expr_size(int expr_type, VALUE*, BOOL *init);
size_t word_expr_size(int expr_type, VALUE*, BOOL *init);
size_t dword_expr_size(int expr_type, VALUE*, BOOL *init);
size_t qword_expr_size(int expr_type, VALUE*, BOOL *init);
size_t tbyte_expr_size(int expr_type, VALUE*, BOOL *init);

#endif // COMMON_H