#!/usr/bin/env bash

main () {
    response=""
    (( !($1 % 3) )) && response+="Pling"
    (( !($1 % 5) )) && response+="Plang"
    (( !($1 % 7) )) && response+="Plong"
    [[ $response == "" ]] && response=$1
    echo "$response"
    exit 0
}

useage="Usage: leap.sh <drops>"

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