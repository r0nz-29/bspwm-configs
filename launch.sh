#!/bin/bash

#Terminate already running bar instances:
killall -q polybar

#Wait untill the processes have been shut down:
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch polybar, using the config at polybar/config:
polybar example --config=~/polybar/config

echo "Polybar launched..."
