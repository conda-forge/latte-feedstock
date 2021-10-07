#!/bin/bash 
mkdir build 
cd build
cmake ../cmake
make
mkdir ${PREFIX}/bin
cp LATTE_DOUBLE ${PREFIX}/bin
cp liblatte.a ${PREFIX}/lib
