@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
AFUWINx64.EXE F7BSC.rom /p /b /n /k /RLC:E 
IOcmd.exe
shutdown -s -t 0