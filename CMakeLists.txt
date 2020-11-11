cmake_minimum_required(VERSION 3.10)

project(templatelib VERSION 0.0.1 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

enable_testing()

add_subdirectory(src)
add_subdirectory(tests/catch)
add_subdirectory(tests/unit)
add_subdirectory(tests/integration)