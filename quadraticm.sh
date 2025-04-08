#!/bin/bash

echo "Enter the coefficients of the quadratic equation (a, b, c):"
read a b c

discriminant=$(echo "$b*$b - 4*$a*$c" | bc)

if (( $(echo "$discriminant < 0" | bc -l) )); then
    echo "The quadratic equation has no real roots."
else
    root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2*$a)" | bc -l)
    root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2*$a)" | bc -l)

    echo "The roots of the quadratic equation are: $root1 and $root2"
fi