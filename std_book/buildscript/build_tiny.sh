#!/bin/bash

/home/sun/.bin/gen_cmakelists  $@ 
#rm -rf ./build
mkdir ./build 
>>>>>>> 6de1f43d161712e74501d1a38ea52f06f4c3c20f:std_book/compiler.sh
cd ./build
cmake ..
make


