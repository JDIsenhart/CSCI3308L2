#!/bin/bash
#Author: James "JD" Isenhart
#Date: 1/30/19

echo "Enter a number: "
read numOne
echo "Enter a second number:"
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is: $sum"
let prod=numOne*numTwo
echo "The product is: $prod"
echo "File Name: $0"
echo "1st Command Line Argument: $1"
grep $1 $2
