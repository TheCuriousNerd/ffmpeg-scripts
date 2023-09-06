#!/bin/bash
for input in *.{mkv,mp4,avi,flv}; do
  if [ -f "$input" ]; then
    output="${input%.*}.gif"
    ffmpeg -i "$input" -vf "fps=10,scale=320:-1:flags=lanczos" "$output"
  fi
done
