@echo off
for %%i in (*.mkv) do (
  set "input=%%~i"
  setlocal enabledelayedexpansion
  set "output=!input:.mkv=.mp4!"
  ffmpeg -i "!input!" -c:v copy -c:a aac "!output!"
  endlocal
)
pause
