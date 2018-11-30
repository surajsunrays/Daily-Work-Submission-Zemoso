#This script is for if-then-else condition statement
#! /bin/bash
echo "enter any number"
read n

if [ $n -gt 0 ]
then
    echo "Number is greater than zero(0)"
elif [ $n -le 0 ]
then
    echo "Number is negative"
else
    echo "Not a Number,Try Again"
fi