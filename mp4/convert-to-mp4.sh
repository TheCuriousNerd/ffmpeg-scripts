#!/bin/bash
input="$1"
output="${input%.*}.mp4"
ffmpeg -i "$input" -c:v copy -c:a aac "$output"