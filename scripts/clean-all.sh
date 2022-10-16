#!/bin/bash

main() {

  # Delete all containers
  echo " "
  echo "--- removing containers ---"
  docker rm -f $(docker ps -a -q)

  # Delete volumes
  echo " "
  echo "--- removing volumes ---"
  docker volume rm $(docker volume ls -q)
}

main