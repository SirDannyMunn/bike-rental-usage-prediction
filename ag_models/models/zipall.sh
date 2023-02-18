#!/bin/bash
for file in *; do
    if [ -d "$file" ]; then
        # If the file is a directory, create a zip file for it
        zip -r "${file}.zip" "$file"
    elif [ -f "$file" ]; then
        # If the file is a regular file, create a zip file for it
        zip "${file}.zip" "$file"
    fi
done
