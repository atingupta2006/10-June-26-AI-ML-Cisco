# Day 04 — Labs

Kernel: **Python (cisco-aiml-lab)** · Run `notebooks/lab01` … `lab06` in order.

---

## Quick checks

| Lab | You should have |
|-----------|--------|
| Lab 1 | Cosine similarity ≈ **0.90** between first two loans |
| Lab 2 | KNN k=**5**; test accuracy ≈ **0.55** |
| Lab 3 | Best k = **3**; accuracy ≈ **0.59** |
| Lab 4 | `GET /health` → **200**; `POST /predict` → **200** |
| Lab 5 | Feature matrix shape **(1000, 6)**; top corr **int_rate** |
| Lab 6 | MLflow run logged; accuracy ≈ **0.58**; `metrics.json` + `metrics.json.dvc` |


## Lab pacing

| Lab | Est. time |
|-----|-----------|
| Lab 1 | ~40 min |
| Lab 2 | ~50 min |
| Lab 3 | ~35 min |
| Lab 4 | ~55 min |
| Lab 5 | ~50 min |
| Lab 6 | ~55 min |
| **Total** | **~285 min** |

---

# Lab 1 — Distance metrics

## Objective

Compute Euclidean, Manhattan, and cosine distances between two loan feature vectors.

**Time:** ~40 min

## Flow

```text
  select two loans → numpy vectors → Euclidean / Manhattan / cosine
```

## Tasks

1. Open `notebooks/lab01_distance_metrics.ipynb` (recommended) or `lab01_distance_metrics.py`.
2. Run all cells and compare the three distance measures.
3. Change to rows 10 and 50 (`iloc[9]`, `iloc[49]`) and note which metric changes most.
4. Explain why scaling matters before distance-based algorithms (preview for Lab 2).

## Numbers to compare

```text
Euclidean distance: 69370.1405
Manhattan distance: 71367.0300
cosine similarity: 0.8960
```

## Done when

* Script runs without errors.
* All three metrics printed for the same pair of loans.
* You can describe when cosine distance is preferred over Euclidean.

---

# Lab 2 — KNN classifier

## Objective

Train a K-Nearest Neighbors classifier with **k = 5** on scaled numeric loan features.

**Time:** ~50 min

## Flow

```text
  StandardScaler → KNeighborsClassifier(5) → fit → predict → accuracy
```

## Tasks

1. Open `notebooks/lab02_knn_classifier.ipynb` (recommended) or `lab02_knn_classifier.py`.
2. Run all cells and record test accuracy.
3. Inspect sample predictions — are both classes (0 and 1) predicted?
4. Compare accuracy to Day 3 logistic regression (~0.59).

## Numbers to compare

```text
k (neighbors): 5
test accuracy: 0.5500
sample predictions (first 5): [1, 0, 1, 0, 1]
```

## Done when

* Pipeline includes scaling before KNN.
* Test accuracy printed (expect ≈ **0.55**).
* Predictions include both **0** and **1**.

---

# Lab 3 — Choose K

## Objective

Sweep candidate **k** values and pick the one with highest test accuracy.

**Time:** ~35 min

## Flow

```text
  for k in [1,3,5,7,9,11,15] → fit → accuracy → select best k
```

## Tasks

1. Open `notebooks/lab03_choose_k.ipynb` (recommended) or `lab03_choose_k.py`.
2. Run all cells and identify the best **k**.
3. Plot accuracy vs k (optional matplotlib extension).
4. Discuss bias–variance: what happens at k=1 vs k=15?

## Numbers to compare

```text
best k: 3 (accuracy 0.5900)
```

## Done when

* All seven **k** values evaluated.
* Best **k** printed (expect **3** at ≈ **0.59** accuracy).
* You can explain overfitting risk when k is too small.

---

# Lab 4 — FastAPI scoring API

## Objective

Expose the trained KNN model as a REST API and verify it with FastAPI's `TestClient` (no live server required for the lab script).

**Time:** ~55 min

## Flow

```text
  train model → define FastAPI app → GET /health → POST /predict → TestClient
```

## Tasks

1. Open `notebooks/lab04_fastapi_scoring_api.ipynb` (recommended) or `lab04_fastapi_scoring_api.py`.
2. Run all cells and confirm HTTP **200** responses.
3. To run a live server: `uvicorn lab04_fastapi_scoring_api:app --reload` then POST to `http://127.0.0.1:8000/predict`.
4. Change the sample JSON body and observe `default_probability` change.

## Numbers to compare

```text
GET /health -> 200 {'status': 'ok'}
POST /predict -> 200
response body: {'default_probability': 0.2, 'default_label': 0}
```

## Done when

* `/health` returns status **ok**.
* `/predict` accepts JSON with five numeric fields and returns probability + label.
* You can describe how an API wraps a trained model for production scoring.

---

# Lab 5 — FeatureTools auto FE

## Objective

Use FeatureTools Deep Feature Synthesis (DFS) to auto-generate features from the loans entity set.

**Time:** ~50 min

## Flow

```text
  EntitySet → add_dataframe(loans) → dfs(max_depth=1) → correlation ranking
```

## Tasks

1. Open `notebooks/lab05_featuretools_auto_fe.ipynb` (recommended) or `lab05_featuretools_auto_fe.py`.
2. Run all cells; note input vs engineered feature counts.
3. Review top features correlated with `default`.
4. Compare DFS output columns to the hand-picked Day 3 features.

## Numbers to compare

```text
input columns: 7
engineered features: 6
feature matrix shape: (1000, 6)
top |corr| with default: int_rate: 0.2084
```

## Done when

* Feature matrix has **1,000** rows.
* Engineered feature count printed.
* Top correlated feature is **int_rate**.

---

# Lab 6 — MLflow experiment log

## Objective

Log a KNN training run to MLflow, write `metrics.json`, and version it with DVC (`dvc init`, `dvc add`, `dvc status`).

**Time:** ~55 min

## Flow

```text
  train model → MLflow log → metrics.json → dvc add → metrics.json.dvc
```

## Tasks

1. Open `notebooks/lab06_mlflow_experiment_log.ipynb` (recommended) or `lab06_mlflow_experiment_log.py`.
2. Run all cells; note the `run_id` and SQLite tracking DB path.
3. Confirm DVC: `output/metrics.json.dvc` exists under `` and `dvc status` is clean.
4. Launch MLflow UI: `mlflow ui --backend-store-uri sqlite:///mlflow.db` (from `04-distance-mlops/output`).

## Numbers to compare

```text
experiment: cisco-aiml-day04-lending-club
accuracy: 0.5800
tracking db: mlflow.db
metrics artifact: metrics.json
DVC pointer: output/metrics.json.dvc
```

## Done when

* MLflow experiment and run created without error.
* Parameters (`k`) and metric (`accuracy`) logged.
* `output/metrics.json` exists after the run.
* `output/metrics.json.dvc` created; `dvc status` reports no changes pending.

---
