#!/bin/sh
#String Manipulation
echo "----STRING MANIPULATION PROGRAM----"
echo "WHICH OPERATION YOU WANT TO PERFORM?"
echo "1.COMPARE STRING"
echo "2.JOIN TWO STRINGS"
echo "3.LENGTH OF STRING"
echo "4.OCCURENCE OF CHARACTER"
echo "5.OCCURENCE OF WORD"
echo "6.REVERSE STRING"
echo "ENTER CHOICE:"
read n

case $n in
1) 
echo "Enter String 1"
read str1
echo "Enter String 2"
read str2
len1=`expr $str1 | wc -c`
len2=`expr $str2 | wc -c`
if [ $len1 -eq $len2 ];then
	echo "BOTH STRINGS ARE OF SAME LENGTH"
elif [ $len1 -gt $len2 ];then
	echo "$str1 is greater than $str2"
else
	echo "$str1 is lesser than $str2"
fi
;;

2)
echo "Enter String 1"
read str1;
echo "Enter String 2"
read str2;
str3="$str1$str2"
echo "Concatenated String: $str3"
;;

3)
echo "Enter the String"
read str
len=`echo ${#str}`
echo "Length of String: $len"
;;

4)echo "Enter the string"
read str1
echo "Enter the character"
read c
echo "No. of times $c occurs in $str1:"
echo "${str1} " | awk -F"${c}" '{print NF-1}'
;;


5)echo "Enter the string"
read str1
echo "Enter the substring"
read str2
echo "No. of times $str2 occurs in $str1:"
echo "${str1} " | awk -F"${str2}" '{print NF-1}'
;;

6)echo "Enter the String"
read str
len=`echo ${#str}`
while [ $len -ne 0 ]
do
	y=$y`echo $str | cut -c $len`
	((len--))
done
echo "$y"
;;

7)echo "Enter a valid operation"
;;

esac

