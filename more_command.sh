#!/bin/bash

read -p "Enter the filename: " filename

if [ ! -f "$filename" ]; then
    echo "File $filename not found."
    exit 1
fi

while IFS= read -r line; do
    echo "$line"
    # Pause after every 15 lines
    if (( ++count % 15 == 0 )); then
        read -n1 -p "Press Enter to continue..."
    fi
done < "$filename"