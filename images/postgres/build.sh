#!/bin/bash

docker build -t fredlackey/postgres:14 .
docker build -t fredlackey/postgres:latest .
docker build -t fredlackey/postgres .