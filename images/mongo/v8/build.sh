#!/bin/bash

docker build -t fredlackey/mongodb:8.0 .
docker build -t fredlackey/mongodb:8 .
docker build -t fredlackey/mongodb:latest .
docker build -t fredlackey/mongodb .