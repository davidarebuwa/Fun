#!/bin/bash
#Script name: eventfruit.sh
#Description: A script that displays even numbers within two numbers and allocate a fruit with each number.

 read -p "Please enter your starting and ending arguments: " a b c #part a collects users arguments
if [ -z "$a" ] && [ -z "$b" ]; then #part b conditional statements
 read -p "You have entered no arguments. Please enter your arguments: " a b

elif [ -z "$b" ]; then
read -p "You have entered only one argument. Please enter another argument: " b

elif [ -n "$a" ] && [ -n "$b" ] && [ -n "$c" ]; then
read -p "You have entered  too many arguments. Please choose your first two arguments: " a b
fi

while [ $a -lt $b ]; do 
if [ $(($a%2)) -eq 0 ] && [ $(($a%7)) -eq 0 ] && [ $(($a%11)) -eq 0 ] && [ $(($a%13)) -eq 0 ] ; then
echo " $a IS A VERY RARE EVEN ORAPEARANA!! "

elif [ $(($a%2)) -eq 0 ] && [ $(($a%11)) -eq 0 ] && [ $(($a%13)) -eq 0 ]; then
echo " $a is an even pearana "

elif [ $(($a%2)) -eq 0 ] && [ $(($a%7)) -eq 0 ] && [ $(($a%13)) -eq 0 ]; then
echo " $a is an even pearange "

elif [ $(($a%2)) -eq 0 ] && [ $(($a%7)) -eq 0 ] && [ $(($a%11)) -eq 0 ]; then # special cases
echo " $a is an even oranana "

elif [ $(($a%2)) -eq 0 ] && [ $(($a%13)) -eq 0 ]; then #part e displays even pear
echo " $a is an even pear "

elif [ $(($a%2)) -eq 0 ] && [ $(($a%11)) -eq 0 ]; then #part d displays even banana
echo " $a is an even banana "

elif [ $(($a%2)) -eq 0 ] && [ $(($a%7)) -eq 0 ]; then #part c displays even oranges
echo " $a is an even orange "

elif [ $(($a%2)) -eq 0 ]; then
echo " $a is an even number"
fi
a=$(($a+1))
done

echo "What is with the fruit obsession" # part f the 'funny' part




