#!/bin/bash

docker build -t fredlackey/mongo:8.0 .
docker build -t fredlackey/mongo:8 .
docker build -t fredlackey/mongo:latest .
docker build -t fredlackey/mongo .