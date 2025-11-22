#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 {main|second|mirror|extend}"
    exit 1
fi

# Get the connected displays
MAIN_SCREEN=$(xrandr | grep ' connected' | grep -m 1 -o '^[^ ]*')
SECOND_SCREEN=$(xrandr | grep ' connected' | grep -m 2 -o '^[^ ]*' | tail -n 1)

# Perform actions based on the argument
case $1 in
    main)
        xrandr --output "$MAIN_SCREEN" --auto --output "$SECOND_SCREEN" --off
        ;;
    second)
        xrandr --output "$SECOND_SCREEN" --auto --output "$MAIN_SCREEN" --off
        ;;
    mirror)
        xrandr --output "$MAIN_SCREEN" --auto --output "$SECOND_SCREEN" --auto --same-as "$MAIN_SCREEN"
        ;;
    extend)
        xrandr --output "$MAIN_SCREEN" --auto --output "$SECOND_SCREEN" --auto --right-of "$MAIN_SCREEN"
        ;;
    *)
        echo "Invalid argument: $1"
        echo "Usage: $0 {main|second|mirror|extend}"
        exit 1
        ;;
esac
