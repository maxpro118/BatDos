@echo off
@chcp 1251

cls
echo.
echo Цвета и их значения:
echo.
echo 0 - Черный	8 - Серый
echo 1 - Синий	9 - Светло-синий
echo 2 - Зеленый	A - Светло-зеленый
echo 3 - Голубой	B - Светло-голубой
echo 4 - Красный	C - Светло-красный
echo 5 - Сиреневый	D - Светло-сиреневый
echo 6 - Желтый	E - Светло-желтый
echo 7 - Белый	F - Яркий белый
echo.
echo Пример 0F - 0 Цвет фона, F - Цвет текста
echo.

goto colorinst

:colorinst
set /p color1=color1:
set /p color2=color2:
color %color1%%color2%
call BATDOS.bat
goto mainsys