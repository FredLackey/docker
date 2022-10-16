#!/bin/bash

main () {

  local SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
  local SCRIPTS_PATH=$(dirname $SCRIPT_PATH)
  local ROOT_PATH=$(dirname $SCRIPTS_PATH)

  echo "Removing Windows garbage from bash scripts..."
  eval "find $ROOT_DIR -type f -name \"*.sh\" -o -name \"*.yml\" | xargs sed -i -e 's/\r$//'"
  eval "find $ROOT_DIR -type f -name \"*.sh\" -o -name \"*.yml\" | xargs chmod +x"
  echo "...done (for now)"
}

main
