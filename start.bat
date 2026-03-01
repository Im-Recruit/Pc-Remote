@echo off
echo Checking requirements...

REM Check if requirements.txt exists
if not exist requirements.txt (
    echo requirements.txt not found! Create it first.
    pause
    exit /b 1
)

REM Check if pip is available
pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo pip not found. Install Python/pip first.
    pause
    exit /b 1
)

REM Install/update requirements
echo Installing requirements...
pip install -r requirements.txt --upgrade

REM Check if server.py exists
if not exist server.py (
    echo server.py not found!
    pause
    exit /b 1
)

REM Launch server
echo Starting PC Remote server...
echo Access at http://localhost:5000 or your IP:5000
python server.py
pause
