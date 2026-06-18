# Cisco AI & Machine Learning Training — Course TOC

**June 2026 · 6 days · 12 people · Product support, testing, and engineering**

This course prepares a support organization for **automation** using **Python, data exploration, Gen AI, RAG, MCP, and agentic workflows**. Difficulty is **beginner to medium**. We do **not** teach Excel-heavy workshops, confusion matrices, precision/recall/F1, or production MLOps / fine-tuning pipelines.

Hands-on data for Cisco-style scenarios lives in `GH/data/support-ops/` (tickets, networking, security, router logs). Class labs and demos use these files to **showcase real support use cases**.

---

## What we trimmed (not in this course)

- Excel group exercises and pivot-heavy statistics workshops  
- Confusion matrix, precision, recall, F1, ROC/AUC as taught topics  
- Deep classical ML: logistic regression theory, SHAP, KNN tuning, DBSCAN/Spectral/OPTICS  
- MLflow, DVC, FeatureTools, FastAPI-as-MLOps, heavy SLM fine-tuning labs  

We keep **light** classical AI ideas (trends, counts, simple outliers, optional grouping) only where they support log and ticket stories.

---

## Expectations checklist (client)

**TOC flavor**

- Gen AI — Days 1, 3–6 (landscape, prompts, demos, agents)  
- Prompt engineering — Day 3–4 (core), reinforced Day 5–6  
- Hugging Face — use **existing** pretrained models for inference (Day 4)  
- No MLOps, no production fine-tuning labs (concept-only note on SLM adaptation, ~15 minutes on Day 4)  

**Use cases — AI & Gen AI**

- AI use cases (tabular trends, outliers, grouping) — Days 2, 5–6  
- Gen AI use cases (summarize, extract, draft, Q&A) — Days 3–6  
- LLM, SLM, locally hosted SLMs — Day 4  
- RAG — Day 5  
- MCP — Day 5  
- Agentic AI — Day 5 (case studies), Day 6 (capstone)  

**Use cases — logs & tickets**

- Networking logs — Days 2, 5–6 (`network_events.csv`)  
- Security logs — Days 2, 6 (`security_logs.csv`)  
- Router logs — Days 2, 5 (`router_logs.csv`)  
- Switches, servers, VMs — Day 2 (`network_events.csv` by `device_type`)  
- Trend analysis — Days 2, 6  
- Ticket analysis — Days 2–3, 6 (`support_tickets.csv`)  
- Trend of bugs reported — Days 2, 6 (ticket volume over time)  
- Which feature is reported most — Days 3, 6 (`feature` / text + Gen AI)  

---

## Six-day map

**Day 1 — AI, Gen AI & the support automation story**  
Why automate; AI vs Gen AI; use-case tour across logs and tickets.

**Day 2 — Python, logs & tickets: explore and trend**  
Load support-ops datasets; charts; networking, router, security, and ticket trends.

**Day 3 — Ticket analysis & Gen AI on text**  
Top features, bug themes, prompt-based extraction; light AI without classification metrics.

**Day 4 — Prompt engineering, Hugging Face & local SLMs**  
Summarize logs and tickets; compare LLM vs SLM; local hosting demo.

**Day 5 — RAG, MCP & agentic AI case studies**  
Knowledge-backed answers; tool-connected agents; four support scenarios.

**Day 6 — Security signals, trends & automation capstone**  
Rare events, multi-log story, bug trend report, agentic demo and presentation.

---

# Day 1 — AI, Gen AI & Support Automation Context

**Outcomes:** Explain AI vs ML vs data science vs Gen AI; name support automation goals; map client log/ticket scenarios to the week.

### Topics

**Business context**

- Support, testing, and engineering roles in a product organization  
- Transformation toward automation; what “expected outcome” means for the team  
- Analytics dashboards vs predictive helpers vs Gen AI assistants  

**AI and Gen AI landscape (TOC: Gen AI flavor)**

- Definitions: AI, machine learning, data science, **generative AI**  
- **AI use cases** in support: trends, anomaly hints, grouping similar issues  
- **Gen AI use cases**: summarize incidents, draft updates, extract fields, Q&A over docs  
- LLM vs SLM; cloud vs **locally hosted** small models (preview for Day 4)  

**Way of working (light)**

- Simplified data science cycle: question → data → prepare → assist → evaluate  
- Tool map: Python, Jupyter, Hugging Face, MCP — not MLflow/DVC  

**Data literacy without Excel**

- Mean, median, counts, percent change — shown once in Python on sample ticket counts  
- Why support data is mostly logs + tickets + time series  

### Labs (6)

1. AI vs ML vs Gen AI worksheet — support examples  
2. Map a TAC scenario to the data cycle  
3. Count tickets by product (intro notebook on `support_tickets.csv`)  
4. Discuss: networking vs security vs router log types  
5. Tool landscape for automation (no MLOps tools)  
6. Group discussion: pick one automation idea per table  

### Showcase data

- Preview `support_tickets.csv`, `network_events.csv` — first 10 rows only  

---

# Day 2 — Python, Logs & Tickets: Explore and Trend

**Outcomes:** Load all support-ops CSVs; filter and aggregate; plot trends for bugs, devices, and errors.

### Topics

**Python & pandas (medium-easy)**

- Lists, dicts, functions; Jupyter workflow  
- `read_csv`, `shape`, `dtypes`, `head`, `describe`  
- Filter by date, device, severity; `groupby` and `value_counts`  

**Visualization**

- Line chart: tickets per week (**bug trend**)  
- Bar chart: events by `device_type` — **switch, server, VM, router**  
- Heatmap or bar: top `error_code` on **router logs**  

**Trend analysis (client use case)**

- Up/down/stable signals on ticket volume  
- Error rate trends on **networking logs**  
- Compare regions or sites on **router logs**  

**AI use case (light)**

- “What question would you ask this table?” — bridge to Gen AI on Day 3  

### Labs (6)

1. Python structures warm-up  
2. Load `support_tickets.csv` — explore columns  
3. Load `network_events.csv` — **switches, servers, VMs, routers**  
4. Load `security_logs.csv` and `router_logs.csv`  
5. **Trend analysis lab** — tickets per week; plot bug report trend  
6. **Networking + router lab** — top error codes; events by device type  

### Showcase data

- `GH/data/support-ops/support_tickets.csv`  
- `GH/data/support-ops/network_events.csv`  
- `GH/data/support-ops/security_logs.csv`  
- `GH/data/support-ops/router_logs.csv`  

---

# Day 3 — Ticket Analysis & Gen AI on Text

**Outcomes:** Find which **feature** and **product** drive tickets; use **prompt engineering** to read ticket text; no confusion-matrix metrics.

### Topics

**Ticket analysis (client use case)**

- **Which main feature is getting reported** — `value_counts` on `feature`  
- Trend of bugs by `product` over time  
- Join ticket metadata with text field `summary`  

**Prompt engineering (TOC flavor — start)**

- System / user roles; clear instructions  
- Few-shot: extract `{product, feature, severity}` from ticket text  
- Guardrails: only use provided ticket; no invented root cause  

**Gen AI on tickets**

- Summarize a long thread into three bullets for a shift handoff  
- Draft customer-safe status update  
- Compare manual tagging vs model-assisted tagging (qualitative review, not F1)  

**Light classical AI (optional stretch)**

- Simple similarity or keyword bucket — concept only; no precision/recall lecture  

### Labs (6)

1. **Feature analysis** — top 10 features in `support_tickets.csv`  
2. **Bug trend by product** — line chart  
3. Prompt lab — extract fields from 5 sample tickets  
4. Hugging Face preview — text classification or summarization on one ticket batch  
5. Side-by-side: bad prompt vs good prompt on same ticket  
6. Short write-up: which feature would you prioritize for engineering?  

### Showcase data

- `support_tickets.csv` — primary  
- Exported chart: top features bar chart  

---

# Day 4 — Prompt Engineering, Hugging Face & Local SLMs

**Outcomes:** Run **existing** models from Hugging Face; host a **local SLM** demo; summarize **log snippets** and tickets. **No MLOps; no fine-tuning lab.**

### Topics

**Prompt engineering (TOC — core)**

- Iteration, constraints, tone, length  
- Log summarization prompts for **networking** and **router** messages  
- Security log redaction in prompts (no secrets in output)  

**Hugging Face (TOC)**

- Model Hub; pick summarization / NER / classification pipeline  
- Inference in notebook — **not training from scratch**  
- Token limits and batching on laptop  

**LLM vs SLM vs local hosted SLMs (TOC)**

- When to use cloud LLM vs on-prem SLM  
- Demo: same router log summary on HF pipeline + **local SLM** (e.g. Ollama)  
- Latency, privacy, cost discussion  

**SLM fine-tuning — awareness only**

- 15-minute discussion: adapting vocabulary to product names  
- **Explicitly out of scope:** training jobs, LoRA pipelines, MLflow, DVC  
- Prefer RAG + prompts before any fine-tune decision  

**Gen AI use cases on logs**

- Summarize 50 lines of syslog → executive sentence  
- Turn bullet findings into TAC comment  

### Labs (6)

1. Prompt patterns cheat sheet exercise  
2. HF pipeline — summarize `router_logs` messages  
3. HF pipeline — classify `security_logs` severity text  
4. Local SLM demo — summarize one incident  
5. Compare LLM vs SLM output quality on same input  
6. Draft TAC update from networking log sample  

### Showcase data

- `router_logs.csv`, `security_logs.csv`, `network_events.csv`  

---

# Day 5 — RAG, MCP & Agentic AI Case Studies

**Outcomes:** Build a simple **RAG** flow; explain **MCP**; walk through **four agentic case studies** for support automation.

### Topics

**RAG (TOC)**

- Chunk runbooks and resolved tickets; embed and retrieve  
- Ask: “How do I clear error E-404 on router X?” with citations  
- Reduce hallucination with “answer only from context”  

**MCP (TOC)**

- Model Context Protocol — LLM calls tools  
- Example tools: `get_ticket`, `get_log_summary`, `search_kb`  
- Security: auth, read-only tools, audit log  

**Agentic AI**

- Plan → tool call → observe → answer  
- Human approval before customer-facing text  
- **Not building** a production agent framework — scripted demos OK  

### Agentic AI case studies (expanded)

**Case study A — Ticket triage agent**  
New ticket arrives → agent reads summary → suggests product/feature → searches KB via RAG → drafts internal note. MCP tools: ticket API mock, KB search.

**Case study B — Router error spike agent**  
Trend job flags rising `error_code` on **router logs** → agent pulls last 24h **networking logs** → summarizes likely blast radius → opens draft ticket. Tools: log aggregate, ticket create mock.

**Case study C — Security + infrastructure correlation**  
**Security log** alert fires → agent fetches related **server/VM** events from `network_events.csv` → summarizes timeline for SOC handoff. Tools: security query, device filter.

**Case study D — Bug trend analyst agent**  
Weekly job: agent computes **bug trend** from `support_tickets.csv`, identifies **top feature**, generates manager summary with chart path. Tools: pandas summary, file write, optional email draft.

**Light grouping (optional)**

- K-Means or simple clustering on ticket embeddings — “similar issues” wall; no cluster metrics lecture  

### Labs (6)

1. RAG concepts — chunk and retrieve on `kb_snippets.txt`  
2. Build minimal RAG Q&A over runbook text  
3. RAG over past resolved ticket summaries  
4. MCP demo — mock tool returns ticket JSON  
5. **Agentic case study** — run Case A or B end-to-end (scripted notebook)  
6. **Agentic case study** — run Case C or D end-to-end  

### Showcase data

- `support-ops/kb_snippets.txt` (runbook excerpts)  
- All CSVs from Day 2 as agent tool inputs  

---

# Day 6 — Security Signals, Trends & Automation Capstone

**Outcomes:** Spot rare **security** events; deliver **bug trend + top feature** report; present an **agentic automation** story using logs and tickets.

### Topics

**Security logs (client use case)**

- Explore `security_logs.csv` — rare alerts vs noise  
- Simple outlier or threshold view — no imbalanced-metrics lecture  
- Narrative: when to escalate to SOC  

**Multi-source log story**

- **Switches, servers, VMs, routers** in one timeline from `network_events.csv`  
- **Networking logs** volume vs **router** error spikes  

**Ticket analysis capstone (client use case)**

- **Trend of bugs getting reported** — final chart with narrative  
- **Which main feature** — table + Gen AI paragraph for leadership  
- Optional: week-over-week percent change  

**Automation capstone**

- End-to-end story: ingest → trend → RAG → agent assist (Cases A–D reference)  
- What we did **not** build: MLOps platform, fine-tuned model farm  
- Next steps for Tech Lead: pilot checklist  

### Labs (6)

1. Security log exploration — top alert types  
2. Rare event spotlight — filter high-severity rows  
3. Multi-device timeline — switch/server/VM/router in one chart  
4. **Bug trend report** — tickets per week + commentary  
5. **Top feature report** — counts + HF/local SLM summary paragraph  
6. **Capstone presentation** — 3 slides: insight, demo screenshot, automation proposal  

### Showcase deliverables

- `bug_trend.png`, `top_features.png` (saved under lab `output/`)  
- One-page automation summary (markdown or JSON in notebook)  

---

## Datasets (`GH/data/support-ops/`)

**support_tickets.csv** — ticket_id, dates, product, feature, severity, summary, status (bug trend + feature analysis)

**network_events.csv** — timestamp, device_type (router, switch, server, vm), device_id, site, event_type, bytes, latency_ms (networking + infrastructure)

**router_logs.csv** — timestamp, router_id, site, message, error_code, severity (router logs)

**security_logs.csv** — timestamp, source, event_type, severity, is_alert (security logs)

**kb_snippets.txt** — short runbook excerpts for RAG labs

Instructor maps legacy class datasets (Zomato, Lending Club, etc.) to these support-ops files as the course is retargeted.

---

## Lab count and delivery

- **6 labs per day · 36 total**  
- ~35% instructor narrative and case studies · ~65% hands-on  
- Agentic content weighted on **Days 5–6** with four named case studies on Day 5  

---

## Client expectations — final sign-off

- **Gen AI in TOC** — Yes; Days 1, 3–6  
- **Prompt engineering** — Yes; Days 3–4, reinforced 5–6  
- **Hugging Face existing LLMs** — Yes; Day 4  
- **No MLOps / no fine-tuning labs** — Yes; concept-only SLM note on Day 4  
- **Gen AI use cases** — Yes; throughout  
- **AI use cases** — Yes; trends, outliers, grouping  
- **MCP** — Yes; Day 5  
- **LLM, SLM, local SLMs** — Yes; Day 4  
- **RAG** — Yes; Day 5  
- **Agentic AI** — Yes; Day 5 case studies + Day 6 capstone  
- **Networking / security / router logs** — Yes; Days 2, 4–6  
- **Switches, servers, VMs** — Yes; `network_events.csv` from Day 2 onward  
- **Trend analysis** — Yes; Days 2, 6  
- **Bug trend from tickets** — Yes; Days 2, 3, 6  
- **Top feature from tickets** — Yes; Days 3, 6  
- **No Excel / no confusion matrix / F1 / precision / recall** — Yes; removed  

---

*Companion files: `course-content.txt` (summary), `client-call-prep.md` (facilitator Q&A). Implementation data under `GH/data/support-ops/`.*
