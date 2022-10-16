#!/bin/bash

docker build -t fredlackey/keycloak:19.0.3 .
docker build -t fredlackey/keycloak:19 .
docker build -t fredlackey/keycloak:latest .
docker build -t fredlackey/keycloak .