#!/bin/bash

operator="+"
res=1

echo $$ > pid

usr1()
{
	operator="+"
}

usr2()
{
	operator="*"
}

TERM()
{
	echo "Stoped"
	exit 0
}

trap 'TERM' SIGTERM
trap 'usr1' USR1
trap 'usr2' USR2


while true; do
	case "$operator" in
		"+")
			let res=$res+2
			;;
		"*")
			let res=$res*2
			;;
	esac
	sleep 1
	echo $res
done
