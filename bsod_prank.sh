#!/bin/bash
# This script launches a fake BSOD in full-screen kiosk mode
# It uses Firefox, which is pre-installed in Kali Linux

# URL to a high-quality fake BSOD image or interactive page
BSOD_URL="https://fakeupdate.net"

# Launch Firefox in Kiosk mode
firefox --kiosk "$BSOD_URL" &

# Optional: Wait a few seconds then hide the mouse cursor (requires xdotool)
# sudo apt install xdotool -y
sleep 2
xdotool mousemove 9999 9999
