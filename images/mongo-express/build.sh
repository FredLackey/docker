#!/bin/bash

main() {

  local SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  eval "docker build -t fredlackey/mongo-ui:latest $SCRIPT_DIR"
  eval "docker build -t fredlackey/mongo-ui $SCRIPT_DIR"

}

main "$@"
