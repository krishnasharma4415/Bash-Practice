#!/bin/bash

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.txt}_no_spaces.txt"

tr -d ' ' < "$input_file" > "$output_file"

echo "Blank spaces removed from $input_file and saved to $output_file"
