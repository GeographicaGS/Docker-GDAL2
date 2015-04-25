#!/bin/env sh

# Get GDAL2 sources from GitHub

cd /tmp && mkdir gdal2 && cd gdal2
wget https://github.com/rouault/gdal2/archive/trunk.zip
unzip trunk.zip
rm trunk.zip
exit
