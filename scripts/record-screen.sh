#!/bin/bash

# initialize a unified directory for recordings
mkdir -p "$HOME/Screenrecordings"

# Configuration
TIMESTAMP=$(date +"%d%m%Y-%H%M")
OUTPUT="$HOME/Screenrecordings/record-$TIMESTAMP.mp4"
VIDEO_SIZE="1920x1080"
FRAMERATE="25"
DISPLAY=":0.0"

ffmpeg -f x11grab -video_size $VIDEO_SIZE -framerate $FRAMERATE -i $DISPLAY -vcodec libx264 $OUTPUT
