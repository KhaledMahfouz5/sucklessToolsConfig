#!/bin/bash

# Get the list of connected Bluetooth devices
connected_devices=$(bluetoothctl info | grep "Name" | awk '{for(i=2; i<=NF; i++) printf "%s ", $i; print ""}')

# Check if there are any connected devices
if [ -z "$connected_devices" ]; then
    echo "No Devices"
else
    echo "$connected_devices"
fi
