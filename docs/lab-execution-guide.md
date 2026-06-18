# Lab execution guide

## Environment

One virtual environment at the repo root: `.venv`

**First time**

```bash
# Windows
setup_student_env.bat

# Mac / Linux
chmod +x setup_student_env.sh && ./setup_student_env.sh
```

**Each session**

```bash
source .venv/bin/activate          # Windows: .\.venv\Scripts\Activate.ps1
cd hands-on/<day-folder>/notebooks
jupyter lab
```

Kernel → **Python (cisco-aiml-lab)**.

Run `lab01` … `lab06` in order. Saved plots go in `hands-on/<day>/output/` (created automatically).

## Smoke test

```bash
source .venv/bin/activate
python -c "import pandas, numpy, sklearn; print('ok')"
```

## Dataset sizes

| File | Rows |
|------|------|
| team_sales.csv | 100 |
| Zomato | 500 |
| Lending Club | 1,000 |
| NYSE | 500 |
| Credit card | 1,000 |

All under `data/`.
