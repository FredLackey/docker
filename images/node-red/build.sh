#!/bin/bash

docker build -t fredlackey/node-red:2.2.3-12 .
docker build -t fredlackey/node-red:2.2.3 .
docker build -t fredlackey/node-red:2.2 .
docker build -t fredlackey/node-red:2 .
docker build -t fredlackey/portainer:latest .
docker build -t fredlackey/portainer .