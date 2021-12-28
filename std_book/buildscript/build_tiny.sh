#!/bin/bash

/home/sun/.bin/gen_cmakelists  $@ 
#rm -rf ./build
mkdir ./build 
cd ./build
cmake ..
make


