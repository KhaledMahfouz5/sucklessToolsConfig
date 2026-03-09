from datetime import datetime
import subprocess
from hijridate import Hijri, Gregorian
import time

while True:
    # Get Current Keyboard Layout
    lang = subprocess.run(['bash', '-c', "$HOME/sucklessToolsConfig/getxkblayout/getxkblayout | awk 'NR==1 {print $3}'"],capture_output=True,text=True)
    lang = lang.stdout.strip()
    # Get Formatted Date
    formatted_date = datetime.now().strftime("%A")+" "+ Hijri.today().isoformat()+" -> "+Gregorian.today().isoformat()
    # Get Current Time
    current_time = subprocess.run(['date', '+%I:%M %p'], capture_output=True, text=True)
    current_time = current_time.stdout.strip()
    # Get Volume
    volume = subprocess.run(['bash', '-c', "pactl get-sink-volume $(pactl get-default-sink) | awk '{print $5}'"], capture_output=True, text=True)
    volume = volume.stdout.strip()
    is_mute = subprocess.run("pactl get-sink-mute $(pactl get-default-sink) | awk '{print $2}'",shell=True, capture_output=True, text=True).stdout.strip()
    volume = f"{volume} [Muted]" if is_mute == "yes" else f"{volume}"
    # Get battery percentage
    with open('/sys/class/power_supply/BAT0/uevent') as f:
        uevent_data = f.read()
    battery_percentage = next(line.split('=')[1] for line in uevent_data.splitlines() if 'POWER_SUPPLY_CAPACITY=' in line)
    battery_status = next(line.split('=')[1] for line in uevent_data.splitlines() if 'POWER_SUPPLY_STATUS=' in line)
    battery = f"{battery_percentage}% [{battery_status}]"

    # Check if record-screen.sh is running
    recording_process = subprocess.run(['pgrep', '-f', 'record-screen.sh'], capture_output=True, text=True).stdout.strip()
    is_recording = "| [Recording] " if recording_process else ""

    # Make Status Text
    status = f" Bat : {battery} {is_recording}| Lang : {lang} | Vol : {volume} | Date : {formatted_date} | Time : {current_time} "
    subprocess.run(["xprop", "-root", "-set", "WM_NAME", status])
    print(status)
    time.sleep(1)
