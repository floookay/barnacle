#!/bin/bash

# upload images in in the /uploads folder and start this script to convert them to webp
# in order to minimize file size and loose exif data
for img in "."/*; do
    if [[ -f "$img" ]]; then
        if [[ !( "$img" =~ \.png$ || "$img" =~ \.jpg$ || "$img" =~ \.jpeg$ ) ]]; then
            echo "skipping $img, not an image"
        elif [[ -f "../${img%.*}.webp" ]]; then
            echo "skipping $img, already converted"
        else
            echo "converting $img to webp…"
            cwebp -q 80 "$img" -o "../${img%.*}.webp"
        fi
    fi
done
echo "done"