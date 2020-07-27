@echo off
call consolelocation
timeout /t 2

::del geometri.bat
::del hf.bat

set /p a=<ver.txt
echo.%a%>v1.mr1ay 


rd /s /q kaynak

move kaynak\fx_by_mr1ay %cd%
move kaynak\a.bat %cd%
cd..
move core2\kaynak\a.bat %cd%

exit
