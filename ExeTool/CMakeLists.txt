add_executable(exetool
  dump.c
  exetool.c
  fileutil.c
  interact.c
  loadexe.c
  options.c
)
target_link_libraries(exetool shared)
set_target_properties(exetool PROPERTIES C_STANDARD 11)
