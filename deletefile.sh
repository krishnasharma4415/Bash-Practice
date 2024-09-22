#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 directory1 directory2"
    exit 1
fi

dir1="$1"
dir2="$2"

if [[ ! -d "$dir1" || ! -d "$dir2" ]]; then
    echo "Error: Both directories must exist and be readable."
    exit 1
fi

for file1 in "$dir1"/*; do
    filename1=$(basename "$file1")
    extension1=$(basename "$file1" ."$filename1")

    file2="$dir2/$filename1"
    if [[ -f "$file2" ]]; then
        if cmp -s "$file1" "$file2"; then
            echo "Deleting $file1"
            rm "$file1"
        fi
    fi
done
