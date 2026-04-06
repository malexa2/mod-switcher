@echo off
set MINECRAFT=%APPDATA%\.minecraft
set MODS=%MINECRAFT%\mods
set VANILLA=%MINECRAFT%\mods-vanilla
set SERVER=%MINECRAFT%\mods-server
set LAUNCHER="C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe"

if not exist "%VANILLA%" (
    echo ERROR: mods-vanilla folder not found. Aborting.
    pause
    exit /b
)
if not exist "%SERVER%" (
    echo ERROR: mods-server folder not found. Aborting.
    pause
    exit /b
)

echo Which mod set do you want?
echo 1. Vanilla/QoL
echo 2. Server
set /p choice=Enter 1 or 2: 


if "%choice%"=="1" (
    rmdir /s /q "%MODS%"
    mklink /J "%MODS%" "%VANILLA%"
    %LAUNCHER% --workDir "%APPDATA%\.minecraft" --profile "Vanilla"
) else if "%choice%"=="2" (
    rmdir /s /q "%MODS%"
    mklink /J "%MODS%" "%SERVER%"
    %LAUNCHER% --workDir "%APPDATA%\.minecraft" --profile "Server"
) else (
    echo Invalid choice.
    pause
)