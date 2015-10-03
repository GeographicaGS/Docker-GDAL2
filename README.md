# Docker GDAL2

GDAL 2.0 Docker image for testing purposes.

## Building image clonning this repository
Build image and run container (cloning this Git repository):

```bash
$ git clone https://github.com/GeographicaGS/docker-gdal2.git myfolder
$ cd docker_gdal2
$ export DATAFOLDER="-v /folder_with_your_testdata/:/home/datafolder"
$ docker build -t geographica/gdal2:testing .
$ docker run $DATAFOLDER --name gdal2 -it --rm geographica/gdal2:testing /bin/bash
```

## Versions
Each version combination is a branch in and a tag in GitHub. These are the available versions:
- GDAL 2.0.0
- GDAL 2.0.1

## DockerHub
Pulling image from DockerHub

```bash
$ docker pull geographica/gdal2:testing
```

## GDAL 2 info
- https://2015.foss4g-na.org/session/gdal-20-overview
- http://trac.osgeo.org/gdal/wiki/GDAL20Changes

## Credits
- https://github.com/OSGeo/gdal
- https://registry.hub.docker.com/u/geodata/gdal/
