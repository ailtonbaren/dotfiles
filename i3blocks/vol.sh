#!/bin/bash

state=$(amixer get Master | grep 'Front Right: Playback' | awk '{print $6}' | sed 's/[][%]//g')

if [ "$state" = "on" ]; then
	echo $(amixer get Master | grep -oP '\[\d+%\]' | head -1 | sed 's/[][%]//g')%
else
	echo muted
fi
