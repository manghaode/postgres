#!/usr/bin/bash
make clean
./configure --enable-debug --prefix=`pwd`/../debug CFLAGS="-O0" --with-pgport=5566
bear -- make -j2 && make install