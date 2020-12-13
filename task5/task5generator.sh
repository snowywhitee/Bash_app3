#!/bin/bash

re=^[0-9]+

while true; do
	read line
	echo "$line" >> pipe
	if [[ "$line" == "QUIT" ]]; then
		exit 0
	elif [[ "$line" != "+" && "$line" != "*" && !"$line" =~ re ]]; then
		echo "Invalid input"
		exit 1
	fi
done
