#!/bin/bash
for input in *.mkv; do
  output="${input%.*}.mp4"
  ffmpeg -i "$input" -c:v copy -c:a aac "$output"
done
