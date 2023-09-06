@echo off
set input=%~1
set output=%~dpn1.mp3
ffmpeg -i "%input%" -vn -ab 320k -ar 44100 -y "%output%"
pause