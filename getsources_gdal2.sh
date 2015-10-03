#!/bin/env sh

# Get GDAL2 sources from GitHub

cd /tmp && mkdir gdal2 && cd gdal2
wget http://download.osgeo.org/gdal/2.0.1/gdal-2.0.1.tar.gz
tar -xzvf gdal-2.0.1.tar.gz
rm gdal-2.0.1.tar.gz
exit
