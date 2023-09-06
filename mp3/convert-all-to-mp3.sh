#!/bin/bash
for input in *.{mkv,mp4,avi,flv,wav}; do
  if [ -f "$input" ]; then
    output="${input%.*}.mp3"
    ffmpeg -i "$input" -vn -ab 320k -ar 44100 -y "$output"
  fi
done
