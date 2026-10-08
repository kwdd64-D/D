@echo off
set ROOT=D:\D
set OUT=D:\D\docs\d-filelist.md
chcp 65001 > nul

echo # D File List > "%OUT%"
echo. >> "%OUT%"
echo Generated: %date% %time% >> "%OUT%"
echo. >> "%OUT%"
echo ``` >> "%OUT%"

tree "%ROOT%" /F /A | findstr /V "\.import" >> "%OUT%"

echo ``` >> "%OUT%"
echo Done! d-filelist.md.
pause