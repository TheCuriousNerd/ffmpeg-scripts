#!/bin/bash
input="$1"
output="${input%.*}.gif"
ffmpeg -i "$input" -vf "fps=10,scale=320:-1:flags=lanczos" "$output"
