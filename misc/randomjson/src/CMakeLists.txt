# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(randomjson_library VERSION 0.0.1 LANGUAGES C)

add_library(randomjson SHARED
  "randomjson.c"
)

set_target_properties(randomjson PROPERTIES
  OUTPUT_NAME "randomjson"
)

target_compile_definitions(randomjson PUBLIC DART_SHARED_LIB)
