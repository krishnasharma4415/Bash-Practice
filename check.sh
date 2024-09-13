#!/bin/sh

echo "Enter a number or string: "
read input

if [ "$input" -eq "$input" ] ; then
        echo "The input is a number."
else
        echo "The input is a string."
Fi
