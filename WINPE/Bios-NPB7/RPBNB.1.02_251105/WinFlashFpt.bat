@echo off
set BIOS_NAME=RPBNB.bin
net session >nul 2>&1
if %errorlevel% equ 0 (
    goto :gotAdmin
)

echo Set UAC = CreateObject("Shell.Application") > "%temp%\admin.vbs"
echo UAC.ShellExecute "cmd.exe", "/k cd /d ""%~dp0"" && ""%~f0""", "", "runas", 1 >> "%temp%\admin.vbs"
"%temp%\admin.vbs"
del "%temp%\admin.vbs" >nul 2>&1
exit /b

:gotAdmin
cd /d "%~dp0"
FPTW64.exe -f %BIOS_NAME%
FPTW64.exe -greset
:END