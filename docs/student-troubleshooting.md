# Troubleshooting

## Setup

| Problem | What to try |
|---------|-------------|
| `python` not found | Install Python 3.10+ |
| `ModuleNotFoundError` | Re-run `setup_student_env.bat` or `.sh` |
| Wrong kernel | Use **Python (cisco-aiml-lab)** |

## Data / notebooks

| Problem | What to try |
|---------|-------------|
| CSV not found | Open the notebook from `hands-on/<day>/notebooks/` and run from the top |
| Assert failed | Check **Numbers to compare** in that day's `labs.md` |
| Row count wrong | Use files in `data/` only |

## Day 1 Excel lab

Pivot rows = `region`, not `team`. File: `data/team-sales/team_sales.csv` (100 rows).

## Still stuck?

Ask your instructor — send a screenshot of the error and the kernel name (top right in Jupyter).
