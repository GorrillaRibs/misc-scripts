#!/bin/bash
# Launch a window manager on my second X display to be streamed over sunshine

export DISPLAY=:0.1
fvwm3 -s 1 &
sunshine &
