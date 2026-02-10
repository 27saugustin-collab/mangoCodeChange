#!/bin/bash

SEARCH_DIR="."
FILE_EXT="*.txt"
SHIFT_SET="D-ZA-Cd-za-c"

echo "Encrypting .txt files in $SEARCH_DIR..."

find "$SEARCH_DIR" -type f -name "$FILE_EXT" -print0 | while IFS= read -r -d '' file; do
    echo "Processing: $file"
    
    if tr 'A-Za-z' "$SHIFT_SET" < "$file" > "$file.tmp"; then
        mv "$file.tmp" "$file"
    else
        echo "Error processing $file"
        rm -f "$file.tmp"
    fi
done

echo "Done."
