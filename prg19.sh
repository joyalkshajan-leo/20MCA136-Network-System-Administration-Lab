#!/bin/bash
read -p"Enter a string: " a
len=${#a}
reverse=""
for (( i=$len-1; i>=0; i-- ))
do
reverse="$reverse${a:$i:1}"
done
echo "Reversed string: $reverse"
if [ "$input_string" == "$reverse" ]; 
then
echo "palindrome"
else
echo "not a palindrome"
fi
