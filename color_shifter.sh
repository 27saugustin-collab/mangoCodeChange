#!/bin/bash
# Random Terminal Color Shifter

while true; do
    # Generate a random color ID between 0 and 255
    RAND_COLOR=$(shuf -i 0-255 -n 1)

    # Change the foreground (text) color: \e[38;5;{ID}m
    # Change the background color: \e[48;5;{ID}m
    printf "\e[38;5;%dm\e[48;5;%dm" "$RAND_COLOR" "$(( (RAND_COLOR + 128) % 256 ))"

    # Clear the screen to apply the background color everywhere
    clear

    echo "COMPILING SYSTEM FILES... DO NOT INTERRUPT"
    echo "Current Color ID: $RAND_COLOR"

    # Wait for a short interval before shifting again
    sleep 0.5
done
