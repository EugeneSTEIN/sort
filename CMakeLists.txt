cmake_minimum_required(VERSION 3.11)
#cmake .. -G "MinGW Makefiles"
#set(CMAKE_C_COMPILER "c:/envs/MinGW/bin/gcc.exe")
#set(CMAKE_CXX_COMPILER "c:/envs/MinGW/bin/g++.exe")

message(STATUS "CMAKE_SOURCE_DIR=" ${CMAKE_SOURCE_DIR})

project(sort_test)

include_directories(
        ${CMAKE_SOURCE_DIR}/include
        )

aux_source_directory(. DIR_ROOT_SRCS)
aux_source_directory(src DIR_SRC_SRCS)

set (CMAKE_CXX_FLAGS
        "${CMAKE_CXX_FLAGS} -g"
        )

add_executable(sort_test
        ${DIR_ROOT_SRCS}
        ${DIR_SRC_SRCS}
        )