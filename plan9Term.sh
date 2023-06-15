#!/usr/bin/env bash
# Launches a terminal with set size, position, and location, like opening a window on rio
# Works on i3
i3-msg exec 'termite --role=floating'
size=$(slop -f %x,%y,%w,%h)
width=$(echo "$size" | cut -d',' -f3)
height=$(echo "$size" | cut -d',' -f4)
x=$(echo "$size" | cut -d',' -f1)
y=$(echo "$size" | cut -d',' -f2)
i3-msg move position "$x" "$y"
i3-msg resize set "$width" "$height"
