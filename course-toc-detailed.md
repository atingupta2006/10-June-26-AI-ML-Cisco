# Cisco AI & Machine Learning Training — Course TOC

**June 2026 · 6 days · Product support, testing, and engineering**

This course prepares a support organization for **automation** using **Python, data exploration, Gen AI, RAG, MCP, and agentic workflows**. Difficulty is **beginner to medium**.

Hands-on data lives in `data/support-ops/` (tickets, networking, security, router logs, runbook snippets).

---

## Course at a glance

**Gen AI & models** — Days 1, 3–6 (landscape, prompts, Hugging Face, local SLMs, agents)

**Prompt engineering** — Days 3–4 (core), reinforced Days 5–6

**Hugging Face** — pretrained model inference on Day 4

**RAG & MCP** — Day 5

**Agentic AI** — Day 5 case studies; Day 6 capstone

**Logs & tickets**

- Networking logs — Days 2, 5–6 (`network_events.csv`)
- Security logs — Days 2, 6 (`security_logs.csv`)
- Router logs — Days 2, 5 (`router_logs.csv`)
- Switches, servers, VMs — Day 2 (`network_events.csv` by `device_type`)
- Trend analysis — Days 2, 6
- Ticket analysis — Days 2–3, 6 (`support_tickets.csv`)
- Bug trend — Days 2, 6
- Top reported feature — Days 3, 6

---

## Six-day map

**Day 1 — AI, Gen AI & the support automation story**  
Why automate; AI vs Gen AI; use-case tour across logs and tickets.

**Day 2 — Python, logs & tickets: explore and trend**  
Load support-ops datasets; charts; networking, router, security, and ticket trends.

**Day 3 — Ticket analysis & Gen AI on text**  
Top features, bug themes, prompt-based extraction and summarization.

**Day 4 — Prompt engineering, Hugging Face & local SLMs**  
Summarize logs and tickets; compare LLM vs SLM; local hosting demo.

**Day 5 — RAG, MCP & agentic AI case studies**  
Knowledge-backed answers; tool-connected agents; four support scenarios.

**Day 6 — Security signals, trends & automation capstone**  
Rare events, multi-log story, bug trend report, agentic demo and presentation.

---

# Day 1 — AI, Gen AI & Support Automation Context

**Outcomes:** Explain AI vs ML vs data science vs Gen AI; name support automation goals; map log and ticket scenarios to the week.

### Topics

**Business context** — support roles, automation goals, dashboards vs Gen AI assistants

**AI and Gen AI landscape** — definitions, support use cases, LLM vs SLM

**Way of working** — data cycle; Python, Jupyter, Hugging Face, MCP

**Data literacy** — counts and trends on ticket samples

### Labs (6)

1. AI vs ML vs Gen AI worksheet  
2. Map a TAC scenario to the data cycle  
3. Count tickets by product  
4. Log types overview  
5. Tool landscape for automation  
6. Automation ideas discussion  

---

# Day 2 — Python, Logs & Tickets: Explore and Trend

**Outcomes:** Load support-ops CSVs; filter and aggregate; plot trends.

### Labs (6)

1. Python structures  
2. Load tickets  
3. Network devices  
4. Security and router logs  
5. Bug trend  
6. Router errors  

---

# Day 3 — Ticket Analysis & Gen AI on Text

**Outcomes:** Top features and products; prompt engineering; HF summarization.

### Labs (6)

1. Top features  
2. Bug trend by product  
3. Prompt extract fields  
4. HF summarize ticket  
5. Prompt compare  
6. Feature priority  

---

# Day 4 — Prompt Engineering, Hugging Face & Local SLMs

**Outcomes:** HF inference; local SLM demo; summarize logs and tickets.

### Labs (6)

1. Prompt patterns  
2. HF router summary  
3. HF security classify  
4. Local SLM demo  
5. Compare summaries  
6. Draft TAC update  

---

# Day 5 — RAG, MCP & Agentic AI Case Studies

**Outcomes:** RAG over KB and tickets; MCP mock tools; four agentic cases.

### Labs (6)

1. RAG chunk KB  
2. RAG Q&A  
3. RAG ticket history  
4. MCP mock tools  
5. Agent triage (Case A/B)  
6. Agent error spike (Case C/D)  

---

# Day 6 — Security Signals, Trends & Automation Capstone

**Outcomes:** Security exploration; bug trend and top feature reports; capstone.

### Labs (6)

1. Security explore  
2. Rare alerts  
3. Multi-device timeline  
4. Bug trend report  
5. Top feature report  
6. Capstone  

---

## Datasets (`data/support-ops/`)

**support_tickets.csv** · **network_events.csv** · **router_logs.csv** · **security_logs.csv** · **kb_snippets.txt**

Six labs per day · 36 total.
