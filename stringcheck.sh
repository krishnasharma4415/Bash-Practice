#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Usage: $0 string"
        exit 1
fi

string=$1

if [ ${#string} -lt 5 ]; then
        echo "String is too short (less than 5 characters)"
fi

if [[ "$string" =~ [^[:alnum:]] ]]; then
        echo "String is valid (contains at least 5 characters and symbols)"
    else
        echo "String does not contain any symbols"
fi
