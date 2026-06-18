# Student quick start

## 1. Get the materials

```bash
git clone https://github.com/atingupta2006/ai-ml-cisco-june-26.git
cd ai-ml-cisco-june-26
```

## 2. One-time environment setup

| OS | Command |
|----|---------|
| **Windows** | `.\setup_student_env.ps1` |
| **Linux / Mac / WSL** | `chmod +x setup_student_env.sh && ./setup_student_env.sh` |

Requirements: **Python 3.10+**, ~5 GB disk, **8 GB RAM** (16 GB recommended).

## 3. Start Day 1

```bash
source .venv/bin/activate          # Windows: .\.venv\Scripts\Activate.ps1
cd hands-on/01-data-science-introduction/notebooks
jupyter lab
```

Select kernel: **Python (cisco-aiml-lab)**.

Read [lab execution guide](lab-execution-guide.md) before Lab 1.

## 4. Each day

| Day | Folder | Notes |
|-----|--------|-------|
| 01 | [01-data-science-introduction](../hands-on/01-data-science-introduction/README.md) | Labs 1→6 in order; hands-on Labs 3–4–6 on `team_sales.csv` (~7 h) |
| 02 | [02-python-for-data-science](../hands-on/02-python-for-data-science/README.md) | Zomato 500 rows |
| 03 | [03-classification-interpretation](../hands-on/03-classification-interpretation/README.md) | Lending Club classification |
| 04 | [04-distance-mlops](../hands-on/04-distance-mlops/README.md) | KNN, FastAPI, MLflow |
| 05 | [05-unsupervised-learning](../hands-on/05-unsupervised-learning/README.md) | NYSE clustering |
| 06 | [06-anomaly-detection](../hands-on/06-anomaly-detection/README.md) | Credit card fraud |

## Datasets

| Dataset | Used from day |
|---------|----------------|
| Team sales | Day 1 |
| Zomato restaurants | Day 2 |
| Lending Club | Days 3–4 |
| NYSE stocks | Day 5 |
| Credit card transactions | Day 6 |

## Help

- [Troubleshooting](student-troubleshooting.md)
- [Syllabus coverage](syllabus-coverage.md)
