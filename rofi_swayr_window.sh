#!/bin/bash
# Used with a special 'swayr' configuration to allow using it as a rofi modi on sway
# (since made obsolete by updates to the wayland for of rofi)
# The swayr config would just need to be set to "tee" the values to a fifo (/tmp/rofi)
# This script would then be added as a 'modi' in your rofi configuration

# swayr, 'pup', and 'tr' required to parse the html output from rofi & focus the correct window
if [[ $# -eq 0 ]]; then
    swayr switch-window
    echo -en "\0markup-rows\x1ftrue\n"
    cat /tmp/rofi
else
    echo "$@" | pup 'span text{}' | tr -d '()' | swaymsg -q "[con_id=$(cat /dev/stdin)]" focus
fi
