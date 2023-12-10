add_executable(bob
  bob.c
)
target_link_libraries(bob shared)
set_target_properties(bob PROPERTIES C_STANDARD 11)
