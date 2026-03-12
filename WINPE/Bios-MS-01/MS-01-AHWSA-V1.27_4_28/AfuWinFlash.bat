@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"

AFUWINx64.exe AHWSA.bin /p /b /n /x /r /l /reboot
