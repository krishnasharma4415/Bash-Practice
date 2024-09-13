#!/bin/bash

if [ $# -eq 0 ]; then
        echo "Usage: $0 filename"
        exit 1
fi

filename=$1

(while read line; do
        char_count=$(echo "$line" | wc -c)
        word_count=$(echo "$line" | wc -w)
        echo "$line: Characters=$char_count, Words=$word_count"
done < "$filename")
