# Support operations datasets (Cisco use cases)

Synthetic data for **log and ticket** labs aligned to `course-toc-detailed.md`. Use these files to showcase networking, security, router, infrastructure, and ticket analysis scenarios.

## Files

**support_tickets.csv** (800 rows)  
Ticket id, date, product, feature, severity, summary, status. Use for **bug trend over time** and **which feature is reported most**.

**network_events.csv** (1000 rows)  
Timestamp, device_type (`router`, `switch`, `server`, `vm`), device_id, site, event_type, bytes, latency_ms. Use for **networking logs** and **switches / servers / VMs**.

**router_logs.csv** (500 rows)  
Timestamp, router_id, site, message, error_code, severity. Use for **router log** analysis and error-code trends.

**security_logs.csv** (600 rows)  
Timestamp, source IP, event_type, severity, is_alert. Use for **security log** exploration and rare-alert demos.

**kb_snippets.txt**  
Short runbook excerpts for **RAG** labs on Day 5.

## Example loads

```python
import pandas as pd
from pathlib import Path

ROOT = Path("data/support-ops")
tickets = pd.read_csv(ROOT / "support_tickets.csv")
network = pd.read_csv(ROOT / "network_events.csv")
```

Parse `created_date` or `timestamp` with `pd.to_datetime` before trend charts.

## Legacy class datasets

Older labs may still reference `team-sales/`, `zomato/`, `lending-club/`, `nyse/`, `credit-card/` until notebooks are retargeted to support-ops files.
