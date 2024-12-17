#!/bin/bash

docker build -t fredlackey/moodle:3.5 .
docker build -t fredlackey/moodle:3 .
docker build -t fredlackey/moodle:latest .
docker build -t fredlackey/moodle .