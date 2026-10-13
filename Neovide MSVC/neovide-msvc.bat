@echo off
setlocal

set "VSWHERE=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe"

if not exist "%VSWHERE%" (
    echo Error: vswhere.exe not found.
    exit /b 1
)

for /f "usebackq delims=" %%I in (`"%VSWHERE%" -latest -products * -find "Common7\Tools\VsDevCmd.bat"`) do (
    set "VSDEVCMD=%%I"
)

if not defined VSDEVCMD (
    echo Error: Visual Studio development tools not found.
    exit /b 1
)

call "%VSDEVCMD%" -arch=x64 -host_arch=x64

if errorlevel 1 exit /b 1

where neovide.exe >nul 2>&1

if not errorlevel 1 (
    start "" neovide.exe
) else (
    echo Error: neovide.exe not found in PATH.
    exit /b 1
)

endlocal
exit /b 0
