cmake_minimum_required(VERSION 3.10) #当前cmake版本
set(CMAKE_CXX_STANDARD 14)# -std=c++14 
 project(tiny_proj)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON) #生成一个存放编译命令的json文件 
set(CMAKE_CXX_FLAGS "-g -Wall") 
<<<<<<< HEAD
add_executable(main2 ostream1_output.cc )
=======
add_executable(test_chinese test_chinese.cc )
>>>>>>> 6de1f43d161712e74501d1a38ea52f06f4c3c20f
