# Cisco AI & Machine Learning Training — Course TOC

**June 2026 · 6 days · Product support, testing, and engineering**

Six-day, **beginner-to-medium** training for support teams automating work with **Python, log and ticket data, prompts, RAG, and automation patterns**. Class data: `data/support-ops/`.

---

## Course at a glance

| Area | Days | Classroom approach |
|------|------|-------------------|
| AI / Gen AI landscape | 1, 3–6 | Discussion + hands-on |
| Python, logs, tickets, trends | 1–3, 6 | **Hands-on** (all students) |
| Prompt engineering | 3–4, 6 | **Hands-on** (templates; no API key) |
| Hugging Face inference | 3–4 | **Instructor demo**; optional student retry |
| Local SLMs (e.g. Ollama) | 4 | **Instructor demo**; optional student try |
| RAG | 5 | **Hands-on** (chunk + retrieve) |
| MCP-style tools | 5 | **Hands-on** mock tools; MCP protocol in discussion |
| Agentic workflows | 5–6 | Simulated cases A & B in labs; C & D via demo + Day 6 reports |
| SLM fine-tuning | 4 | **Discussion only** (~15 minutes) |

**Logs and tickets:** networking, router, and security logs (Days 2, 4–6); switches, servers, VMs (Day 2); bug trend and top feature (Days 2–3, 6).

---

## How activities are delivered

**Hands-on** — Every student runs the notebook.

**Instructor demo** — Facilitator runs once; student retry optional.

**Discussion** — Facilitator segment; no lab dependency.

**Simulated** — Notebook builds a realistic triage or spike *narrative* with pandas and templates, not a live LLM agent loop.

---

## Six-day map

| Day | Theme |
|-----|--------|
| **1** | AI, Gen AI, support automation context |
| **2** | Python, logs, tickets — explore and trend |
| **3** | Ticket analysis and prompt engineering |
| **4** | Prompt patterns, Hugging Face, local SLMs |
| **5** | RAG, tool patterns, agentic case studies |
| **6** | Security signals, trend reports, capstone |

36 labs · 6 per day · ~65% hands-on

---

# Day 1 — AI, Gen AI & Support Automation Context

**Outcomes:** AI vs ML vs Gen AI; automation goals; preview tickets and logs.

| # | Lab | Delivery |
|---|-----|----------|
| 1 | AI vs ML vs Gen AI worksheet | Hands-on |
| 2 | TAC data cycle | Hands-on |
| 3 | Ticket counts by product | Hands-on |
| 4 | Log types overview | Hands-on |
| 5 | Tool landscape | Hands-on |
| 6 | Automation ideas | Discussion |

---

# Day 2 — Python, Logs & Tickets: Explore and Trend

**Outcomes:** Load CSVs; charts for bugs, devices, and router errors.

| # | Lab | Delivery |
|---|-----|----------|
| 1 | Python structures | Hands-on |
| 2 | Load tickets | Hands-on |
| 3 | Network devices | Hands-on |
| 4 | Security and router logs | Hands-on |
| 5 | Bug trend | Hands-on |
| 6 | Router errors | Hands-on |

---

# Day 3 — Ticket Analysis & Gen AI on Text

**Outcomes:** Top features and products; prompt engineering; summarization in context.

| # | Lab | Delivery |
|---|-----|----------|
| 1 | Top features | Hands-on |
| 2 | Bug trend by product | Hands-on |
| 3 | Prompt extract fields | Hands-on |
| 4 | HF summarize ticket | Instructor demo |
| 5 | Prompt compare | Hands-on |
| 6 | Feature priority | Hands-on |

---

# Day 4 — Prompt Engineering, Hugging Face & Local SLMs

**Outcomes:** Pretrained model demo; LLM vs SLM discussion; TAC draft prompts.

SLM fine-tuning: **discussion only** on Day 4 (~15 min).

| # | Lab | Delivery |
|---|-----|----------|
| 1 | Prompt patterns | Hands-on |
| 2 | HF router summary | Instructor demo |
| 3 | HF security classify | Hands-on / demo fallback |
| 4 | Local SLM (Ollama) | Instructor demo |
| 5 | Compare summaries | Hands-on |
| 6 | Draft TAC update | Hands-on |

---

# Day 5 — RAG, MCP Patterns & Agentic Case Studies

**Outcomes:** RAG over KB and tickets; mock tools; four automation stories.

| Case | Story | In class |
|------|--------|----------|
| **A** | Ticket triage | Lab 5 — simulated |
| **B** | Router error spike | Lab 6 — simulated |
| **C** | Security + server/VM correlation | Instructor walkthrough |
| **D** | Bug trend + top feature summary | Day 6 labs 4–5 |

| # | Lab | Delivery |
|---|-----|----------|
| 1 | RAG chunk KB | Hands-on |
| 2 | RAG Q&A | Hands-on |
| 3 | RAG ticket history | Hands-on |
| 4 | MCP-style mock tools | Hands-on |
| 5 | Agent case A — triage | Simulated |
| 6 | Agent case B — error spike | Simulated |

---

# Day 6 — Security Signals, Trends & Capstone

**Outcomes:** Security exploration; bug trend and top-feature reports; capstone presentation.

| # | Lab | Delivery |
|---|-----|----------|
| 1 | Security explore | Hands-on |
| 2 | Rare alerts | Hands-on |
| 3 | Multi-device timeline | Hands-on |
| 4 | Bug trend report | Hands-on |
| 5 | Top feature report | Hands-on |
| 6 | Capstone | Hands-on |

---

## Datasets (`data/support-ops/`)

`support_tickets.csv` (800) · `network_events.csv` (1000) · `router_logs.csv` (500) · `security_logs.csv` (600) · `kb_snippets.txt`

Synthetic classroom data — not live ticketing or SIEM.

---

## Out of scope for student labs

SLM fine-tuning, real MCP servers, production agent frameworks, MLOps platforms, live API integrations — covered in discussion where relevant.
