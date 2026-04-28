#!/bin/bash

while true
do
  echo "MENU"
  echo "1. Sum"
  echo "2. Reverse"
  echo "3. Palindrome"
  echo "4. Exit"
  echo "Enter your choice: "
  read ch
  

  if [ $ch -eq 4 ]; then
    break
  fi
  echo "Enter number:"
  read n

  sum=0
  rev=0
  temp=$n

  while [ $n -gt 0 ]
  do
    d=$((n % 10))
    sum=$((sum + d))
    rev=$((rev * 10 + d))
    n=$((n / 10))
  done

  if [ $ch -eq 1 ]; then
    echo "Sum = $sum"
  elif [ $ch -eq 2 ]; then
    echo "Reverse = $rev"
  elif [ $ch -eq 3 ]; then
    if [ $temp -eq $rev ]; then
      echo "The given number is a Palindrome"
    else
      echo "The given number is Not a Palindrome"
    fi
  else
    echo "Invalid choice"
  fi

done
