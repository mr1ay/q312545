@echo off
call consolelocation
timeout /t 2

::del geometri.bat
::del hf.bat

set aa1=%cd%
move kaynak\fx_by_mr1ay.bat %aa1%

set /p a=<ver.txt
echo.%a%>v1.mr1ay 

rd /s /q kaynak
exit
