# Team sales dataset (Day 1)

Retail-style quarterly sales for **100** city + product-line teams across four US regions.

## Files

| File | Purpose |
|------|---------|
| `team_sales.csv` | Lab data — Excel + Jupyter (Labs 3, 4, 6) |
| `lab_profile.json` | Locked checkpoint values for notebook assertions |

## Source

Derived from the public **Tableau Sample Superstore** dataset:

- **URL:** [Oyiwoche/Superstore-Analytics — Sample - Superstore.csv](https://github.com/Oyiwoche/Superstore-Analytics/blob/main/Sample%20-%20Superstore.csv)
- **Original:** [Tableau Community sample data](https://community.tableau.com/s/question/0D54T00000CWeX8SAL/sample-superstore-sales-dataexcl)
- **License:** Public sample dataset (Tableau Community)

## How it was built

1. Filter US orders from the Superstore file (~9,994 rows).
2. Define a **team** = `City` + `Sub-Category` (e.g. `New York City - Binders`).
3. Sum **Q1** (Jan–Mar) vs **Q2** (Apr–Jun) dollar sales, pooled across 2011–2014.
4. Keep the top **100** teams with at least $50 in both quarters.
5. Export `lab_profile.json` with mean, outlier, regional totals, and growth story checkpoints.

## Columns

| Column | Description |
|--------|-------------|
| `team` | Team ID (`TS001` …) |
| `team_name` | City + product sub-category |
| `region` | Central, East, South, or West |
| `state` | US state |
| `product_line` | Furniture, Office Supplies, or Technology |
| `sub_category` | Superstore sub-category |
| `segment` | Consumer, Corporate, or Home Office |
| `q1_sales`, `q2_sales` | Quarter dollar totals (rounded) |
| `q1_units`, `q2_units` | Units sold |

## Regenerate

From `GH/tools` with venv active:

```bash
aiml-tools generate --profile lab
```

Or only team sales:

```bash
python -c "from cisco_aiml_tools.generators.datasets import generate_team_sales; generate_team_sales()"
```

## Teaching story

- **West** has the highest **Q2 revenue total** (volume leader).
- **Central** has the strongest **% growth** among regions with 15+ teams.
- **TS029** (`New York City - Binders`) is the Q2 sales outlier — useful for mean vs median discussion.
