#!/usr/bin/env bash
# Start Jupyter Notebook on localhost (Linux / macOS / WSL / Git Bash)
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_ROOT"

if [[ ! -x ".venv/bin/python" ]]; then
  echo "No .venv found. Run setup first:"
  echo "  ./setup_student_env.sh"
  exit 1
fi

HANDS_ON="$REPO_ROOT/hands-on"

echo ""
echo "Starting Jupyter Notebook..."
echo "  Repo:   $REPO_ROOT"
echo "  Folder: $HANDS_ON  (all 6 days)"
echo "  Kernel: Python (cisco-aiml-lab)"
echo ""
echo "In the browser: open a day folder -> notebooks -> lab01_....ipynb"
echo "Copy the http://127.0.0.1:8888/... URL from below into your browser."
echo "Stop server: Ctrl+C in this window"
echo ""

.venv/bin/jupyter notebook --no-browser --ip=127.0.0.1 --port=8888 \
  --notebook-dir="$HANDS_ON"
