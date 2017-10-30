#!/bin/bash
while true; do
  output=`acpi`
  value=`echo $output | egrep -o [0-9][0-9]% | egrep -o [0-9][0-9]`
  status=`echo $output | egrep -o Discharging`
  if [[ $value -le "20" && $status == "Discharging" ]]
  then
    notify-send -u critical -t 5000 "Battery is low!" \
      "${output}%"
  fi
  sleep 60
done
