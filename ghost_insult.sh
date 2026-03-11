#!/bin/bash
# Ghost Insult Generator

INSULTS=(
    "Your code is as efficient as a bag of hammers."
    "I've seen better logic in a bowl of alphabet soup."
    "Your variable naming is a war crime."
    "Is this an algorithm or a cry for help?"
    "This function is so bloated it has its own zip code."
    "I'd call your code spaghetti, but that's an insult to pasta."
)

while true; do
    # Wait for a random interval between 5 and 15 minutes
    #sleep $(( (RANDOM % 600) + 300 ))
    sleep 1
    # Select a random insult
    RANDOM_INSULT=${INSULTS[$RANDOM % ${#INSULTS[@]}]}
    
    # Trigger a system notification
    notify-send "System Compiler Warning" "$RANDOM_INSULT" --icon=dialog-warning
done
