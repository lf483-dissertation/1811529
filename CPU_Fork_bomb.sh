#!/bin/bash
set -vx
# While loop - continual monitoring of If statement
while :
#Create local variables
cpu_util=$(cat /proc/loadavg | awk '{print $1}')
util_int=${cpu_util/.*}
threshold=9
do
	if [[ "$util_int" -gt "$threshold" ]]; then
		Echo “This device may be compromised. Take appropriate action.” > urgent.txt
	fi
done