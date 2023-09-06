@echo off
for %%i in (*.mkv, *.mp4, *.avi, *.flv, *.wav) do (
  set "input=%%~i"
  setlocal enabledelayedexpansion
  set "output=!input:.mkv=.mp3!"
  set "output=!output:.mp4=.mp3!"
  set "output=!output:.avi=.mp3!"
  set "output=!output:.flv=.mp3!"
  set "output=!output:.wav=.mp3!"
  ffmpeg -i "!input!" -vn -ab 320k -ar 44100 -y "!output!"
  endlocal
)
pause
