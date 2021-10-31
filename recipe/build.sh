#!/bin/bash
set -ex
if [[ "${mpi}" != "nompi" ]]; then
  export FC="$PREFIX/bin/mpifort"
  MPI_OPT="-DDO_MPI=ON"
else
  MPI_OPT="-DDO_MPI=OFF"
fi

mkdir build
cd build
cmake ../cmake ${CMAKE_ARGS} ${MPI_OPT}
make -j${CPU_COUNT:-1}
make install
