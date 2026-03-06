#!/bin/bash

# Get the list of connected Bluetooth devices
connected_devices=$(bluetoothctl info | grep "Name" | awk '{for(i=2; i<=NF; i++) printf "%s", $i}')
battery_percentage=$(bluetoothctl info | grep "Battery Percentage" |  awk '{print $4}' | sed 's/^.//; s/.$//')

# Check if there are any connected devices
if [ -z "$connected_devices" ]; then
    echo "No Devices"
else
	echo "$connected_devices ($battery_percentage%)"
fi
