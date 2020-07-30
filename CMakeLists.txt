cmake_minimum_required(VERSION 2.8)

project(WebServer CXX)

# 默认debug编译
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug")
endif()

set(CXX_FLAGS
    -g
    -Wall
    -std=c++11
    -D_PTHREADS
    -Wno-unused-parameter
)


set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_FLAGS_DEBUG "-O0")
set(CMAKE_CXX_FLAGS_RELEASE "-O0")

# string(REPLACE match_string replace_string output_variable input)
# 替换input字符中匹配字符串match_string为replace_string，输出到output_variable变量
string(REPLACE ";" " " CMAKE_CXX_FLAGS "${CXX_FLAGS}")

# string(TOUPPER intpu output_variable)
# 转换为大写
string(TOUPPER ${CMAKE_BUILD_TYPE} BUILD_TYPE)
message(STATUS "CXX_FLAGS = " ${CMAKE_CXX_FLAGS} " " ${CMAKE_CXX_FLAGS_${BUILD_TYPE}})

add_subdirectory(WebServer)