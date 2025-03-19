#!/bin/bash

main() {

  local SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  eval "docker build -t fredlackey/redis:7 $SCRIPT_DIR"
  eval "docker build -t fredlackey/redis:latest $SCRIPT_DIR"
  eval "docker build -t fredlackey/redis $SCRIPT_DIR"

}

main "$@"
