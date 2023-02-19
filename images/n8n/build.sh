#!/bin/bash

docker build -t fredlackey/n8n:0.215.2-debian .
docker build -t fredlackey/n8n:0.215.2 .
docker build -t fredlackey/n8n:0.215 .
docker build -t fredlackey/n8n:0 .
docker build -t fredlackey/n8n:latest .
docker build -t fredlackey/n8n .