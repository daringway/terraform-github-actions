#!/bin/bash

source /usr/local/actions.sh

debug
setup
init

if ! (cd "$INPUT_PATH" && terraform validate -json | convert_validate_report "$INPUT_PATH" | save_artifact validation-report.txt ); then
  (cd "$INPUT_PATH" && terraform validate)
else
  echo -e "\033[1;32mSuccess!\033[0m The configuration is valid"
fi
