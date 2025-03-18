:: Boulder Dash - perform a full build of program
@echo off

:: Control creation of cave file PRGs (set to Y or N) and set cave load address
:: .e.g. when all_caves_load_area start address is $3900, set CAVE_LOW=00, CAVE_HIGH=39
set MAKECAVES=N
set CAVE_LOW=00
set CAVE_HIGH=39

:: Build main program
echo Created game engine
.\bin\acme.exe -l .\build\symbols -o .\prg\bd .\main.asm

:: Create PRG file containing the caves of each version
if "%MAKECAVES%"=="Y" (

:: Create a binary fine containing the 2 load adddress bytes for the cave prg files
>.\build\temp.txt echo(%CAVE_LOW% %CAVE_HIGH%
certutil -f -v -decodehex .\build\temp.txt .\build\prgheader.bin 4 >nul
del .\build\temp.txt

set BDVER=BoulderDash01
set BDPRG=B1CAVES
call :create_prg_file_for_version

set BDVER=BoulderDash02
set BDPRG=B2CAVES
call :create_prg_file_for_version

set BDVER=BoulderDash03
set BDPRG=B3CAVES
call :create_prg_file_for_version

set BDVER=BoulderDashP1
set BDPRG=P1CAVES
call :create_prg_file_for_version

set BDVER=ArnoDash01
set BDPRG=A1CAVES
call :create_prg_file_for_version


:: Copy and rename bonus caves from versions above into a bonus cave collection
copy /b .\caves_bin\BoulderDash01\Q .\caves_bin\BoulderBonus\A >nul
copy /b .\caves_bin\BoulderDash01\R .\caves_bin\BoulderBonus\B >nul
copy /b .\caves_bin\BoulderDash01\S .\caves_bin\BoulderBonus\C >nul
copy /b .\caves_bin\BoulderDash01\T .\caves_bin\BoulderBonus\D >nul
copy /b .\caves_bin\BoulderDash02\Q .\caves_bin\BoulderBonus\E >nul
copy /b .\caves_bin\BoulderDash02\R .\caves_bin\BoulderBonus\F >nul
copy /b .\caves_bin\BoulderDash02\S .\caves_bin\BoulderBonus\G >nul
copy /b .\caves_bin\BoulderDash02\T .\caves_bin\BoulderBonus\H >nul
copy /b .\caves_bin\BoulderDash03\Q .\caves_bin\BoulderBonus\I >nul
copy /b .\caves_bin\BoulderDash03\R .\caves_bin\BoulderBonus\J >nul
copy /b .\caves_bin\BoulderDash03\S .\caves_bin\BoulderBonus\K >nul
copy /b .\caves_bin\BoulderDash03\T .\caves_bin\BoulderBonus\L >nul
copy /b .\caves_bin\BoulderDashP1\Q .\caves_bin\BoulderBonus\M >nul
copy /b .\caves_bin\BoulderDashP1\R .\caves_bin\BoulderBonus\N >nul
copy /b .\caves_bin\BoulderDashP1\S .\caves_bin\BoulderBonus\O >nul
copy /b .\caves_bin\BoulderDashP1\T .\caves_bin\BoulderBonus\P >nul
copy /b .\caves_bin\ArnoDash01\Q .\caves_bin\BoulderBonus\Q >nul
copy /b .\caves_bin\ArnoDash01\R .\caves_bin\BoulderBonus\R >nul
copy /b .\caves_bin\ArnoDash01\S .\caves_bin\BoulderBonus\S >nul
copy /b .\caves_bin\ArnoDash01\T .\caves_bin\BoulderBonus\T >nul
copy /b .\caves_bin\BonusIntro\A .\caves_bin\BoulderBonus\Z >nul

set BDVER=BoulderBonus
set BDPRG=BBCAVES
call :create_prg_file_for_version
)

goto :build_d64

:: Subroutine to create one large cave file containing all caves A to T with the Z intro cave on the end for a given version
:create_prg_file_for_version
cd .\caves_bin\%BDVER%
copy /b A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+Z ..\..\build\caves.bin >nul
cd ..\..
copy /b .\build\prgheader.bin+.\build\caves.bin .\build\caves_prg.bin >nul
move /y .\build\caves_prg.bin .\prg\%BDPRG% >nul
echo Created cave file from %BDVER% called %BDPRG%
exit /B

:build_d64
%PYPATH%\python create_d64.py
echo Done!
