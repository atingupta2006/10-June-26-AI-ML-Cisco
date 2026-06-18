@echo off
REM One-time student environment setup (no PowerShell script policy needed)
cd /d "%~dp0"

where python >nul 2>&1
if errorlevel 1 (
    echo Python not found. Install Python 3.10+ from https://www.python.org/
    exit /b 1
)

python --version
python -c "import sys; sys.exit(0 if sys.version_info >= (3, 10) else 1)"
if errorlevel 1 (
    echo Python 3.10+ required.
    exit /b 1
)

if not exist ".venv" (
    python -m venv .venv
)

".venv\Scripts\python.exe" -m pip install -q --upgrade pip
".venv\Scripts\python.exe" -m pip install -q -r requirements-student.txt
".venv\Scripts\python.exe" -m ipykernel install --user --name cisco-aiml-lab --display-name "Python (cisco-aiml-lab)"

for /d %%D in (hands-on\*) do if not exist "%%D\output" mkdir "%%D\output"

echo.
echo Setup complete.
echo   Start Jupyter:  start_jupyter.bat
echo   Kernel name:    Python (cisco-aiml-lab)
