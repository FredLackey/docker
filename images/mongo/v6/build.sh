#!/bin/bash

main() {

  local SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  eval "docker build -t fredlackey/mongo:6.0 $SCRIPT_DIR"
  eval "docker build -t fredlackey/mongo:6 $SCRIPT_DIR"

}

main "$@"
