:boot
@echo off
@chcp 1251
cls

::���������� ����
set /p clsave=< color.txt
color %clsave%

::��������� ������� ������ � ���������� � ����� ��������� ����
set vers=0.0.30
title BATDOS v %vers%

::��� � ���...
goto mainsys

::������� ������
:mainsys
cls

::����������
echo Batdos %vers% � Art Development 2018
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

::����� ����� �������
goto input

::����� ����� ������� � �������� �� ���� ��������� �������
:input
set /p Comand=/
if %Comand%==ver (
    goto Vers
)
if %Comand%==about (
    goto About
)
if %Comand%==help (
    goto About
)
if %Comand%==open (
    goto open
)
if %Comand%==apps.list (
    goto apps.list
)
if %Comand%==apps.mode (
    goto apps.mode
)
if %Comand%==color (
    call color.bat
)
if %Comand%==reboot (
    goto reboot
)
if %Comand%==exit (
    exit
)

::���� ����� ��� �� �������
echo %Comand% �� �������� ���������� ��������
echo.
goto input
echo.

:reboot
goto boot

::����� ������� ���������� �� ����� apps, ������������ ������, ��� ��� ������?!??
:apps.mode
cls
echo ����� ������� ������������� ����������
echo.
echo.
echo.
echo.
echo.
echo.

set /p app=apps/
cls
if exist apps/%app% call apps/%app%
if not exist apps/%app% goto apps.no.exist

:apps.no.exist
echo ������, ���������� %app% ����.
echo.
pause
goto mainsys

:apps.list
for %%a in ("apps\*.bat") do echo.%%a
echo.
goto input

:Vers
echo.
echo BATDOS ������ %vers% ArtDevelopment ��� ����� ����������
echo.
goto input

:About
::��� �� ��� help
cls
echo.
echo BATDOS - ��� �������� OS ��������� � BAT �����
echo ������ ��������� ������:
echo ver...........................���������� � ������� ������ BATDOS
echo about.........................������ ������ BATDOS
echo help..........................�� ��, ��� � about
echo open..........................������� � ����� �������� ���������� �����
echo apps.list.....................������ ���������� � ����� apps
echo apps.mode.....................������� � ����� ������� ������������� ����������
echo color.........................����������� ���������� ������ ����� ���� � ������, � �����������
echo reboot........................������������� Batdos
echo exit..........................��������� Batdos
echo.
goto input

::������ � ��������!!
:open
set /p File=File name/
more %File%
goto input

:end
pause







