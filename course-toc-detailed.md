# Cisco AI & Machine Learning Training — Detailed Course Content

**June 2026 · Six days · Product support, testing, and engineering**

Beginner-to-medium course for support teams working with log and ticket data, Python, Gen AI, RAG, MCP patterns, and agentic automation stories. All hands-on work uses classroom datasets under `data/support-ops/`: tickets, network events, router logs, security logs, and runbook snippets.

---

# Day 1 — AI, Gen AI & Support Automation Context

## Purpose

Set the business and technical frame for the week. Participants learn how AI, machine learning, data science, and generative AI differ, where each helps a support organization, and how the class datasets represent real TAC-style work with tickets and logs.

## Topics

### Business context

- Roles of product support, testing, and engineering in a product company  
- Why teams move toward automation for repetitive ticket and log work  
- Difference between dashboards that report history and assistants that summarize, extract, or draft  
- What a sensible automation outcome looks like after training (explore data, spot trends, assist engineers with Gen AI, not replace judgment)

### AI and Gen AI landscape

- **Artificial intelligence** — broad field; in support often means rules, search, or learned patterns on structured data  
- **Machine learning** — learning patterns from examples; in this course used lightly for trends, counts, and similarity ideas  
- **Data science** — asking questions of data, preparing tables, visualizing, communicating findings  
- **Generative AI** — models that produce text; summarize incidents, draft customer updates, extract fields from tickets, answer questions over internal documents  
- **AI use cases in support** — volume trends, error spikes, grouping similar issues, flagging unusual alert rates  
- **Gen AI use cases in support** — shift handoff summaries, TAC comment drafts, runbook Q&A, field extraction from free text  
- **LLM vs SLM** — large cloud models vs small locally hosted models; preview of Day 4 (latency, privacy, cost)

### Way of working

- Simplified data cycle: business question → gather data → prepare tables → apply analysis or Gen AI assist → review output with a human  
- Tools introduced this week: Python, Jupyter, pandas, charts, Hugging Face for pretrained inference, retrieval (RAG), and tool-style functions that agents would call  
- Human approval before anything customer-facing

### Data literacy in Python

- Counts, simple averages, percent change on ticket samples  
- Why support work is mostly logs plus tickets plus time  
- First look at `support_tickets.csv` and `network_events.csv`

## Labs (six)

**Lab 1 — AI, ML & Gen AI**  
Worksheet with support examples: label each scenario as AI-style analytics, ML-style pattern, or Gen AI-style language task.

**Lab 2 — TAC data cycle**  
Map a VPN tunnel drop scenario through question, data sources, preparation, assist step, and evaluation.

**Lab 3 — Ticket counts**  
Load `support_tickets.csv`, confirm row count, run `value_counts` on product.

**Lab 4 — Log types overview**  
Preview rows from tickets, network events, router logs, and security logs; note which columns matter for trends vs text.

**Lab 5 — Tool landscape**  
Map explore, Gen AI, knowledge (RAG), and integrate phases to tools used this week.

**Lab 6 — Automation ideas**  
Each group proposes one automation idea and where a human must approve before customer impact.

---

# Day 2 — Python, Logs & Tickets: Explore and Trend

## Purpose

Build confidence loading and exploring all support-ops files in pandas. Participants produce the trend charts that anchor bug analysis, device mix, and router error patterns for the rest of the course.

## Topics

### Python and Jupyter

- Lists, dictionaries, functions; running cells in order  
- Finding the repo data path from a notebook under `hands-on/.../notebooks/`

### pandas fundamentals

- `read_csv`, `shape`, `dtypes`, `head`, `describe`  
- Parsing `created_date` and `timestamp` for time-based analysis  
- Filtering by severity, device, site, product  
- `groupby`, `value_counts`, simple aggregates

### Visualization

- Line chart: tickets created per week (**bug trend over time**)  
- Bar chart: `network_events` by **device_type** — switch, server, VM, router  
- Bar chart: top **error_code** values in **router logs**

### Trend analysis

- Reading upward, downward, or flat ticket volume  
- Comparing error code frequency across the router log sample  
- Relating device-type event counts to infrastructure narrative (which tier sees most events)

### Bridge to Gen AI

- “What question would you ask this table?” — prepares ticket text work on Day 3

## Labs (six)

**Lab 1 — Python structures**  
Warm-up with site lists, severity maps, and a sample ticket dictionary.

**Lab 2 — Load tickets**  
Load `support_tickets.csv`, inspect columns, parse dates.

**Lab 3 — Network devices**  
Load `network_events.csv`, chart events by `device_type` (switches, servers, VMs, routers).

**Lab 4 — Security and router logs**  
Load `security_logs.csv` and `router_logs.csv`; count alerts and top error codes.

**Lab 5 — Bug trend**  
Resample or group tickets by week; plot bug report trend; save chart.

**Lab 6 — Router errors**  
Bar chart of top router `error_code` values; short interpretation in a print statement.

---

# Day 3 — Ticket Analysis & Gen AI on Text

## Purpose

Answer operational questions from ticket data—especially **which feature is reported most** and how bugs trend by product—then learn **prompt engineering** on real ticket text and see **Hugging Face summarization** on a sample ticket.

## Topics

### Ticket analysis

- **Top reported feature** — `value_counts` on the `feature` column; bar chart of top 10  
- **Bug trend by product** — weekly or monthly counts per `product`  
- Using `summary` text alongside structured fields  
- Prioritization discussion: which feature engineering should investigate first

### Prompt engineering

- System vs user messages; clear instructions and output format  
- Few-shot pattern: extract `product`, `feature`, `severity` as JSON from ticket text  
- Guardrails: use only the ticket provided; do not invent root cause or internal component names  
- Bad vs good prompts: vagueness, missing format, missing tone constraints

### Gen AI on ticket text

- Summarize a long ticket into three bullets for shift handoff  
- Draft a polite customer-safe status update (template in lab; model assist on Day 4)  
- Qualitative comparison of manual tags vs model-assisted suggestions

### Hugging Face preview

- Run a small **summarization pipeline** on one ticket `summary` field  
- Discuss model download, token limits, and when summarization helps TAC

## Labs (six)

**Lab 1 — Top features**  
Top 10 features from `support_tickets.csv`; horizontal bar chart.

**Lab 2 — Bug trend by product**  
Multi-line or faceted trend of ticket volume by `product` over time.

**Lab 3 — Prompt extract fields**  
Write and print a prompt template that asks for JSON fields from a sample ticket.

**Lab 4 — HF summarize ticket**  
Summarize one ticket with a Hugging Face summarization pipeline.

**Lab 5 — Prompt compare**  
Same ticket text with a weak prompt vs a strong prompt; compare printed instructions.

**Lab 6 — Feature priority**  
Short write-up: top three features and why engineering should care.

---

# Day 4 — Prompt Engineering, Hugging Face & Local SLMs

## Purpose

Deepen prompt craft for **log and security text**, run **pretrained Hugging Face pipelines** on router and security samples, compare **manual vs model summaries**, and introduce **locally hosted small language models**. Short segment on when teams consider adapting an SLM (concept only).

## Topics

### Prompt engineering for logs

- Summarizing router syslog lines for a TAC note  
- Tone, length, and “no jargon” constraints for customer updates  
- Redacting or avoiding secrets in prompts built from security log fields

### Hugging Face

- Model Hub and ready-made `pipeline` tasks (summarization, classification)  
- Inference only — using existing weights, not training  
- Batching and token limits on a laptop  
- Summarize messages from `router_logs.csv`

### Security log text

- Classify or label security event descriptions on `security_logs.csv`

### LLM vs SLM and local hosting

- When a cloud LLM is appropriate vs an on-prem **small language model**  
- Demo: same incident summary via Hugging Face and via **Ollama** (or similar local runtime)  
- Tradeoffs: latency, data residency, cost, ops burden

### SLM adaptation (awareness)

- When product-specific vocabulary matters; RAG and prompts first; what fine-tuning means at a high level without a training lab

## Labs (six)

**Lab 1 — Prompt patterns**  
Document system prompt plus few-shot example for summarizing a router message.

**Lab 2 — HF router summary**  
Summarize one row from `router_logs.csv` with a Hugging Face summarization pipeline.

**Lab 3 — HF security events**  
Classify or label security event text from `security_logs.csv`.

**Lab 4 — Local SLM demo**  
Send a short prompt to a local model via HTTP (e.g. Ollama); summarize one incident sentence.

**Lab 5 — Compare summaries**  
Same router message: manual one-liner vs pipeline output side by side.

**Lab 6 — Draft TAC update**  
Prompt template that turns bullet findings into a three-sentence customer status update.

---

# Day 5 — RAG, MCP & Agentic AI Case Studies

## Purpose

Build **retrieval-augmented generation** over runbooks and resolved tickets, implement **tool-style functions** that stand in for MCP-connected systems, and walk through **four agentic automation stories** for support.

## Topics

### RAG

- Split `kb_snippets.txt` into chunks with headings  
- Represent chunks and queries; cosine similarity to retrieve the best chunk  
- Retrieve similar **resolved ticket summaries** for historical match  
- Answer only from retrieved context; cite the chunk

### MCP (Model Context Protocol)

- An LLM calls registered tools instead of guessing facts  
- Example tools: `get_ticket(ticket_id)`, `log_summary_last_24h()`, `search_kb(query)`  
- In notebooks: Python functions returning JSON or text  
- Read-only tools, authentication and audit in real deployments

### Agentic AI

- Plan → call tool → read result → draft response  
- Human in the loop for customer-facing text  
- Scripted agent functions that combine pandas results with a narrative template

### Case study A — Ticket triage

New ticket → product, feature, severity → org-wide context → draft internal triage note.

### Case study B — Router error spike

Dominant **error_code** in router logs → escalation recommendation → attach sample messages.

### Case study C — Security and infrastructure correlation

Security alert → related **server** and **VM** events from `network_events.csv` → SOC handoff timeline (discussion; Day 6 lab 3 reinforces).

### Case study D — Bug trend analyst

Weekly ticket trend and top **feature** → manager summary (Day 6 labs 4–5).

## Labs (six)

**Lab 1 — RAG chunk KB**  
Split `kb_snippets.txt`; count chunks; display one chunk.

**Lab 2 — RAG Q&A**  
Retrieve best runbook chunk for a VPN-related question.

**Lab 3 — RAG ticket history**  
Find the closest resolved ticket summary to a query such as BGP peering instability.

**Lab 4 — MCP-style mock tools**  
Implement and call `get_ticket` and `log_summary_last_24h`.

**Lab 5 — Agent case A: ticket triage**  
Triage function for a sample ticket id; print draft internal note.

**Lab 6 — Agent case B: router error spike**  
Spike function; print recommended actions from router log aggregates.

---

# Day 6 — Security Signals, Trends & Automation Capstone

## Purpose

Close the week with **security log exploration**, a **multi-device timeline**, **bug trend** and **top feature** reports, and a **capstone** automation story.

## Topics

### Security logs

- Explore `security_logs.csv`: event types, severity, alerts  
- Rare or high-severity rows; escalation to SOC

### Multi-source log story

- Timeline of switch, server, VM, and router events from `network_events.csv`  
- Networking volume vs router error patterns

### Ticket analysis reports

- **Bug trend report** — weekly counts, chart, commentary  
- **Top feature report** — counts table and leadership paragraph

### Automation capstone

- Load logs and tickets → trend → RAG → tool lookup → pilot proposal  
- Case study C: security plus infrastructure narrative  
- Case study D: trend chart and top-feature summary  
- Pilot checklist: data access, approval workflow, first use case

## Labs (six)

**Lab 1 — Security explore**  
Event type counts; alert rate; severity breakdown.

**Lab 2 — Rare alerts**  
Filter and display high-severity or alert rows.

**Lab 3 — Multi-device timeline**  
Chart events over time by `device_type`.

**Lab 4 — Bug trend report**  
Weekly ticket trend chart; narrative printout.

**Lab 5 — Top feature report**  
Top features table; summary for leadership.

**Lab 6 — Capstone**  
Presentation: data insight, RAG or agent output, automation proposal with approval points.

---

# Datasets

**support_tickets.csv** — tickets, bug trends, top features, text for prompts and RAG.

**network_events.csv** — switches, servers, VMs, routers; networking trends.

**router_logs.csv** — router messages and error codes.

**security_logs.csv** — security events and alerts.

**kb_snippets.txt** — runbook excerpts for RAG on Day 5.

Six labs per day, thirty-six total. Kernel: **Python (cisco-aiml-lab)**.
