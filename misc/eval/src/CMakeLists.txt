# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(eval_library VERSION 0.0.1 LANGUAGES C)

add_library(eval SHARED
  "eval.c"
)

set_target_properties(eval PROPERTIES
  OUTPUT_NAME "eval"
)

target_compile_definitions(eval PUBLIC DART_SHARED_LIB)
