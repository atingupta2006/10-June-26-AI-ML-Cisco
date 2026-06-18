# Lab execution guide

## Environment

Use **one** virtual environment at the repo root (`.venv`).

### First time

**Windows:**

```powershell
.\setup_student_env.ps1
.\.venv\Scripts\Activate.ps1
```

Or run `setup_student_env.bat` from Explorer.

**Linux / macOS / WSL:**

```bash
chmod +x setup_student_env.sh
./setup_student_env.sh
source .venv/bin/activate
```

Needs **Python 3.10+**. The script installs [requirements-student.txt](../requirements-student.txt), registers the Jupyter kernel **Python (cisco-aiml-lab)**, and creates empty `output/` folders under each day.

### Each session

```bash
source .venv/bin/activate          # Windows: .\.venv\Scripts\Activate.ps1
cd hands-on/<day-folder>/notebooks
jupyter lab
```

Kernel → **Python (cisco-aiml-lab)**.

Run `lab01` through `lab06` in order. Plots and MLflow files go into `hands-on/<day>/output/`.

---

## Suggested workflow

1. Open the day folder under `hands-on/`.
2. Skim `README.md`, then open `labs.md` for that day's tasks.
3. Work through notebooks in `notebooks/` in order.
4. Compare your numbers to the **Numbers to compare** section in `labs.md`.

---

## Smoke test

```bash
source .venv/bin/activate
python -c "import pandas, numpy, sklearn, matplotlib, seaborn, shap; print('ok')"
```

Open `hands-on/01-data-science-introduction/notebooks/lab01_ai_ml_ds.ipynb` and run the first code cell.

---

## Folders that appear after you run labs

| Folder | What it is |
|--------|------------|
| `hands-on/<day>/output/` | Saved plots, JSON, `mlflow.db` |
| `mlruns/` (sometimes) | MLflow default store on some setups — safe to delete |

These are gitignored; you don't need to commit them.

---

## Lab datasets (row counts)

| File | Rows | Days |
|------|------|------|
| `team_sales.csv` | 100 | 1 |
| Zomato | 500 | 2 |
| Lending Club | 1,000 | 3–4 |
| NYSE | 500 | 5 |
| Credit card | 1,000 (10 fraud) | 6 |

Paths under [`data/`](../data/README.md).

---

## Problems?

[Student troubleshooting](student-troubleshooting.md)
