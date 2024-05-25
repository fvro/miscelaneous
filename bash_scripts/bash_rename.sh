#!/bin/bash

# This code renames all files inside a folder to a series of names following: image_1.png, image_2.png, etc.

script_name=$(basename "$0")
count=1

for file in *; do
  if [ -f "$file" ] && [ "$file" != "$script_name" ]; then
    mv "$file" "image_$count.png"
    ((count++))
  fi
done
