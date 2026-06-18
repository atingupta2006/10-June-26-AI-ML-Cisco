# Day 04 — Distance-Based ML & MLOps

**Theme:** Distance-Based ML & MLOps

## Session focus

- **Concepts:** Distance metrics, KNN, model selection, FastAPI, FeatureTools, MLflow/DVC
- **Use-case:** Lending Club multi-model comparison and experiment tracking

## Before you start

Read [lab execution guide](../../docs/lab-execution-guide.md) and open [labs.md](labs.md).

## Data

| File | Rows | Path |
|------|------|------|
| Lending Club sample | **1,000** | [`../../data/lending-club/lending_club_sample.csv`](../../data/lending-club/lending_club_sample.csv) |

Kaggle reference: [Lending Club](https://www.kaggle.com/wordsforthewise/lending-club)

**Binary target:** `default` = 1 for `Charged Off` or `Late (31-120 days)`.

## Labs

| Lab | Topic | Notebook |
|-----|--------|--------|
| 1 | Distance metrics | `notebooks/lab01_distance_metrics.ipynb` |
| 2 | KNN classifier | `notebooks/lab02_knn_classifier.ipynb` |
| 3 | Choose K | `notebooks/lab03_choose_k.ipynb` |
| 4 | FastAPI scoring API | `notebooks/lab04_fastapi_scoring_api.ipynb` |
| 5 | FeatureTools auto FE | `notebooks/lab05_featuretools_auto_fe.ipynb` |
| 6 | MLflow experiment log | `notebooks/lab06_mlflow_experiment_log.ipynb` |

## MLflow UI (optional)

After Lab 6, from `output/` with venv active:

```bash
cd hands-on/04-distance-mlops/output
mlflow ui --backend-store-uri sqlite:///mlflow.db --host 127.0.0.1 --port 5000
```

Open http://127.0.0.1:5000

## Syllabus

[Course overview](../../docs/course-overview.md)
