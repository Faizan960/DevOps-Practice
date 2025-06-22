#!/bin/bash
 
echo "Enter the first number"
read a

echo "Enter the second number"
read b

echo "Choose the Operator: + - * /"
read op

case $op in
  +) echo "Result : $((a+b))";;
  -) echo "Result : $((a-b))";;
  *) echo "Result : $((a*b))";;
  /) echo "Result : $((a/b))";;
esac
