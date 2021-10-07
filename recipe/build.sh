#!/bin/bash 
mkdir build 
cd build
cmake ../cmake
make
ls
cp liblatte.a ${PREFIX}/lib
