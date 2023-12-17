#!/usr/bin/bash

argc=$#

if [[ $argc -lt 1 ]]; then
    echo "Error! At least one parameter must be provided!"
    echo "[USAGE]: ./hash_script.sh <4-digit-number>"
    exit 1
fi

if [[ ${#1} -lt 4 ]]; then
    echo "Error! Your number must have at least 4 digits!"
    exit 2
fi

output=$(echo -n "$1" | sha256sum | cut -d " " -f 1)
echo -n "$output" > hash_output.txt
