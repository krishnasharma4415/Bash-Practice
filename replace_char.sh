#!/bin/bash

read -p "Enter the string: " string
read -p "Enter the character to replace: " c
read -p "Enter the replacement character: " chr

# Replace and count occurrences
new_string=$(sed "s/$c/$chr/g" <<< "$string")
count=$(echo "$string" | tr -cd "$c" | wc -c)

echo "Replaced string: $new_string"
echo "Number of replacements: $count"