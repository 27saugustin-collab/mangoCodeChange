#!/bin/bash

# Create a temporary Python script
cat << 'EOF' > /tmp/freeze_prank.py
import tkinter as tk

root = tk.Tk()
root.attributes("-fullscreen", True) # Fills the screen
root.attributes("-topmost", True)    # Stays on top of all windows
root.attributes("-alpha", 0.01)      # Nearly transparent
root.config(cursor="none")           # Hides the mouse cursor

# Prevent the window from being closed by standard methods
root.protocol("WM_DELETE_WINDOW", lambda: None)

# Capture all keyboard and mouse events
root.grab_set()

# Secret escape key: Press Shift + Escape to exit
root.bind("<Shift-Escape>", lambda e: root.destroy())

root.mainloop()
EOF

# Run the Python script using the default Python3 interpreter
python3 /tmp/freeze_prank.py

# Clean up the temporary file after the script closes
rm /tmp/freeze_prank.py
