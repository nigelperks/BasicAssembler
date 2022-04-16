#include "operand.h"

void init_operand(OPERAND* op) {
  init_operand_class(&op->opclass);
}

void add_flag(OPERAND* op, int flag) {
  add_class_flag(&op->opclass, flag);
}

BOOL has_flag(const OPERAND* op, int flag) {
  return has_class_flag(&op->opclass, flag);
}
