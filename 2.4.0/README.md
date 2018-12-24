# Docker GDAL2

GDAL2:2.4.0 Docker images (with Python 3).

```bash
docker run --rm -it geographica/gdal2:2.4.0
```

Using a data volume
```bash
$ export DATAFOLDER="-v /folder_with_your_testdata/:/home/datafolder"
$ docker run $DATAFOLDER --name gdal2 -it --rm geographica/gdal2:2.4.0 /bin/bash
```

## Build the image on your own
```bash
$ git clone https://github.com/GeographicaGS/docker-gdal2.git
$ cd docker_gdal2
$ docker build -t geographica/gdal2:2.4.0 .
```

# Changelog
 - https://trac.osgeo.org/gdal/wiki/Release/2.4.0-News

## GDAL 2 info
- http://download.osgeo.org/gdal/presentations/GDAL%202.1%20(FOSS4G%20Bonn%202016).pdf
- https://2015.foss4g-na.org/session/gdal-20-overview
- http://trac.osgeo.org/gdal/wiki/GDAL20Changes

## Credits
- https://github.com/OSGeo/gdal
- https://registry.hub.docker.com/u/geodata/gdal/
