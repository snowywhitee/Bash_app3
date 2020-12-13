#!/bin/bash

#run task4loop.sh in the background

sh task4loop.sh&pid1=$!
sh task4loop.sh&pid2=$!
sh task4loop.sh&pid3=$!

renice +10 -p $pid3

#check
echo $pid1
echo $pid2
echo $pid3

#kill background processes
at now + 1 minute <<< "kill "$pid3""
at now + 1 minute <<< "pkill task4loop.sh"
