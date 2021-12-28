#!/bin/bash

$PWD/gen_cmakelists  $@ 
#rm -rf ./build
mkdir ./build 
cd ./build
cmake ..
make


