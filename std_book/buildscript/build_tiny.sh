#!/bin/bash

/home/sun/.bin/cmakewrapper $@ 
cd ./build
cmake ..
make


