cmake_minimum_required(VERSION 3.19)
project(contest CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(a a.cpp)
add_executable(b b.cpp)
add_executable(c c.cpp)
add_executable(d d.cpp)
add_executable(e e.cpp)
add_executable(f f.cpp)

