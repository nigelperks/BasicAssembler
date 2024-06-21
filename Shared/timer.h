// Basic Assembler
// Copyright (c) 2024 Nigel Perks
// Execution timer.

#pragma once

typedef struct {
  long long freq;
  long long start;
  long long stop;
} TIMER;

void start_timer(TIMER*);
void stop_timer(TIMER*);
long long elapsed_usec(const TIMER*);
