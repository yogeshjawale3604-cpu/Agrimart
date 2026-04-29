@echo off
title Chaudhari Agrimart Server
color 0A

echo ================================================
echo    CHAUDHARI AGRIMART - LOCAL SERVER
echo ================================================
echo.

:: Check if Node.js is installed
where node >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is NOT installed!
    echo.
    echo Please install Node.js from: https://nodejs.org/
    echo Download the LTS version (e.g., 20.x or 22.x)
    echo.
    echo After installing, close this window and run this file again.
    echo.
    pause
    exit /b 1
)

echo [OK] Node.js found: 
node --version
echo.

:: Check if node_modules exists
IF NOT EXIST "node_modules\" (
    echo [INFO] Installing dependencies...
    npm install
    echo.
)

echo [STARTING] Server on http://localhost:3001
echo.
echo  Open your browser and go to:
echo  >>> http://localhost:3001 <<<
echo.
echo  To stop the server, press Ctrl+C
echo.
echo ================================================
echo.

node server.js

pause
