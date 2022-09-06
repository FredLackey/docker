#!/bin/bash

docker build -t fredlackey/apache:5.6 .
docker build -t fredlackey/apache:5 .
docker build -t fredlackey/apache:latest .
docker build -t fredlackey/apache .