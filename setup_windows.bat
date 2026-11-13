@echo off
setlocal
cd /d "%~dp0"
echo MARK LIV - Windows setup
echo.
where py >nul 2>nul
if %errorlevel%==0 (
    py -3.13 setup.py
) else (
    python setup.py
)
if errorlevel 1 (
    echo.
    echo Setup did not complete. Install Python 3.13 from python.org,
    echo then run this file again.
    pause
    exit /b 1
)
echo.
echo Setup finished.
pause
