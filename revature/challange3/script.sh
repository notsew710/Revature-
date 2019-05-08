#!/bin/bash


file="/home/notsew/revature/challange3/script.sh"

while read -r line
do
	printf '%s\n' "$line"
done < "$file"
