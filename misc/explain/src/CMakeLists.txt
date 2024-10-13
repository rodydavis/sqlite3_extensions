# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(explain_library VERSION 0.0.1 LANGUAGES C)

add_library(explain SHARED
  "explain.c"
)

set_target_properties(explain PROPERTIES
  OUTPUT_NAME "explain"
)

target_compile_definitions(explain PUBLIC DART_SHARED_LIB)
