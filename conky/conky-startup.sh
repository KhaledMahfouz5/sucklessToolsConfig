#!/bin/sh

sleep 5s
killall -u $(id -nu) conky 2>/dev/null
cd "$HOME/sucklessToolsConfig/conky"
conky -c "my-conky-config" &
exit 0
