#!/bin/bash 
mkdir build 
cd build
cmake ../cmake
make
cp LATTE_DOUBLE ${PREFIX}/lib
cp liblatte.a ${PREFIX}/lib
