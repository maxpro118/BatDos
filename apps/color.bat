@echo off
@chcp 1251

cls
echo.
echo ����� � �� ��������:
echo.
echo 0 - ������	8 - �����
echo 1 - �����	9 - ������-�����
echo 2 - �������	A - ������-�������
echo 3 - �������	B - ������-�������
echo 4 - �������	C - ������-�������
echo 5 - ���������	D - ������-���������
echo 6 - ������	E - ������-������
echo 7 - �����	F - ����� �����
echo.
echo ������ 0F - 0 ���� ����, F - ���� ������
echo.

goto colorinst

:colorinst
set /p color1=color1:
set /p color2=color2:
color %color1%%color2%
call BATDOS.bat
goto mainsys