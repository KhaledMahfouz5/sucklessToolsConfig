#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 {up|down|toggle}"
    exit 1
fi

# Set the default audio sink
AUDIO_SINK="@DEFAULT_AUDIO_SINK@"

# Perform actions based on the argument
case $1 in
    down)
        wpctl set-volume "$AUDIO_SINK" 5%-
        ;;
    up)
        wpctl set-volume "$AUDIO_SINK" 5%+
        ;;
    toggle)
        wpctl set-mute "$AUDIO_SINK" toggle
        ;;
    *)
        echo "Invalid argument: $1"
        echo "Usage: $0 {up|down|toggle}"
        exit 1
        ;;
esac
