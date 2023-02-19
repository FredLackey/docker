#!/bin/bash

docker build -t fredlackey/portainer:2.17.0-alpine .
docker build -t fredlackey/portainer:2.17.0 .
docker build -t fredlackey/portainer:2.17 .
docker build -t fredlackey/portainer:2 .
docker build -t fredlackey/portainer:latest .
docker build -t fredlackey/portainer .