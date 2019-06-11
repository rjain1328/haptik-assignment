#!/bin/bash

file=$(cat "/home/rahuljain/Downloads/add.txt")

#echo $file

count=0
total=0

for i in $( awk '{ print $1; }' add.txt )
do
  total=$(echo $total + $i | bc )
  ((count++))
done

avg=$(echo "scale=2; $total / $count" | bc -l )

echo $avg

