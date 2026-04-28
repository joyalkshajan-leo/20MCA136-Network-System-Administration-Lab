#!/bin/bash

echo "Enter first file name:"
read f1

echo "Enter second file name:"
read f2

# Check if first file exists
if [ -f "$f1" ]
then
# Check if second file exists
if [ -f "$f2" ]
then
cat "$f1" >> "$f2"
echo "Contents of $f1 appended to $f2"
else
cp "$f1" "$f2"
echo "$f2 created and contents copied from $f1"
fi
else
echo "First file does not exist"
fi
