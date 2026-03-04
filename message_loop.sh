#!/bin/bash
# Infinite loop using "while true"
while true
do
    # zenity --info creates a standard info box
    # --text defines the message inside
    # --title defines the window header
    zenity --info --title="System Alert" --text="An error has occurred. Please click OK to fix it."
done
