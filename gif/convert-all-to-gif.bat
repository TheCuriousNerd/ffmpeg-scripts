@echo off
for %%i in (*.mkv, *.mp4, *.avi, *.flv) do (
  set "input=%%~i"
  setlocal enabledelayedexpansion
  set "output=!input:.mkv=.gif!"
  set "output=!output:.mp4=.gif!"
  set "output=!output:.avi=.gif!"
  set "output=!output:.flv=.gif!"
  ffmpeg -i "!input!" -vf "fps=10,scale=320:-1:flags=lanczos" "!output!"
  endlocal
)
pause
