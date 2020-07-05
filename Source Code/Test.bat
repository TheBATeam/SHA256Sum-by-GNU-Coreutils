@echo off
setlocal
title SHA256sum Test - By anic17
cls
path=%PATH%;%CD%;%CD%\Files

echo Drag here the file you want to calculate his hash and then press Enter
set /p "file=> "
echo.

for /f "tokens=1" %%x in ('sha256sum %file%') do (set "sha256sum=%%x")
echo %sha256sum:~1%
echo.
echo Press any key to quit... & pause>nul

:exit
endlocal
exit /b