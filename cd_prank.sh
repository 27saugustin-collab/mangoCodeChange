#!/bin/bash
# Infinite loop to open and close the CD/DVD tray
while true
do
    # Open the tray
    eject
    sleep 1
    # Close the tray (the -t flag stands for "trayclose")
    eject -t
    sleep 1
done
