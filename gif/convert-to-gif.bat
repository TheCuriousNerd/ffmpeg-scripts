@echo off
set input=%~1
set output=%~dpn1.gif
ffmpeg -i "%input%" -vf "fps=10,scale=320:-1:flags=lanczos" "%output%"
pause
