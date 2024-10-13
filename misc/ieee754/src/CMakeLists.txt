# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(ieee754_library VERSION 0.0.1 LANGUAGES C)

add_library(ieee754 SHARED
  "ieee754.c"
)

set_target_properties(ieee754 PROPERTIES
  OUTPUT_NAME "ieee754"
)

target_compile_definitions(ieee754 PUBLIC DART_SHARED_LIB)
