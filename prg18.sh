#!bin/bash
echo multiplcation table of $1
for((i=1;i<=10;i++))
do
pro=$(($1*i))
echo $1 "*" $i "=" $pro
done

