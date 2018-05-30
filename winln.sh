#!/bin/bash

if [[ $# < 1 ]]; then
    echo "You need to provide at least one filename argument" >& 2
    exit 1
fi

for file in "$@"
do
    if [ ! -f "$file" ]; then
        echo "File not found: $file" >& 2
    else
        rootname="${file%.*}"
        filext="${file##*.}"
        win="$rootname.win.$filext"
        (cp "$file" "$win" && zip "$file.zip" -l "$win" && rm "$win" && unzip "$file.zip" && rm "$file.zip") > /dev/null
    fi
done
