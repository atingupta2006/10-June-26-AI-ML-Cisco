# Day 05 — Labs

Kernel: **Python (cisco-aiml-lab)** · Run `notebooks/lab01` … `lab06` in order.

---

## Quick checks

| Lab | You should have |
|-----------|--------|
| Lab 1 | **25** symbols; k=**4**; inertia ≈ **45.86** |
| Lab 2 | Suggested k = **3** (largest inertia drop) |
| Lab 3 | DBSCAN: **3** clusters; **11** noise points |
| Lab 4 | Silhouette ≈ **0.24**; Davies-Bouldin ≈ **1.07** |
| Lab 5 | `multi_cluster_view.png` saved |
| Lab 6 | **4** segments; sizes `{0:8, 1:9, 2:7, 3:1}` |


## Lab pacing

| Lab | Est. time |
|-----|-----------|
| Lab 1 | ~50 min |
| Lab 2 | ~40 min |
| Lab 3 | ~50 min |
| Lab 4 | ~45 min |
| Lab 5 | ~45 min |
| Lab 6 | ~50 min |
| **Total** | **~280 min** |

---

# Lab 1 — K-Means baseline

## Objective

Apply K-Means clustering to per-symbol NYSE features with **k = 4**.

**Time:** ~50 min

## Flow

```text
  load NYSE → aggregate per symbol → scale → KMeans(4) → inertia + counts
```

## Tasks

1. Open `notebooks/lab01_kmeans_baseline.ipynb` (recommended) or `lab01_kmeans_baseline.py`.
2. Run all cells and note inertia and cluster sizes.
3. Inspect `_data.py` — how are `avg_close` and `volatility` computed?
4. Change k to 3 and re-run; compare inertia to Lab 2.

## Numbers to compare

```text
symbols clustered: 25
k: 4
inertia: 45.8634
cluster counts: {0: 8, 1: 9, 2: 7, 3: 1}
```

## Done when

* **25** symbols clustered on **4** numeric features.
* Inertia printed (expect ≈ **45.86**).
* You can explain why features are scaled before K-Means.

---

# Lab 2 — Elbow method

## Objective

Use the elbow method to estimate a reasonable **k** by plotting inertia across candidate values.

**Time:** ~40 min

## Flow

```text
  for k in 2..8 → fit KMeans → record inertia → find largest drop
```

## Tasks

1. Open `notebooks/lab02_elbow_method.ipynb` (recommended) or `lab02_elbow_method.py`.
2. Run all cells and identify the suggested k.
3. Optional: plot k vs inertia with matplotlib and mark the elbow.
4. Compare suggested k with the k=4 baseline from Lab 1.

## Numbers to compare

```text
suggested k (largest inertia drop): 3
```

## Done when

* Inertia table printed for k = **2** through **8**.
* Suggested k printed (expect **3**).
* You can explain the bias–variance trade-off when choosing k.

---

# Lab 3 — DBSCAN clusters

## Objective

Cluster the same symbol features with DBSCAN — a density-based method that can label noise points.

**Time:** ~50 min

## Flow

```text
  scale features → DBSCAN(eps, min_samples) → cluster count + noise count
```

## Tasks

1. Open `notebooks/lab03_dbscan_clusters.ipynb` (recommended) or `lab03_dbscan_clusters.py`.
2. Run all cells; note clusters found and noise points (label **-1**).
3. Try `eps=0.8` and `eps=1.5` — how do cluster and noise counts change?
4. Compare DBSCAN results to K-Means from Lab 1.

## Numbers to compare

```text
clusters found: 3
noise points: 11
label counts: {-1: 11, 0: 6, 1: 4, 2: 4}
```

## Done when

* DBSCAN runs without error on **25** symbols.
* Noise point count printed (expect **11** with default eps).
* You can explain when DBSCAN is preferred over K-Means.

---

# Lab 4 — Cluster metrics

## Objective

Evaluate K-Means clusters with silhouette score, Davies-Bouldin index, and Calinski-Harabasz score.

**Time:** ~45 min

## Flow

```text
  KMeans(k=4) → silhouette / Davies-Bouldin / Calinski-Harabasz
```

## Tasks

1. Open `notebooks/lab04_cluster_metrics.ipynb` (recommended) or `lab04_cluster_metrics.py`.
2. Run all cells and record all three metrics.
3. Re-run with k=3 (from Lab 2) and compare silhouette scores.
4. State which metric is "higher is better" vs "lower is better".

## Numbers to compare

```text
silhouette score: 0.2414
Davies-Bouldin index: 1.0659
Calinski-Harabasz score: 8.2627
```

## Done when

* All three metrics printed for k=**4**.
* Silhouette ≈ **0.24** on classroom data.
* You can interpret at least one metric in plain language.

---

# Lab 5 — NYSE multi-cluster view

## Objective

Visualize K-Means and DBSCAN assignments on the same scatter plot (avg_close vs volatility).

**Time:** ~45 min

## Flow

```text
  fit KMeans + DBSCAN → scatter plots → save multi_cluster_view.png
```

## Tasks

1. Open `notebooks/lab05_nyse_multi_cluster_view.ipynb` (recommended) or `lab05_nyse_multi_cluster_view.py`.
2. Run all cells; open `output/multi_cluster_view.png`.
3. Identify which symbols sit in sparse regions (likely DBSCAN noise).
4. Discuss why the two side-by-side plots can disagree.

## Numbers to compare

```text
symbols plotted: 25
plot saved: multi_cluster_view.png
```

## Done when

* `output/multi_cluster_view.png` created.
* Both K-Means and DBSCAN label counts printed.
* You can describe one visual difference between the two plots.

---

# Lab 6 — Segmentation summary

## Objective

Summarize K-Means segments with mean feature values and representative symbols per segment.

**Time:** ~50 min

## Flow

```text
  assign segments → groupby means → list sample symbols per segment
```

## Tasks

1. Open `notebooks/lab06_segmentation_summary.ipynb` (recommended) or `lab06_segmentation_summary.py`.
2. Run all cells and review the segment means table.
3. For each segment, name whether it looks like "high price", "low price", or "high volatility".
4. Write one business use-case for NYSE segmentation (e.g. portfolio grouping).

## Numbers to compare

```text
symbols per segment: {0: 8, 1: 9, 2: 7, 3: 1}
segment 0 sample: ['CSCO', 'DIS', 'MSFT', 'NFLX']
```

## Done when

* Segment size dict printed for **4** segments.
* Mean feature table printed per segment.
* Sample symbols listed for each segment.

---
