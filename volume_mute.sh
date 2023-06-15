#!/usr/bin/env bash
pactl set-sink-mute @DEFAULT_SINK@ toggle
#pactl set-sink-volume @DEFAULT_SINK@ +5%
#amixer -D pulse sget Master | tail -1 | sed -e 's/^[^\[]*\[//' | sed -e 's/\%.*$//' > /tmp/wobpipe
pamixer --get-volume > /tmp/wobpipe
