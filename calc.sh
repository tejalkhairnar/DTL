#!/bin/sh
#Calculator
echo "Enter two numbers"
read num1
read num2
echo "Enter 1 for Addition"
echo "Enter 2 for Difference"
echo "Enter 3 for Multiplication"
echo "Enter 4 for Division"
echo -n "Enter your choice:"
read choice
case $choice in
1)
	echo "Sum of the two numbers : `expr $num1 + $num2` ";;
2)
	echo "Difference of the two numbers : `expr $num1 - $num2`";;
3)
	echo "Product of the two numbers : `expr $num1 \* $num2`";;
4)
	echo "Division of the two numbers : `expr $num1 / $num2`";;
5)
	echo "Enter a valid operation";;
esac

