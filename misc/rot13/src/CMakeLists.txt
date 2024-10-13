# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(rot13_library VERSION 0.0.1 LANGUAGES C)

add_library(rot13 SHARED
  "rot13.c"
)

set_target_properties(rot13 PROPERTIES
  OUTPUT_NAME "rot13"
)

target_compile_definitions(rot13 PUBLIC DART_SHARED_LIB)
