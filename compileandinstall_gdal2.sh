#!/bin/env sh

# Compile and install GDAL2

cd /tmp/gdal2/gdal-2.0.1/
./configure --with-python --with-spatialite --with-pg --with-curl
make
make install
ldconfig
cd /tmp && rm -R *
exit
