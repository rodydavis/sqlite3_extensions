# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(base64_library VERSION 0.0.1 LANGUAGES C)

add_library(base64 SHARED
  "base64.c"
)

set_target_properties(base64 PROPERTIES
  OUTPUT_NAME "base64"
)

target_compile_definitions(base64 PUBLIC DART_SHARED_LIB)
