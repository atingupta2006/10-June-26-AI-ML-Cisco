# Troubleshooting

## Setup

| Problem | What to try |
|---------|-------------|
| `python` not found | Install **Python 3.10+**; on Windows tick “Add to PATH” |
| `ModuleNotFoundError: pandas` (etc.) | Re-run `setup_student_env.ps1` / `.sh` / `.bat` |
| Imports fail in notebook | Kernel must be **Python (cisco-aiml-lab)** — not the system “Python 3” |
| `No module named matplotlib` | Same — wrong kernel |

Register the kernel manually if needed:

```bash
source .venv/bin/activate   # Windows: .\.venv\Scripts\Activate.ps1
python -m ipykernel install --user --name cisco-aiml-lab --display-name "Python (cisco-aiml-lab)"
```

## Paths and data

| Problem | What to try |
|---------|-------------|
| CSV not found | Start Jupyter from `hands-on/<day>/notebooks/`, or run cells from the top (path setup is in the notebook) |
| Row count not 500 / 1000 / 100 | Use files in `data/` only |
| Assert failed at end of notebook | Check **Numbers to compare** in `labs.md`; ask the instructor before editing CSVs |

## By day

| Day | Issue | Fix |
|-----|-------|-----|
| 01 | Excel stats differ from notebook | Use `STDEV.S`; all **100** rows in team sales |
| 01 | Lab 6 pivot looks wrong | Rows = `region`, not `team` |
| 04 | FastAPI deprecation warning | Safe to ignore in class |
| 04 | MLflow UI empty | Run Lab 6 logging cells first; DB is `hands-on/04-distance-mlops/output/mlflow.db` |
| 05 | “500 rows” vs 25 symbols | Labs use **25 symbols** with aggregated features |

## Still stuck?

1. Re-run the setup script.  
2. Restart Jupyter after activating `.venv`.  
3. Ask the instructor — include a screenshot of the **full error** and the **kernel name** (top right in Jupyter).
