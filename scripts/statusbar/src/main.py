import subprocess
from hijridate import Hijri, Gregorian
import time

while True:
    # Get Current Keyboard Layout
    lang = subprocess.run(['bash', '-c', "$HOME/sucklessToolsConfig/getxkblayout/getxkblayout | awk 'NR==1 {print $3}'"],capture_output=True,text=True)
    lang = lang.stdout.strip()
    # Get Formatted Date
    formatted_date = Hijri.today().isoformat()+" -> "+Gregorian.today().isoformat()
    # Get Current Time
    current_time = subprocess.run(['date', '+%I:%M %p'], capture_output=True, text=True)
    current_time = current_time.stdout.strip()
    # Get Volume
    volume = subprocess.run(['bash', '-c', 'wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk \'{print int($2 * 100) "% " $3}\''],capture_output=True,text=True)
    volume = volume.stdout.strip()
    # Make Status Text
    status = f" lang : {lang} | Vol : {volume} | Date : {formatted_date} | Time : {current_time} "
    subprocess.run(["xprop", "-root", "-set", "WM_NAME", status])
    time.sleep(1)
