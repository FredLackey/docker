#!/bin/bash

docker build -t fredlackey/pgadmin:4-6.12 .
docker build -t fredlackey/pgadmin:6.12 .
docker build -t fredlackey/pgadmin:4 .
docker build -t fredlackey/pgadmin:latest .
docker build -t fredlackey/pgadmin .