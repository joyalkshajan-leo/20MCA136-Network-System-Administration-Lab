#!/bin/bash

echo "Enter a number:"
read n

i=2
flag=0

while [ $i -lt $n ]
do
  if [ $((n % i)) -eq 0 ]
  then
    flag=1
    break
  fi
  i=$((i+1))
done

if [ $n -le 1 ] || [ $flag -eq 1 ]
then
  echo "Not Prime"
else
  echo "Prime"
fi
