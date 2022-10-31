#!/bin/bash

main () {

  local SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
  local SCRIPTS_PATH=$(dirname $SCRIPT_PATH)
  local ROOT_PATH=$(dirname $SCRIPTS_PATH)

  # echo "SCRIPT_PATH  $SCRIPT_PATH"
  # echo "SCRIPTS_PATH $SCRIPTS_PATH"
  # echo "ROOT_PATH    $ROOT_PATH"

  echo " "
  echo "Hope you've logged in to Iron Bank already.  This won't go well without it..."
  echo " "

  local PROJECTS=(
    # "apache"
    "keycloak"
    "mailslurper"
    "mariadb"
    "mysql"
    "n8n"
    "nginx"
    "node"
    "pgadmin"
    "phpmyadmin"
    "postgres"
    "redis"
    "redis-commander"
    "restutils"
    "ubuntu"
    "wordpress"

    "apache"
  )

  for PROJECT in ${PROJECTS[@]}; do
    echo " "
    echo "---------- $PROJECT ----------"
    echo " "
    BUILD_PATH="$ROOT_PATH/images/$PROJECT"
    BUILD_FILE="$BUILD_PATH/build.sh"
    if [ ! -d $BUILD_PATH ]; then
      echo "MISSING: $BUILD_PATH"
    else
      if [ ! -f $BUILD_FILE ]; then
        echo "MISSING: $BUILD_FILE"
      else
        echo "Building $PROJECT ..."
        eval "cd $BUILD_PATH && ./build.sh"
      fi
    fi
  done

}

main
