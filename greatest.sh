#!/bin/bash
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
if [ $num1 -gt $num2 ]&&[ $num1 -gt $num3 ]; then
        echo "Greatest number is: $num1"
elif [ $num2 -gt $num1 ]&&[ $num2 -gt $num3 ]; then
        echo "Greatest number is: $num2"
else
        echo "Greatest number is: $num3"
fi
