#!/bin/sh

echo "Enter a number: "
read num

if [ $num -le 1 ]; then
            echo "$num is not a prime number."
                exit 1
fi

for i in $(seq 2 $(($num / 2)))
do
        if [ $(($num % $i)) -eq 0 ]; then
                echo "$num is not a prime number."
                exit 1
        fi
done
echo "$num is a prime number."
