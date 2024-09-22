#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

file=$1

if [[ ! -f "$file" ]]; then
  echo "File not found: $file"
  exit 1
fi

aspell check "$file"

