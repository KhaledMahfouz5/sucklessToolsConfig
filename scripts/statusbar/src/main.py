import subprocess
from hijridate import Hijri, Gregorian
import time

while True:
    # Get Formatted Date
    formatted_date = Hijri.today().isoformat()+" -> "+Gregorian.today().isoformat()
    # Get Current Time
    current_time = subprocess.run(['date', '+%I:%M %p'], capture_output=True, text=True)
    current_time = current_time.stdout.strip()
    # Get Volume
    volume = subprocess.run(['bash', '-c', 'wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk \'{print int($2 * 100) "% " $3}\''],capture_output=True,text=True)
    volume = volume.stdout.strip()
    # Make Status Text
    status = f" dwm-6.5 | Vol : {volume} | Date : {formatted_date} | Time : {current_time} "
    subprocess.run(["xprop", "-root", "-set", "WM_NAME", status])
    time.sleep(1)
