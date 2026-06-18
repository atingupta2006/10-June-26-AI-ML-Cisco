# Start Jupyter Notebook on localhost (Windows)
$ErrorActionPreference = "Stop"
$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $RepoRoot

if (-not (Test-Path ".venv\Scripts\python.exe")) {
    Write-Host "No .venv found. Run setup first:"
    Write-Host "  .\setup_student_env.ps1"
    exit 1
}

$HandsOn = Join-Path $RepoRoot "hands-on"

Write-Host ""
Write-Host "Starting Jupyter Notebook..."
Write-Host "  Repo:   $RepoRoot"
Write-Host "  Folder: $HandsOn  (all 6 days)"
Write-Host "  Kernel: Python (cisco-aiml-lab)"
Write-Host ""
Write-Host "In the browser: open a day folder -> notebooks -> lab01_....ipynb"
Write-Host "Copy the http://127.0.0.1:8888/... URL from below into your browser."
Write-Host "Stop server: Ctrl+C in this window"
Write-Host ""

& ".\.venv\Scripts\jupyter.exe" notebook --no-browser --ip=127.0.0.1 --port=8888 `
    --notebook-dir="$HandsOn"
