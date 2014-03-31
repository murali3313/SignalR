@echo off
powershell -ExecutionPolicy RemoteSigned  -command ".\build.ps1 %*; exit $lastexitcode"
exit /B %errorlevel%