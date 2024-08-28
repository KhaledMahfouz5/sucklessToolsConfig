#!/bin/bash

# Create the Screenshots directory if it doesn't exist
mkdir -p $HOME/Screenshots

# Get the current date and time in the desired format
TIMESTAMP=$(date +"%d%m%Y-%H%M")

# Define the screenshot filename
FILENAME="img-$TIMESTAMP.png"

# Take the screenshot and save it
maim $HOME/Screenshots/$FILENAME

# Notify the user
echo "Screenshot saved as ~/Screenshots/$FILENAME"
