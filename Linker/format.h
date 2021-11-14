// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Linker output executable formats.

#ifndef FORMAT_H
#define FORMAT_H

enum output_formats { COM_FORMAT, EXE_FORMAT };

int format_by_name(const char*);
const char* format_name(int);
const char* default_output_name(int format);

#endif // FORMAT_H