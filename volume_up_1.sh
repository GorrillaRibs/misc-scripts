#!/usr/bin/env bash
amixer -D pulse sset Master 1%+
#pactl set-sink-volume @DEFAULT_SINK@ +5%
#amixer -D pulse sget Master | tail -1 | sed -e 's/^[^\[]*\[//' | sed -e 's/\%.*$//' > /tmp/wobpipe
#pamixer --get-volume > /tmp/wobpipe
