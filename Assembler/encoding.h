// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Pass to generate machine encodings into an object file.

#ifndef ENCODING_H
#define ENCODING_H

#include "ifile.h"
#include "object.h"
#include "options.h"

OFILE* encoding_pass(IFILE*, const Options*);

#endif // ENCODING_H
