:boot
@echo off
@chcp 1251
cls

::Применение темы
set /p clsave=< color.txt
color %clsave%

::Установка текущей версии в переменную и смена заголовка окна
set vers=0.0.30
title BATDOS v %vers%

::Идём в низ...
goto mainsys

::Главная секция
:mainsys
cls

::Логотипчик
echo Batdos %vers% © Art Development 2018
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

::Режим ввода комманд
goto input

::Режим ввода комманд и проверка на ввод различных комманд
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

::Если ввели что то неверно
echo %Comand% не является допустимой командой
echo.
goto input
echo.

:reboot
goto boot

::Режим запуска приложений из папки apps, разработчики ликуют, где моя медаль?!??
:apps.mode
cls
echo Режим запуска установленных приложений
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
echo Ошибка, приложения %app% нету.
echo.
pause
goto mainsys

:apps.list
for %%a in ("apps\*.bat") do echo.%%a
echo.
goto input

:Vers
echo.
echo BATDOS версия %vers% ArtDevelopment все права незащищены
echo.
goto input

:About
::Так же это help
cls
echo.
echo BATDOS - Это эмулятор OS созданный в BAT файле
echo Список доступных команд:
echo ver...........................Информация о текущей версии BATDOS
echo about.........................Список команд BATDOS
echo help..........................То же, что и about
echo open..........................Переход в режим открытия текстового файла
echo apps.list.....................Список приложений в папке apps
echo apps.mode.....................Переход в режим запуска установленных приложений
echo color.........................Стандартное приложение выбора цвета фона и текста, с сохранением
echo reboot........................Перезапускает Batdos
echo exit..........................Закрывает Batdos
echo.
goto input

::ВВЕРХУ Ж НАПИСАНО!!
:open
set /p File=File name/
more %File%
goto input

:end
pause







