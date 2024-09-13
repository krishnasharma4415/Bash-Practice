#!/bin/sh

echo "Enter the value of n: "
read n
sum=0
i=0
echo "Enter $n numbers"

while [ $i -lt $n ]
do
        read num
        sum="$(($sum + $num))"
        i="$(($i + 1))"
done
echo $sum
average="$(($sum/$n))"
echo "The average of the numbers is $average"
