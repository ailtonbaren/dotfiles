#!/bin/bash
STATUS=$(cat /sys/class/power_supply/BAT0/status)
CHARGING="Charging"

if [ "$STATUS" = "$CHARGING" ]; then
	echo $(cat /sys/class/power_supply/BAT0/capacity)% "chr"
else
	echo $(cat /sys/class/power_supply/BAT0/capacity)%
fi
