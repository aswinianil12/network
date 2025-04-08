#!/bin/bash

echo "Enter an integer: "
read number

count=${#number}  
sum=0

for (( i=0; i<count; i++ ))
do
    digit=${number:i:1}  
    sum=$(echo "$sum + $digit^$count" | bc)  
done

if [ "$sum" -eq "$number" ]; then
    echo "The number $number is an Armstrong number."
else
    echo "The number $number is not an Armstrong number."
fi