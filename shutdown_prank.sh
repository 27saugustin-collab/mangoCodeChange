#!/bin/bash
# Fake Shutdown Prank Script

echo "System shutdown initiated by root..."
sleep 1
echo "Checking active processes..."
sleep 1.5
echo "[OK] Terminating desktop environment..."
sleep 1
echo "[OK] Unmounting file systems..."
sleep 1
echo "[WAIT] Syncing hardware clocks..."
sleep 2
echo "Broadcast message from root@kali (pts/0):"
echo "The system is going down for maintenance NOW!"
sleep 1
echo "INIT: Switching to runlevel: 0"
sleep 1
echo "INIT: Sending processes the TERM signal"
sleep 2
echo "INIT: Sending processes the KILL signal"
sleep 1
echo "Stopping System Logging Service: rsyslogd"
sleep 1
echo "Asking all remaining processes to terminate..."
sleep 3
echo "All processes terminated."
sleep 1
echo "Powering off."
sleep 2

# This part clears the screen to simulate a black "off" screen
clear
echo -e "\033[0;30m" # Change text to black so it's invisible
read -p "" # Wait for user to press Enter to "turn it back on"
reset # Restore the terminal
echo "Pranked! Your system is still running."
