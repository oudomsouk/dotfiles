#!/bin/bash

while true; do
	status=`acpi | egrep -o [0-9][0-9]% | egrep -o [0-9][0-9]`
	if [ $status -le "100" ]; then
		status2=`acpi`
		notify-send -u critical -t 5000 "Battery is low!" \
			"${status2}%"
		sleep 10
	fi
done
