# Docker GDAL2

GDAL2:daily Docker images.

Daily - Nightly Snapshots; to test new features (use at your own risk!!).

```bash
docker run --rm -it geographica/gdal2:daily
```

Using a data volume
```bash
$ export DATAFOLDER="-v /folder_with_your_testdata/:/home/datafolder"
$ docker run $DATAFOLDER --name gdal2 -it --rm geographica/gdal2:daily /bin/bash
```

## Build the image own your own
```bash
$ git clone https://github.com/GeographicaGS/docker-gdal2.git
$ cd docker_gdal2
$ docker build -t geographica/gdal2:daily .
```

## GDAL 2 info
- https://2015.foss4g-na.org/session/gdal-20-overview
- http://trac.osgeo.org/gdal/wiki/GDAL20Changes

## Credits
- https://github.com/OSGeo/gdal
- https://registry.hub.docker.com/u/geodata/gdal/
