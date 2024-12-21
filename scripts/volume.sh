#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 {up|down|toggle}"
    exit 1
fi

# Perform actions based on the argument
case $1 in
    down)
		pactl set-sink-volume $(pactl get-default-sink) -5%
        ;;
    up)
		pactl set-sink-volume $(pactl get-default-sink) +5%
        ;;
    toggle)
		pactl set-sink-mute $(pactl get-default-sink) toggle
        ;;
    *)
        echo "Invalid argument: $1"
        echo "Usage: $0 {up|down|toggle}"
        exit 1
        ;;
esac
