#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <file1> <file2> ..."
    exit 1
fi

for file in "$@"; do
    new_name=$(basename "$file" | tr '[:upper:]' '[:lower:]')
    mv "$file" "$new_name"
    echo "Renamed $file to $new_name"
done
