#!/bin/bash

doas /usr/sbin/rfkill unblock all
bluetoothctl power off
bluetoothctl power on
bluetoothctl connect $(cat ~/.bluetooth) # add your bluetooth MAC in '~/.bluetooth' file
