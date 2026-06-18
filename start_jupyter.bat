@echo off
REM Start Jupyter Notebook — all 6 days under hands-on\ (no PowerShell script policy needed)
cd /d "%~dp0"

if not exist ".venv\Scripts\jupyter.exe" (
    echo.
    echo No .venv found. Run setup first:
    echo   setup_student_env.bat
    echo   or: python -m venv .venv ^& .venv\Scripts\pip install -r requirements-student.txt
    exit /b 1
)

echo.
echo Starting Jupyter Notebook...
echo   Folder: %CD%\hands-on  (all 6 days)
echo   Kernel: Python (cisco-aiml-lab)
echo.
echo In browser: open a day folder -^> notebooks -^> lab notebook
echo Copy the http://127.0.0.1:8888/... URL below into your browser.
echo Stop: Ctrl+C
echo.

".venv\Scripts\jupyter.exe" notebook --no-browser --ip=127.0.0.1 --port=8888 --notebook-dir="hands-on"
