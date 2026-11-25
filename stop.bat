@echo off
echo Stopping Python HTTP server on port 5500...
for /f "tokens=5" %%a in ('netstat -aon ^| find ":5500" ^| find "LISTENING"') do taskkill /F /PID %%a
echo Server stopped!
pause
