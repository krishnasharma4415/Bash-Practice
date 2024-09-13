#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Usage: $0 string"
        exit 1
fi
string=$1
reversed_string=$(rev <<< "$string")
if [ "$string" = "$reversed_string" ]; then
        echo "$string is a palindrome"
else
        echo "$string is not a palindrome"
fi
