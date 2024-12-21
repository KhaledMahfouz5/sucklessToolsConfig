#!/bin/bash

# Get the current hour
while true; do
        hour=$(date +%H)

        # Set color temperature based on time
        if [ "$hour" -ge 18 ] || [ "$hour" -lt 6 ]; then
            # Night time: 4500K
            /home/khaled/sucklessToolsConfig/sct/sct 4500
        else
            # Morning: 8000K
            /home/khaled/sucklessToolsConfig/sct/sct 8000
        fi
    sleep 5
done
