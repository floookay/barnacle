#!/bin/sh

# grep -F "\"LED1," "production/bom.csv"

tmp_file=$(mktemp)
cp "production/positions.csv" "production/cpl.csv"

while IFS= read -r line_bom;
do
    if [[ $line_bom == \"LED1* ]]; then
        input=$(echo "$line_bom" | grep -oP '(?<=\")[^\"]*(?=\")' | head -n 1)
        IFS=', ' read -ra leds <<< "$input"
        for led in "${leds[@]}"; do
            # echo $led
            while  IFS=, read -r designator midx midy rotation layer;
            do
                new_rotation="$rotation";
                if [[ "$designator" == "$led" ]];
                then
                    # new_rotation=$((rotation + 180));
                    new_rotation=$(awk "BEGIN {print $rotation + 180}")
                    if (( $(awk "BEGIN {print ($new_rotation > 360)}") )); then
                        new_rotation=$(awk "BEGIN {print $new_rotation - 360}")
                    fi
                    new_rotation="$new_rotation.0"
                    echo "$rotation -> $new_rotation"
                fi
                echo "$designator,$midx,$midy,$new_rotation,$layer" >> "$tmp_file"

            done < "production/cpl.csv"
            mv "$tmp_file" "production/cpl.csv"
        done
        break
    fi
done < "production/bom.csv"