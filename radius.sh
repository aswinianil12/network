#!/bin/bash
echo "Enter the radius of the circle: "
read r

area=$(echo "3.14 * $r * $r" | bc)

cir=$(echo "2 * 3.14 * $r" | bc)

echo "Area: $area"
echo "Circumference: $cir"

