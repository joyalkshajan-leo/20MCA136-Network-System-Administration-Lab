#!/bin/bash

echo "Enter a 5-digit number:"
read n

# reverse the number
rev=0
temp=$n

while [ $temp -gt 0 ]
do
  rev=$((rev*10 + temp%10))
  temp=$((temp/10))
done

echo "Digits in odd positions:"

pos=1

# now read from front (using reversed number)
while [ $rev -gt 0 ]
do
  if [ $((pos % 2)) -ne 0 ]
  then
    echo -n "$((rev % 10)) "
  fi

  rev=$((rev/10))
  pos=$((pos+1))
done

