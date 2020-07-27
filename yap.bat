@echo off
call consolelocation
timeout /t 2

::del geometri.bat
::del hf.bat

set /p a=<ver.txt
echo.%a%>v1.mr1ay 



move kaynak\fx_by_mr1ay %cd%
move kaynak\a.bat %cd%
move kaynak\insertbmp.exe %cd%
cd..
move core2\kaynak\core1 %cd%
cd core2

rd /s /q kaynak
exit
