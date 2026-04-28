#!/bin/bash

echo "Enter file name:"
read file

echo "Enter starting line number:"
read start

echo "Enter ending line number:"
read end

lines=$((end - start + 1))

head -n $end $file | tail -n $lines
