#!/usr/bin/env bash

dir="$HOME/config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# start bars
polybar -q main -c "$dir/forest/config.ini" &

polybar -q slave -c "$dir/forest/config.ini" &