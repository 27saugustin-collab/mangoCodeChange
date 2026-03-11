#!/bin/bash
# Infinite Terminal Loading Prank

echo "Initializing kernel-level decryption..."
sleep 2

# Realistic loading bar that slows down
for i in {1..99}; do
    printf "\rProgress: [%-50s] %d%%" $(printf "#%.0s" $(seq 1 $((i/2)))) $i
    
    # Randomly vary sleep to look "real"
    if [ $i -gt 90 ]; then
        sleep $(( (RANDOM % 3) + 2 )) # Slower at the end
    else
        sleep 0.1
    fi
done

# The Infinite Loop at 99%
echo -e "\n[!] Warning: Buffer overflow detected. Retrying block 0xAF32..."
while true; do
    printf "\rRetrying decryption... [Attempt $((RANDOM % 1000 + 100))]"
    sleep $(( (RANDOM % 5) + 1 ))
done
