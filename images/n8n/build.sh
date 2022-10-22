#!/bin/bash

docker build -t fredlackey/n8n:0.199.0-debian .
docker build -t fredlackey/n8n:0.199.0 .
docker build -t fredlackey/n8n:0.199 .
docker build -t fredlackey/n8n:0 .
docker build -t fredlackey/n8n:latest .
docker build -t fredlackey/n8n .