# AI & Machine Learning — Cisco Training (June 2026)

Six days, Python 3.10+, one virtual environment for the whole course.

## Get started

1. Run **`setup_student_env`** once (see [student quick start](docs/student-quick-start.md)).
2. Read the [lab execution guide](docs/lab-execution-guide.md) — kernel name is **Python (cisco-aiml-lab)**.
3. Open [Day 1](hands-on/01-data-science-introduction/README.md) and work through `lab01` … `lab06` in order.

On Windows you can also double-click **`start_jupyter.bat`** after setup (opens all six days under `hands-on/`).

Stuck? See [troubleshooting](docs/student-troubleshooting.md).

## What's in the repo

```text
├── README.md
├── requirements-student.txt
├── setup_student_env.sh / .ps1 / .bat
├── start_jupyter.sh / .bat
├── docs/                 student guides
├── data/                 lab CSV files
└── hands-on/01-…06-…/   six days × six notebooks
```

[Course overview](docs/course-overview.md) — day-by-day map.

## Quick setup (Linux / Mac / WSL)

```bash
git clone https://github.com/atingupta2006/ai-ml-cisco-june-26.git
cd ai-ml-cisco-june-26
chmod +x setup_student_env.sh && ./setup_student_env.sh
source .venv/bin/activate
./start_jupyter.sh
```
