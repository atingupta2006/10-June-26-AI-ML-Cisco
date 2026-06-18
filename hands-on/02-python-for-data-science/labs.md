# Day 02 — Labs

**Theme:** Python for Data Science | **Lab time (6 labs):** ~545 min (~9 h)

**Execution guide:** [docs/lab-execution-guide.md](../../docs/lab-execution-guide.md) — read before Lab 1.

---

## Before every lab

**Environment:** one venv for all days — `setup_student_env.ps1` or `setup_student_env.sh` at repo root. Kernel: **Python (cisco-aiml-lab)**. [Lab execution guide](../../docs/lab-execution-guide.md).

Run notebooks in `notebooks/` in lab order (`lab01` … `lab06`).

---

## Quick checks

| Lab | You should have |
|-----------|--------|
| Lab 1 | `len(cities)` = **4**; cuisines set has **3** items |
| Lab 2 | `votes` shape = **(5,)**; column means ≈ **[1392, 1290]** |
| Lab 3 | `df.shape` = **(500, 9)**; mean rating ≈ **3.70** |
| Lab 4 | `rating_distribution.png` saved; mean rating ≈ **3.70** |
| Lab 5 | Model trained on **500** rows; intercept ≈ **3.72** |
| Lab 6 | Test size = **100**; RMSE ≈ **0.69** |


## Lab pacing

| Lab | Est. time |
|-----|-----------|
| Lab 1 | ~90 min |
| Lab 2 | ~85 min |
| Lab 3 | ~95 min |
| Lab 4 | ~75 min |
| Lab 5 | ~80 min |
| Lab 6 | ~70 min |
| **Total** | **~545 min** |

---

# Lab 1 — Python structures

## Objective

Practice core Python data structures — lists, tuples, dictionaries, and sets — using restaurant-themed examples.

**Time:** ~90 min

## Flow

```text
  Zomato CSV peek → lists (cities, menus) → tuples (config) → dicts (records) → sets (cuisines)
       → mini filters on 100–200 rows → verify
```

## Tasks

1. Open `notebooks/lab01_python_structures.ipynb` and run all cells in order.
2. Work through each section: list indexing/slicing, tuple config, dict records from `csv.DictReader`, set dedup.
3. Complete the **mini scenario** (high-rated names, votes by city) and the **try it yourself** exercise.
4. Confirm the final checkpoint: `len(cities) == 4` and **3** unique cuisines.
5. Answer the reflection questions before Lab 2.

## Numbers to compare

```text
cities (list, len=4): ['Bengaluru', 'Mumbai', 'Delhi', 'Hyderabad']
unique cuisines (set): ['Cafe', 'Chinese', 'North Indian']
```

## Done when

* Script runs without errors.
* You can explain the difference between list, tuple, dict, and set.
* `len(cities)` = **4** and the cuisines set contains **3** unique values.

---

# Lab 2 — NumPy arrays

## Objective

Create NumPy arrays, apply vectorized math, and combine columns into a 2-D matrix.

**Time:** ~85 min

## Flow

```text
  Load 500-row Zomato columns → verify 1-D arrays → vectorize → z-score → masks
       → 2-D matrix & axis stats → linear algebra preview → verify
```

## Tasks

1. Open `notebooks/lab02_numpy_arrays.ipynb` and run all cells in order.
2. Load **ratings, votes, costs** from the full Zomato CSV into NumPy; then work the **5-row checkpoint** sample.
3. Compare **loop vs vectorized** timing on 500 rows; practice boolean masks and `np.where`.
4. Build `column_stack` matrices, axis means, and a **50×3** feature block from real data.
5. Complete the **try it yourself** exercise and confirm checkpoint column means ≈ **[1392, 1290]**.

## Numbers to compare

```text
votes shape: (5,), dtype: int64
matrix shape: (5, 2)
column means [votes, cost]: [1392. 1290.]
```

## Done when

* Script runs without errors.
* `votes.shape` is **(5,)** and `matrix.shape` is **(5, 2)**.
* Column means are approximately **[1392, 1290]**.

---

# Lab 3 — Pandas Zomato load

## Objective

Load the Zomato restaurants CSV with Pandas and perform first-pass exploration.

**Time:** ~95 min

## Flow

```text
  read_csv → info/dtypes → head/sample → missing/dupes → describe/corr
       → value_counts/crosstab → filter/query → sort → derived cols → groupby → verify
```

## Tasks

1. Confirm path: `data/zomato/zomato_restaurants.csv` (**500** rows, **9** columns).
2. Open `notebooks/lab03_pandas_zomato_load.ipynb` and run all cells in order.
3. Work through filtering, `groupby`, pivot, and the **try it yourself** Mumbai subset.
4. Verify `df.shape == (500, 9)` and mean `aggregate_rating` ≈ **3.70**.

## Numbers to compare

```text
shape (rows, cols): (500, 9)
mean aggregate_rating: 3.70
```

## Done when

* `df.shape` = **(500, 9)**.
* Nine columns present including `aggregate_rating`, `votes`, and `average_cost_for_two`.
* `describe()` shows mean rating near **3.70**.

---

# Lab 4 — Seaborn plots

## Objective

Build exploratory plots with Seaborn — rating distribution and cost by city.

**Time:** ~50 min

## Flow

```text
  load CSV → histplot (ratings) → boxplot (cost by city) → save figure
```

## Tasks

1. Open `notebooks/lab04_seaborn_plots.ipynb` (recommended) or `lab04_seaborn_plots.py`.
2. Run all cells; confirm `output/rating_distribution.png` is saved.
3. Experiment with histogram `bins` (10 vs 20) in the notebook.
4. Describe one insight from the rating histogram and one from the cost box plot.

## Numbers to compare

```text
rating plot saved: rating_distribution.png
mean rating: 3.70
top city by avg cost: Kolkata (1402)
```

## Done when

* `output/rating_distribution.png` is created.
* Mean rating printed ≈ **3.70**.
* You can describe one insight from each plot.

---

# Lab 5 — Linear regression fit

## Objective

Fit ordinary least squares (OLS) linear regression to predict `aggregate_rating` from `votes` and `average_cost_for_two`.

**Time:** ~50 min

## Flow

```text
  select features → LinearRegression.fit → inspect intercept & coefficients → sample predictions
```

## Tasks

1. Open `notebooks/lab05_linear_regression_fit.ipynb` (recommended) or `lab05_linear_regression_fit.py`.
2. Fit the model and compare predicted vs actual ratings for the first three rows.
3. Complete the extension cell — add `online_order` encoded as 0/1 and refit.
4. Relate intercept and coefficients to the OLS equation \( \hat{y} = \beta_0 + \beta_1 x_1 + \beta_2 x_2 \).

## Numbers to compare

```text
training rows: 500
intercept: 3.7167
coefficients [votes, cost]: [0. -0.]
```

## Done when

* Model fits on **500** rows without error.
* Intercept and two coefficients are printed.
* You can state which features were used as \(X\) and which column is \(y\).

---

# Lab 6 — LR evaluation metrics

## Objective

Split data into train/test sets and evaluate regression with **R²**, **MSE**, **MAE**, and **RMSE**.

**Time:** ~50 min

## Flow

```text
  train_test_split → fit on train → predict test → metric functions
```

## Tasks

1. Open `notebooks/lab06_lr_evaluation_metrics.ipynb` (recommended) or `lab06_lr_evaluation_metrics.py`.
2. Run all cells; record R², MSE, MAE, and RMSE on the test set.
3. Review predicted-vs-actual and residual plots.
4. Compare RMSE (~**0.69**) to the rating range (2.5–4.9) and discuss whether R² near zero is acceptable.

## Numbers to compare

```text
train size: 400, test size: 100
R2: -0.0031
RMSE: 0.6852
```

## Done when

* Train size **400** and test size **100** (with `test_size=0.2`, `random_state=42`).
* All four metrics printed.
* You can define R², MSE, MAE, and RMSE in your own words.

---
