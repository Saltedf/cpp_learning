#include <unistd.h>
#include<ios>
#include<fstream>
#include<iostream>
#include <sstream>
#include<string>
#include<vector>
#include <cerrno>
#include <cstring>

int main(int argc , char** argv) {

    if(argc < 2) {
        std::cerr << "usage: <sourcefiles...>  <-t target>  [-h header_path] " << std::endl;
        return EXIT_FAILURE;
    }

    int opt_ch{};

    std::string opts = "-t:h:";
    std::string targetname{} ;
    std::string include_dir{};

    std::ofstream cmakelist{"CMakeLists.txt"};
    if(!cmakelist) {
        std::cerr <<"cannot create CMakeLists.txt " << std::endl;
        return EXIT_FAILURE;
    }

    std::ostringstream sourcefiles{};

    do {
    opt_ch = getopt(argc,argv,opts.c_str() ) ;
    switch(opt_ch){

        case 1 : 
            sourcefiles <<" " <<argv[optind-1] ;
            break;
        case '?':
            std::cerr  << "unknowed option: " << argv[optind-1] <<std::endl; 
            break;

        case 't':
            std::cout << "- Target Name: " ;
            std::cout << optarg <<std::endl;
            targetname = std::string{optarg};
            break;

        case 'h':
            std::cout << "- Header: " ;
            std::cout << optarg <<std::endl;
            include_dir = std::string{optarg};
            break;

        case -1:
        default:
            break;
    }

    }while(opt_ch!= -1) ;


    cmakelist  << "cmake_minimum_required(VERSION 3.10) #当前cmake版本\n" ;
    cmakelist << "set(CMAKE_CXX_STANDARD 14)# -std=c++14 \n " ;
    cmakelist << "project(tiny_proj)\n";
    cmakelist<< "set(CMAKE_EXPORT_COMPILE_COMMANDS ON) #生成一个存放编译命令的json文件 \n" ;
    cmakelist << "set(CMAKE_CXX_FLAGS \"-g -Wall\") \n" ;


    if(include_dir != ""){
        cmakelist <<"include_directories(" << include_dir << ") #将会在此目录中寻找头文件，从而可以省略目录名\n";
    }

    if(targetname==""){
        std::cerr <<"target cannot be empty" << std::endl;
        exit(1);
    }

    cmakelist << "add_executable(" << targetname << sourcefiles.str() <<" )\n" ;

    cmakelist << std::flush;


    std::cout << "\nfinished!" << std::endl ;
    return 0 ;
}

