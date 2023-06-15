#!/bin/bash
# Same as 'rofi_swayr_window.sh' but switches workspaces instead - see the other file for more info

if [[ $# -eq 0 ]]; then
    swayr switch-workspace
    echo -en "\0markup-rows\x1ftrue\n"
    cat /tmp/rofi
else
    echo "$@" | pup 'b text{}' | tr -d 'Workspace ' | swaymsg -q workspace $(cat /dev/stdin)
fi
