#!/bin/bash
convert -size 640x480 xc:transparent -font "URW-Chancery-Medium-Italic" -pointsize 20 -fill white -draw "text 580,460 'CAQ9'" watermark.png

INPUT="point-pelee-birds/input/"
OUTPUT="point-pelee-birds/photos/"
for N in `find $INPUT | grep [0-9]* -o`; do
  composite -dissolve "50%" -quality 100 "$INPUT/$N.jpg" watermark.png "$OUTPUT/$N.jpg"
done
