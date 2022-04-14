#!/bin/bash
connected=$(xrandr | grep 'HDMI-1 connected')
# подключен ли монитор
if [[ "$connected" ]]; then
    xrandr --output eDP-1 --off
else
    xrandr --output eDP-1 --auto
fi
