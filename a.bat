@echo off 
set i=0
::if not "%1"=="" goto  hjıogı
mode 155,40
title A
movewindow A 0 0
:Menu
set /a i=%i%+1
cls
echo %i%
insertbmp.exe /p:"core1/ark2.bmp" /x:0 /y:48 /z:150 

::batbox /g 0 3 /c 0x3F  /d "               10   .    20   .    30   .    40   .    50   .   60    .   70    .    80   .    90   .   100   .
batbox /g 0 4 /c 0xaF  /d ".123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789."
batbox /g 5 5 /c 0x3F  /d "< Soru >"
batbox /g 88 5 /c 0x3F /d "< Cevap >"
batbox /g 5 0 /c 0x0e  /d "< 1 >"
batbox /g 15 0 /c 0x0e /d "< 2 >"
batbox /g 25 0 /c 0x0e /d "< 3 >"
batbox /g 35 0 /c 0x0e /d "< 4 >"
batbox /g 45 0 /c 0x0e /d "< 5 >"
batbox /g 55 0 /c 0x0e /d "< 6 >"
batbox /g 65 0 /c 0x0e /d "< 7 >"
batbox /g 75 0 /c 0x0e /d "< 8 >"
batbox /g 85 0 /c 0x0e /d "< 9 >"
batbox /g 95 0 /c 0x0e /d "< 10 >"
batbox /g 105 0 /c 0x0e /d "< 11 >"
batbox /g 115 0 /c 0x0e /d "< 12 >"
batbox /g 125 0 /c 0x0e /d "< 13 >"

batbox /g 5 1 /c 0x0e  /d "< 14 >"
batbox /g 15 1 /c 0x0e /d "< 15 >"
batbox /g 25 1 /c 0x0e /d "< 16 >"
batbox /g 35 1 /c 0x0e /d "< 17 >"
batbox /g 45 1 /c 0x0e /d "< 18 >"
batbox /g 55 1 /c 0x0e /d "< 19 >"
batbox /g 65 1 /c 0x0e /d "< 20 >"
batbox /g 75 1 /c 0x0e /d "< 21 >"
batbox /g 85 1 /c 0x0e /d "< 22 >"
batbox /g 95 1 /c 0x0e /d "< 23 >"
batbox /g 105 1 /c 0x0e /d "< 24 >"
batbox /g 115 1 /c 0x0e /d "< 25 >"
batbox /g 125 1 /c 0x0e /d "< 26 >"

batbox /g 5 2 /c 0x0e  /d "< 27 >"
batbox /g 15 2 /c 0x0e /d "< 28 >"
batbox /g 25 2 /c 0x0e /d "< 29 >"
batbox /g 35 2 /c 0x0e /d "< 30 >"
batbox /g 45 2 /c 0x0e /d "< 31 >"
batbox /g 55 2 /c 0x0e /d "< 32 >"
batbox /g 65 2 /c 0x0e /d "< 33 >"
batbox /g 75 2 /c 0x0e /d "< 34 >"
batbox /g 85 2 /c 0x0e /d "< 35 >"
batbox /g 95 2 /c 0x0e /d "< 36 >"
batbox /g 105 2 /c 0x0e /d "< 37 >"
batbox /g 115 2 /c 0x0e /d "< 38 >"
batbox /g 125 2 /c 0x0e /d "< 39 >"

::insertbmp.exe /p:"kare1.bmp" /x:50 /y:100 /z:60
::insertbmp.exe /p:"kare1c.bmp" /x:700 /y:100 /z:80
:loop
::Setlocal enabledelayedexpansion

call batboxmouse
set ii=0
if %y% geq 6 goto Menu 

if %y%==0 (
	 if %x% geq 5  if %x% leq 10   call :Z kare1
	 if %x% leq 20 if %x% geq 15   call :Z kare2
	 if %x% leq 30 if %x% geq 25   call :Z kare3
	 if %x% leq 40 if %x% geq 35   call :Z kare4
	 if %x% leq 50 if %x% geq 45   call :Z kare5
	 if %x% leq 60 if %x% geq 55   call :Z kare6
	 if %x% leq 70 if %x% geq 65   call :Z kare7
	 if %x% leq 80 if %x% geq 75   call :Z kare8
	 if %x% leq 90 if %x% geq 85   call :Z kare9
	 if %x% leq 100 if %x% geq 95  call :Z kare10
 	 if %x% leq 110 if %x% geq 105 call :Z kare12
	 if %x% leq 120 if %x% geq 115 call :Z kare13
	 if %x% leq 130 if %x% geq 125 call :Z kare14
	)

if %y%==1 (
	 if %x% leq 10 if %x% geq 5    goto kare14
	 if %x% leq 20 if %x% geq 15   goto kare15
	 if %x% leq 30 if %x% geq 25   goto kare16
	 if %x% leq 40 if %x% geq 35   goto kare17
	 if %x% leq 50 if %x% geq 45   goto kare18
	 if %x% leq 60 if %x% geq 55   goto kare19
	 if %x% leq 70 if %x% geq 65   goto kare20
	 if %x% leq 80 if %x% geq 75   goto kare21
	 if %x% leq 90 if %x% geq 85   goto kare22
	 if %x% leq 100 if %x% geq 95  goto kare23
 	 if %x% leq 110 if %x% geq 105 goto kare24
	 if %x% leq 120 if %x% geq 115 goto kare25
	 if %x% leq 130 if %x% geq 125 goto kare26
	)

if %y%==2 (
	 if %x% leq 10 if %x% geq 5    goto kare27
	 if %x% leq 20 if %x% geq 15   goto kare28
	 if %x% leq 30 if %x% geq 25   goto kare29
	 if %x% leq 40 if %x% geq 35   goto kare30
	 if %x% leq 50 if %x% geq 45   goto kare31
	 if %x% leq 60 if %x% geq 55   goto kare32
	 if %x% leq 70 if %x% geq 65   goto kare33
	 if %x% leq 80 if %x% geq 75   goto kare34
	 if %x% leq 90 if %x% geq 85   goto kare35
	 if %x% leq 100 if %x% geq 95  goto kare36
 	 if %x% leq 110 if %x% geq 105 goto kare37
	 if %x% leq 120 if %x% geq 115 goto kare38
	 if %x% leq 130 if %x% geq 125 goto kare39
	)
echo nu
goto Menu

		if %y%==0 call :nd
		goto Menu
		:nd
		FOR /L %a IN (10,10,130) DO (
		set /a b=%%a-5
		set /a ii+=1
		if %x% geq %%b if %x% leq %%a  call :Z kare%ii%
		)
		goto :eof

	:Z
		set i=0
		insertbmp.exe /p:"core1/%1.bmp" /x:10 /y:96 /z:60
	:Zloop
echo loop
		call batboxmouse
		if %y% leq 4 goto Menu
		if %y% equ 5 if %x% geq 85 if %x% leq 98 (
			set /a i=%i%+1
			batbox /g 0 1 /c 0x0e /d "%i%"
			if %i%==0 insertbmp.exe /p:"core1/%1c.bmp" /x:700 /y:96 /z:90
			if %i%==1 set i=0 && insertbmp.exe /p:"core1/ark1.bmp" /x:700 /y:96 /z:90 
			goto :Zloop
			)

		goto :Zloop



	
		goto batboxmouse


	:batboxmouse
		call batboxmouse
		if %y%==1 (
			insertbmp.exe /p:"ark1.bmp" /x:700 /y:96 /z:90 
			goto Menu
			)
goto kare2