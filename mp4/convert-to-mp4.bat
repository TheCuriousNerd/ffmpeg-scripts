@echo off
set input=%~1
set output=%~dpn1.mp4
ffmpeg -i "%input%" -c:v copy -c:a aac "%output%"
pause
