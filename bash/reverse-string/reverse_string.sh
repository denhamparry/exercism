#!/usr/bin/env bash

main () {
  local original=$*
  local reverse=""

  for(( i=0 ; i<${#original} ; i++ )); do
    reverse="${original:$i:1}$reverse"
  done

  echo "$reverse"
}

main "$@"