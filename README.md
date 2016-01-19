# Docker GDAL2

GDAL2 Docker images.

## Building image clonning this repository
Build image and run container (cloning this Git repository):

```bash
$ git clone https://github.com/GeographicaGS/docker-gdal2.git myfolder
$ cd docker_gdal2
$ export DATAFOLDER="-v /folder_with_your_testdata/:/home/datafolder"
$ docker build -t geographica/gdal2:v2.0.1 .
$ docker run $DATAFOLDER --name gdal2 -it --rm geographica/gdal2:v2.0.1 /bin/bash
```

## Versions
The philosophy behind Git / Docker tags correlation we ended up using is simple: the master branch of this repo contains as many folders containing different Docker image builds as Docker tags we like to have. We don't use Git tags nor branches to try to correlate with Docker tags. We try this in the past and was a mess. Each version packages makes a folder, each folder builds a __geographica/gdal2__ Docker tag bundling different library versions.

These are the available versions:
- GDAL 2.0.1
- Daily - Nightly Snapshots; to test new features (use at your own risk!!).

## DockerHub
Pulling image from DockerHub

```bash
$ docker pull geographica/gdal2:2.0.1
```

## GDAL 2 info
- https://2015.foss4g-na.org/session/gdal-20-overview
- http://trac.osgeo.org/gdal/wiki/GDAL20Changes

## Credits
- https://github.com/OSGeo/gdal
- https://registry.hub.docker.com/u/geodata/gdal/
