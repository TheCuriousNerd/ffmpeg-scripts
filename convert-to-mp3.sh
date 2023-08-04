#!/bin/bash
input="$1"
output="${input%.*}.mp3"
ffmpeg -i "$input" -vn -ab 320k -ar 44100 -y "$output"