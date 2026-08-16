#!/bin/bash
TOTAL=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
AVAIL=$(awk '/MemAvail/ {print $2}' /proc/meminfo)
USED=$(echo "scale=2; $TOTAL - $AVAIL" | bc)
p=$(echo "scale=2; ($USED / $TOTAL) * 100" | bc)
printf "%.f%%\n" $p
