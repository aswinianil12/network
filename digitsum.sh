function sum_of_digits {
local numbers=$1
local sum=0
while ((number>0 ));
do
sum=$(( sum+number % 10 ))
number=$(( number / 10 ))
done
echo "$sum"
}
echo "Enter a number :"
read number
result=$(sum_of_digits $number)
echo "sum of digits of $number :$result"
