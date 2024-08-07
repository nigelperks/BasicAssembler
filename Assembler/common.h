// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
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
unsigned wait_needed(STATE*, const INSDEF*);

void define_dollar(STATE*, IFILE*);

bool valid_byte_expr(int type);
bool valid_word_expr(int type);
bool valid_dword_expr(int type);
bool valid_qword_expr(int type);
bool valid_tbyte_expr(int type);

typedef DWORD DataSize;

#define MAX_DATASIZE ((DWORD)(-1))

typedef DataSize EXPR_SIZE_FN(int type, VALUE*, BOOL *init);

DataSize byte_expr_size(int expr_type, VALUE*, BOOL *init);
DataSize word_expr_size(int expr_type, VALUE*, BOOL *init);
DataSize dword_expr_size(int expr_type, VALUE*, BOOL *init);
DataSize qword_expr_size(int expr_type, VALUE*, BOOL *init);
DataSize tbyte_expr_size(int expr_type, VALUE*, BOOL *init);

void match_operand_sizes(STATE*, LEX*, int flag1, int flag2,
                         const OPERAND* oper1, const OPERAND* oper2);

#endif // COMMON_H