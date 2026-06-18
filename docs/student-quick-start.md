# Student quick start

## 1. Clone the repo

```bash
git clone https://github.com/atingupta2006/ai-ml-cisco-june-26.git
cd ai-ml-cisco-june-26
```

## 2. Set up Python (once)

| OS | Command |
|----|---------|
| **Windows** | `setup_student_env.bat` or `.\setup_student_env.ps1` |
| **Linux / Mac / WSL** | `chmod +x setup_student_env.sh && ./setup_student_env.sh` |

You need **Python 3.10+** and about 5 GB disk. **8 GB RAM** is enough; **16 GB** is nicer on Day 3–4.

## 3. Open Jupyter

**Option A — helper script (recommended after setup):**

```bash
./start_jupyter.sh          # Windows: start_jupyter.bat
```

**Option B — manual:**

```bash
source .venv/bin/activate          # Windows: .\.venv\Scripts\Activate.ps1
cd hands-on/01-data-science-introduction/notebooks
jupyter lab
```

Pick kernel **Python (cisco-aiml-lab)** (Kernel → Change kernel).

Read the [lab execution guide](lab-execution-guide.md) before Lab 1.

## 4. Work day by day

| Day | Folder |
|-----|--------|
| 01 | [01-data-science-introduction](../hands-on/01-data-science-introduction/README.md) |
| 02 | [02-python-for-data-science](../hands-on/02-python-for-data-science/README.md) |
| 03 | [03-classification-interpretation](../hands-on/03-classification-interpretation/README.md) |
| 04 | [04-distance-mlops](../hands-on/04-distance-mlops/README.md) |
| 05 | [05-unsupervised-learning](../hands-on/05-unsupervised-learning/README.md) |
| 06 | [06-anomaly-detection](../hands-on/06-anomaly-detection/README.md) |

Day 1 Labs 3, 4, and 6 use `data/team-sales/team_sales.csv` in Excel and/or Python. Plan about seven hours for all six Day 1 labs.

## Data files

| File | Used on |
|------|---------|
| `team-sales/team_sales.csv` | Day 1 |
| `zomato/zomato_restaurants.csv` | Day 2 |
| `lending-club/lending_club_sample.csv` | Days 3–4 |
| `nyse/nyse_stocks.csv` | Day 5 |
| `credit-card/credit_card_transactions.csv` | Day 6 |

Stick to the copies in `data/` — don't swap in full Kaggle downloads unless the instructor asks you to.

## Help

- [Troubleshooting](student-troubleshooting.md)
- [Course overview](course-overview.md)
