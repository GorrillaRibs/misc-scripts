#!/usr/bin/env bash
amixer -D pulse sset Master 5%-
#pactl set-sink-volume @DEFAULT_SINK@ -5%
#amixer -D pulse sget Master | tail -1 | sed -e 's/^[^\[]*\[//' | sed -e 's/\%.*$//' > /tmp/wobpipe # why
#pamixer --get-volume > /tmp/wobpipe
notify-send -h string:x-dunst-stack-tag:volume -h int:value:$(pamixer --get-volume) "Volume" -i audio-volume-medium-symbolic -a "volume" -t 1500
#paplay /usr/share/sounds/elementary/stereo/audio-volume-change.wav &
