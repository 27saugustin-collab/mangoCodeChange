#!/usr/bin/env python3

import os
import cryptography.fernet
from cryptography import fernet

# let's find some files

files = []

for file in os.listdir():
    if file == "dalek.py" or file == "thekey.key" or file == "decrypt.py":
        continue
    if os.path.isfile(file):
        files.append(file)

print(files)

with open("thekey.key", "rb") as key:
    for file in files:
        with open(file, "rb") as thefile:
            contents = thefile.read()
    content_decrypted = fernet(key).decrypt(contents)
    with open(file, "wb") as thefile:
        thefile.write(content_decrypted)