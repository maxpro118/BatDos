@echo off
goto main

:main
echo 1
echo 2
echo 3
echo 4
echo 5
echo 6
goto exit

:exit
set /p dadada=type exit here: 
if %dadada%==exit (
    call BATDOS.bat
)

goto main