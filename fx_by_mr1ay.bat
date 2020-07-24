		@echo off
::		Set "Path=%Path%;%CD%;%CD%\core1;%CD%\core2;"
		mode 73,20
		color f
		call consolelocation.bat
		title fx by mr1ay
	:Anasayfa
		del error.mr1ay
		call :baslik
		call :version
		call mbat 5 3 0b "Merhaba "
		call mbat 5 4 0e "Bu geometri ile ilgili bir calisma  "
		call mbat 5 5 0e "Bu programi guncellemek icin once kontrol et basiniz.
		call mbat 5 6 0e "Daha sonra indir e basiniz."


		call mbat 5  8 07 "Guncelleme :"
		call mbat 5  8 07 "Guncelleme :"
		call mbat 18 8 0d "<kontrol et>"
		call mbat 5  9 07 "Version    :"
		call mbat 18 9 0d "#%v1%"
		call batboxmouse
			if %y% leq 1  if %x%  leq 18 	goto anasayfa 
			if %y% leq 1  if %x%  geq 18 	if %x%  leq 32 goto formuller
			if %y% leq 1  if %x%  geq 32 	if %x%  leq 45 goto sorular

			if %y% equ 8	if %x%  geq 17 	if %x%  leq 30 call :guncelleme

		goto :anasayfa


	:guncelleme
		ping www.google.com -n 1 -w 1 > nul && (
		start guncelleme.bat 1
		timeout /t 5
		goto wait
			) || (
			call mbat 18 10 0c " interneti ayarlayin"
			timeout /t 2 >nul
			goto :anasayfa
			)

		:wait 
			if exist error.mr1ay goto :n
			if exist ver.txt goto :nn
			goto wait

		:n
			batbox /g 18 10 /c 0x0b /d "dosya yuklenmedi ."
			type error.mr1ay
			timeout /t 2 >nul
			goto :anasayfa

		:nn
			set /p oldversion=<v1.mr1ay
			set /p endversion=<ver.txt
			if "%oldversion%"=="%endversion%" goto :m
			if not "%oldversion%"=="%endversion%" goto :mm
			goto :anasayfa

		:m
			batbox /g 18 10 /c 0x0e /d "guncelsiniz"
			call batboxmouse
			goto :anasayfa

		:mm
			batbox /g 18 10 /c 0x0e /d "yeni guncelleme bulundu"
			batbox /g 42 10 /c 0x0d /d "< indir >"
			call batboxmouse
			if %y%==10 if %x% geq 42 if %x% leq 51 goto :indir
			goto :anasayfa


		:indir
			start guncelleme.bat 2
			timeout /t 5
			goto anasayfa


	:version
		< v1.mr1ay (
		set /p v1=
		)
		goto :eof


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	:Formuller
		call :baslik
		call mbat 5 2 0e "Yakinda formuller eklenecek"
		call batboxmouse
			if %y% leq 1  if %x%  leq 18 goto anasayfa 
			if %y% leq 1  if %x%  geq 18 	if %x%  leq 32 goto formuller
			if %y% leq 1  if %x%  geq 32 	if %x%  leq 45 goto sorular
		goto :formuller



::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
	:Sorular
		call :baslik
		call mbat 5 2 0e "Yakinda sorular eklenecek"


		call batboxmouse
			if %y% leq 1  if %x%  leq 18 goto anasayfa 
			if %y% leq 1  if %x%  geq 18 	if %x%  leq 32 goto formuller
			if %y% leq 1  if %x%  geq 32 	if %x%  leq 45 goto sorular
		goto :sorular





	:baslik
		cls
		call mbat 0 0 0f 0123456789.123456789.123456789.123456789.123456789.123456789.123456789.
		call mbat 5  1 3f "< Anasayfa >"
		call mbat 19 1 3f "< Formuller >"
		call mbat 34 1 3f "< Sorular >"
		call mbat 0 1 3f "1"
		call mbat 0 2 3f "2"
		call mbat 0 3 3f "3"
		call mbat 0 4 3f "4"
		call mbat 0 5 3f "5"
		call mbat 0 6 3f "6"
		call mbat 0 7 3f "7"
		call mbat 0 8 3f "8"
		call mbat 0 9 3f "9"
		call mbat 0 10 3f "10"
		call mbat 0 11 3f "11"
		call mbat 0 12 3f "12"		

		ping www.google.com -n 1 -w 1 > nul && (
			call mbat 47 1 0a "< Internet : Aktif >"
			) || (
			call mbat 47 1 0c "< Internet : YOK   >"
			)

::wget -O kaynak.zip https://github.com/mr1ay/2a3435w34j523/archive/master.zip 
::7z.exe x kaynak2.zip
::rename 2a3435w34j523-master kaynak2
::del geometri.bat
::del hf.bat
::set aa1=C:\Users\ZEKİYE\Desktop\geo
::move kaynak2\ver.txt 

:end
goto :eof