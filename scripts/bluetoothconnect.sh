#!/bin/bash

doas /usr/sbin/rfkill unblock all
bluetoothctl power on
bluetoothctl connect 60:22:22:60:01:87
