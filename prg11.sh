#!/bin/bash
echo "Enter number of employees:"
read n
i=1
while [ $i -le $n ]
do
    echo "Enter Basic Pay for employee $i:"
    read bp

    if [ $bp -lt 15000 ]
    then
        da=$(echo "$bp * 0.30" | bc)
        hra=500
        ta=$(echo "$bp * 0.10" | bc)
    else
        da=$(echo "$bp * 0.50" | bc)
        hra=$(echo "$bp * 0.15" | bc)
        ta=1000
    fi

    gross=$(echo "$bp + $da + $hra + $ta" | bc)

    echo "Employee $i Gross Salary: $gross"

    i=$((i + 1))
done
