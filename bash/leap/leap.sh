#!/usr/bin/env bash

main () {

    (( !($1 % 4) && ( $1 % 100 || !( $1 % 400) ) )) &&
    echo "true" || echo "false"
    exit 0
}

useage="Usage: leap.sh <year>"

# Only one arguement
if ! [ $# -eq 1 ]; then
    echo "$useage"
    exit 1
fi

# Check argument is an integer
if [[ ! $1 =~ ^[+-]?[0-9]+$ ]]; then
    echo "$useage"
    exit 1
fi

main "$1"