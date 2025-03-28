#!/bin/bash
echo "Enter the string:"
read s
echo $s>$temp
rev="$(rev temp)"
if [$s=$rev]
then
echo "It is palindrome"
else
echo "It is not a Palindrome"
fi
