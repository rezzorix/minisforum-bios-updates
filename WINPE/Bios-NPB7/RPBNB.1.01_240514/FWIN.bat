@echo off
set PROJECT_NAME=RPBNB
set BIOS_NAME=RPBNB.1.01.bin
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
for /f "delims=" %%i in ('wmic bios get name') do echo %%i| findstr /b %PROJECT_NAME% && (goto FLASH)
color 4E
echo This platform is not %PROJECT_NAME% project
pause
color 0F
goto END
:FLASH
FPTW64.exe -f %BIOS_NAME%
FPTW64.exe -greset
:END