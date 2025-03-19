#!/bin/bash

main() {

  local SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

  eval "$SCRIPT_DIR/images/mongo/v6/build.sh"
  eval "$SCRIPT_DIR/images/mongo-express/build.sh"
  eval "$SCRIPT_DIR/images/redis/build.sh"

  eval "docker compose -f dev.yml up -d"

}

main "$@"

