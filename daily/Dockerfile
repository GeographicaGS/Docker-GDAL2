##
# geographica/gdal2
#
# This creates an Ubuntu derived base image that installs GDAL 2.
#
# Ubuntu 14.04 Trusty Tahyr
FROM ubuntu:trusty

MAINTAINER Cayetano Benavent <cayetano.benavent@geographica.gs>

# Install basic dependencies
RUN apt-get update -y && apt-get install -y \
    software-properties-common \
    python-software-properties \
    build-essential \
    python-dev \
    python-numpy \
    libspatialite-dev \
    sqlite3 \
    libpq-dev \
    libcurl4-gnutls-dev \
    libproj-dev \
    libxml2-dev \
    libgeos-dev \
    libnetcdf-dev \
    libpoppler-dev \
    libspatialite-dev \
    libhdf4-alt-dev \
    libhdf5-serial-dev \
    wget

# Compile and install GDAL
ENV ROOTDIR /usr/local/
ENV GDAL_DAILY_URL http://www.gdal.org/daily/

# Load assets
WORKDIR $ROOTDIR/

RUN GDAL_DAILY_FL=$(wget -O - $GDAL_DAILY_URL \
    | grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' \
    | sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' \
    | grep -e 'gdal-svn-trunk-[0-9]*.[0-9]*.[0-9]*.tar.gz$') \
    && cd src \
    && wget $GDAL_DAILY_URL$GDAL_DAILY_FL \
    && tar -xvf ${GDAL_DAILY_FL} \
    && cd ${GDAL_DAILY_FL%.tar.gz} \
    && ./configure --with-python --with-spatialite --with-pg --with-curl \
    && make && make install && ldconfig \
    && rm -Rf $ROOTDIR/src/* \
    && apt-get update -y \
    && apt-get remove -y --purge build-essential wget

# Output version and capabilities by default.
CMD gdalinfo --version && gdalinfo --formats && ogrinfo --formats
