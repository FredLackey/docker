#!/bin/bash

docker build -t fredlackey/node:16.17.0 .
docker build -t fredlackey/node:16.17 .
docker build -t fredlackey/node:16 .
docker build -t fredlackey/node:latest .
docker build -t fredlackey/node .