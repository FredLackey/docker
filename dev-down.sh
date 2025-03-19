#!/bin/bash

main() {

  eval "docker compose -f dev.yml down"

}

main "$@"

