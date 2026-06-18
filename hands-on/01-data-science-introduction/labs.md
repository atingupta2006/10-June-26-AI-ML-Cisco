# Day 01 — Labs

Kernel: **Python (cisco-aiml-lab)** · Run `notebooks/lab01` … `lab06` in order.

---

## Quick checks

| Lab | You should have |
|-----------|--------|
| Lab 1 | Worksheet: AI ⊃ ML ⊃ DS nesting correct |
| Lab 2 | Worksheet: all six CRISP-DM phases named |
| Lab 3 | Mean q2_sales ≈ **1002.76**; regional tables; outlier analysis |
| Lab 4 | Growth rate (q2 > q1) = **0.58**; sampling distribution explored |
| Lab 5 | Worksheet: 3+ categories with 2+ tools each; CRISP-DM tool map |
| Lab 6 | **58** teams grew; top region **West**; % growth story for **Central** |

## Lab pacing

| Lab | Est. time |
|-----|-----------|
| Lab 1 | ~30 min |
| Lab 2 | ~30 min |
| Lab 3 | ~90 min |
| Lab 4 | ~100 min |
| Lab 5 | ~75 min |
| Lab 6 | ~110 min |
| **Total** | **~435 min** |

---

# Lab 1 — AI vs ML vs DS

## Objective

Distinguish Artificial Intelligence, Machine Learning, and Data Science using the Netflix-style use-case from the morning session.

**Time:** ~30 min

## Flow

```text
  instructor use-case → Venn diagram → worksheet definitions → group share-out
```

## Tasks

1. Open `notebooks/lab01_ai_ml_ds.ipynb` (recommended) or complete the worksheet on paper.
2. Draw three nested circles: **AI** (outer), **ML** (middle), **Data Science** (inner, overlapping ML).
3. Place **Netflix recommendation** in the ML ring; place **dashboard reporting** in DS but outside ML.
4. Write one-sentence definitions for AI, ML, and DS in your worksheet.
5. Give one example of each that is **not** the Netflix case.

## Done when

* Worksheet completed with nested relationship (AI ⊃ ML; DS overlaps ML).
* At least one original example per term.

---

# Lab 2 — Data science cycle

## Objective

Map the CRISP-DM / data science lifecycle phases to a business problem your table chooses.

**Time:** ~30 min

## Tasks

1. Open `notebooks/lab02_data_science_cycle.ipynb`.
2. Pick a business question (e.g. "Which store region had highest Q2 sales?").
3. Fill in all six CRISP-DM phases with activity and deliverable.
4. Identify phases that apply without ML.

## Done when

* All **six** phases named in order.
* Each phase has an activity and deliverable.

---

# Lab 3 — Statistics basics

## Objective

Deep descriptive statistics on Q2 team sales — Excel **and** pandas, with regional and outlier analysis.

**Time:** ~90 min

## Tasks

1. Open `notebooks/lab03_statistics_basics.ipynb`.
2. Mirror Excel formulas (`AVERAGE`, `MEDIAN`, `STDEV.S`, `AVERAGEIF`) in pandas.
3. Measure TS029 outlier impact; apply IQR rule; plot distributions.
4. Aggregate by region; rank teams by % growth.

## Numbers to compare

```text
mean q2_sales: 1002.76 | median: 705.0 | std: 954.19
top outlier: TS029 (5308)
```

## Done when

* Mean ≈ **1002.76** and median ≈ **705.0**.
* Regional table sums to **100** teams.
* You can explain mean vs median with TS029 example.

---

# Lab 4 — Hypothesis & sampling

## Objective

Population vs sample, growth hypothesis, regional proportions, and sampling variation.

**Time:** ~100 min

## Tasks

1. Open `notebooks/lab04_hypothesis_sampling.ipynb`.
2. State H₀ / H₁ for team growth; compute population and sample means.
3. Build sampling distribution (20+ draws); optional Excel `RAND` replication.
4. Compare growth rates across all four regions.

## Done when

* Population mean ≈ **1002.76**; sample(n=10, rs=42) mean ≈ **810.4**.
* Growth rate = **0.58**; West team-level growth ≈ **0.49**.

---

# Lab 5 — Tool landscape

## Objective

Classify course tools; map to CRISP-DM and Days 2–6; complete org worksheet.

**Time:** ~75 min

## Tasks

1. Open `notebooks/lab05_tool_landscape.ipynb`.
2. Complete tool matrix, scavenger hunt, and org stack worksheet.
3. Contrast MLflow vs DVC; map tools to CRISP-DM phases.

## Done when

* ≥**3** categories with ≥**2** tools each.
* MLflow and DVC in MLOps bucket.

---

# Lab 6 — Excel group activity

## Objective

Group Excel pivot analysis of regional sales; verify in pandas; present totals vs % growth.

**Time:** ~110 min

## Tasks

1. In **Excel**: pivot `team_sales.csv` by region; chart Q2 totals.
2. Open `notebooks/lab06_excel_group_activity.ipynb` to **verify** your Excel answers.
3. Prepare one slide: West wins total Q2, but which major region wins **% growth**? (Central)

## Done when

* Regional totals match notebook verification.
* **58** growth teams; top region **West** (by Q2 total).
* Group presents one chart and the growth-rate insight.

---
