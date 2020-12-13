#!/bin/bash

operator="+"
res=1

(tail -f pipe) |
while true; do
	read line
	case "$line" in
		"+")
			operator="$line"
			echo "Operator: "$operator""
			;;
		"*")
			operator="$line"
			echo "Operator: "$operator""
			;;
		[0-9]*)
			case "$operator" in
				"+")
					res=$(echo "${res} + ${line}" | bc)
					echo "$res"
					;;
				"*")
					res=$(echo "${res} * ${line}" | bc)
					echo "$res"
					;;
				*)
					echo "Invalid operator: "$operator""
			esac
			;;
		*)
			echo "Invalid input: "$line""
			killall tail
			exit
			;;
	esac
done
