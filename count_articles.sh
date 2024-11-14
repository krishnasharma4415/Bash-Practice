#!/bin/bash

read -p "Enter the filename: " filename

count=0

# grep count occurrences of "a", "an", and "the"
count=$(grep -io -e "a" -e "an" -e "the" "$filename" | wc -l)

echo "Number of English articles: $count"