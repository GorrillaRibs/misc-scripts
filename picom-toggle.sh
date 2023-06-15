#!/bin/bash
# Just kills picom or relaunches it - handy to have bound to a keybind in case a game is misbehaving
if [ $(pidof picom) ]; then
	exec pkill picom
else
	exec picom -b
fi
