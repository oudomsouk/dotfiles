#!/bin/bash

#output=echo upower -d | grep "time to empty" | head -1
#notify-send -u critical -t 3000 "$output"

status=`acpi`
notify-send "$status"
