#!/bin/bash


file="revature/challenges/week3/entry.txt"

while read -r line
do
	printf '%s\n' "$line"
done < "$file"
