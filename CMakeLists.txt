
cmake_minimum_required(VERSION 3.10) #当前cmake版本
set(CMAKE_CXX_STANDARD 14)# -std=c++17
project(first_proj)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON) #生成一个存放编译命令的json文件
set(CMAKE_CXX_FLAGS "-g -Wall -fpermissive  ")

set(source_dir "${PROJECT_SOURCE_DIR}/src/") #源码所在目录为项目目录下的src

include_directories(include/) #将会在此目录中寻找头文件，从而可以省略目录名
file(GLOB sourcefiles "${source_dir}/inotify.cpp")  #为所有cpp文件设一个值：sourcefile

add_library(tools lib/tools.cpp) #生成静态库

#add_executable(main ${sourcefiles})
add_executable(main ./func_container.cpp)

target_link_libraries(main tools pthread)  #给目标文件链接上库

