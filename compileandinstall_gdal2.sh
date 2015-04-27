#!/bin/env sh

# Compile and install GDAL2

cd /tmp/gdal2/gdal2-trunk/gdal
./configure --with-python --with-spatialite 
make
make install
ldconfig
cd /tmp && rm -R *
exit
