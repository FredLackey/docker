#!/bin/bash

docker build -t fredlackey/nginx:1.22-alpine .
docker build -t fredlackey/nginx:latest .
docker build -t fredlackey/nginx .
