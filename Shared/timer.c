// Basic Assembler
// Copyright (c) 2024 Nigel Perks
// Execution timer.

#pragma warning (disable: 5105)

#include <limits.h>
#include <Windows.h>
#include "timer.h"

// https://learn.microsoft.com/en-us/windows/win32/sysinfo/acquiring-high-resolution-time-stamps

void start_timer(TIMER* t) {
  LARGE_INTEGER i;
  QueryPerformanceFrequency(&i);
  t->freq = i.QuadPart;
  QueryPerformanceCounter(&i);
  t->start = i.QuadPart;
}

void stop_timer(TIMER* t) {
  LARGE_INTEGER i;
  QueryPerformanceCounter(&i);
  t->stop = i.QuadPart;
}

long long elapsed_usec(const TIMER* t) {
  const long long MILLION = 1000000;
  long long ticks = t->stop - t->start;
  if (ticks < 0 || ticks > LLONG_MAX / MILLION)
    return 0;
  ticks *= MILLION;
  return ticks / t->freq;
}
