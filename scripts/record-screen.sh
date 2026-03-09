#!/bin/bash
ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i :0.0 -vcodec libx264 output.mp4
