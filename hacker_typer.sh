#!/bin/bash
# Hacker Typer Fake-out for Kali Linux

# Define some "hacker" colors
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Initializing bypass sequence...${NC}"
sleep 1

while true; do
    # Generate random hex strings to look like memory addresses/data
    ADDR=$(printf '0x%08X' $((RANDOM << 16 | RANDOM)))
    DATA=$(head -c 16 /dev/urandom | xxd -p | sed 's/../& /g')
    
    # Print with a slight delay to look like active processing
    echo -e "${GREEN}${ADDR}: ${DATA}${NC}"
    
    # Randomly "pause" for dramatic effect
    if [ $((RANDOM % 50)) -eq 0 ]; then
        echo -e "${GREEN}[!] Critical sector reached. Re-routing...${NC}"
        sleep 0.5
    fi
    
    sleep 0.05
done

