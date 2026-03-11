#!/bin/bash
# Infinite GUI Loading Prank

# Uses --pulsate for an infinite "moving" bar
# --no-cancel removes the easy way out
tail -f /dev/null | zenity --progress \
    --title="Critical System Update" \
    --text="Installing Kali Security Patches... Do not restart your computer." \
    --pulsate \
    --no-cancel \
    --width=400
