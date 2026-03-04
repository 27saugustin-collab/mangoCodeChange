#!/bin/bash

SEARCH_DIR="."
FILE_EXT="*.txt"

# We define the encoded character set as the source 
# and the standard alphabet as the destination.
ENCODED_SET="D-ZA-Cd-za-c"
TARGET_SET="A-Za-z"

echo "Decrypting .txt files in $SEARCH_DIR..."

find "$SEARCH_DIR" -type f -name "$FILE_EXT" -print0 | while IFS= read -r -d '' file; do
    echo "Processing: $file"
    
    # tr takes the encoded file as input and maps it back to original characters
    if tr "$ENCODED_SET" "$TARGET_SET" < "$file" > "$file.tmp"; then
        mv "$file.tmp" "$file"
    else
        echo "Error processing $file"
        rm -f "$file.tmp"
        
    fi
done

xmessage -title "Goodbye..." "Your files are good... for now..."
