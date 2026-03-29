# Global Commodity Intelligence: Inflation & Market Dynamics Analysis

> End-to-end data analysis project simulating real-world economic and financial analytics workflows.

Global commodity price analysis using World Bank data (1960–2026), exploring long-term inflation trends, energy markets, and commodity volatility across 70+ commodities.

---

# Problem Statement

- How have global commodity prices evolved over the last six decades?
- Do commodity prices reflect long-term inflation trends?
- How do different commodity markets behave (oil, gas, metals, food)?
- Are price movements globally synchronized or region-specific?
- What impact do major economic events have on commodity prices?

---

# Dataset

| Detail | Info |
|--------|------|
| Source | World Bank – Commodity Price Data (Pink Sheet) |
| Period | 1960 – 2026 (Monthly) |
| Coverage | 70+ commodities |
| Categories | Energy, Metals, Agriculture |

---

# Tech Stack

| Tool | Purpose |
|------|---------|
| Python (Pandas) | Data cleaning & preprocessing |
| PostgreSQL | Data aggregation & statistical analysis |
| Power BI | Interactive dashboards & visualizations |

---

# Project Pipeline
Raw Data (xlsx)
↓
Python - Data Cleaning & Preprocessing
↓
PostgreSQL - Aggregations & Trend Analysis
↓
Power BI - Dashboard & Visualizations
↓
Insights & Conclusions


---

# Analytical Approach

- Time-series aggregation (monthly → yearly trends)
- Comparative analysis across regions and commodities
- Volatility measurement using statistical functions (STDDEV)
- Data cleaning using conditional null handling (NULLIF, CASE)

---

# Key Findings

### 🥇 Gold & Inflation
- Gold increased ~140x from 1960 to 2026, confirming strong inflation linkage
- Major spikes align with macroeconomic instability (1980, post-2020)
- Reinforces gold as a long-term hedge asset

# Oil Markets (Brent vs WTI vs Dubai)
- Strong co-movement indicates globally integrated oil markets
- Brent consistently trades at a structural premium
- Major shocks:
  - 2008 → financial crisis  
  - 2020 → demand collapse (COVID)  
  - 2022 → geopolitical disruption  

# Natural Gas — Market Fragmentation
- Unlike oil, gas markets are regionally segmented
- Europe experienced extreme price shocks (~40x spike in 2022)
- US remained relatively stable due to domestic production
- Japan LNG consistently priced higher due to import dependency

# Coffee Market Dynamics
- Arabica prices outpaced Robusta over time
- Increasing premium gap reflects quality-driven demand
- Indicates consumer shift toward higher-grade commodities

# Global Food Inflation
- Persistent upward trend across food commodities
- 2008 spike > COVID spike, indicating stronger systemic shock
- Food inflation shows higher volatility compared to metals

---

# Overall Insight

Commodity markets behave differently across categories:

- Energy → Globally integrated (price synchronization)  
- Gas → Regionally fragmented (supply constraints)  
- Metals → Inflation indicators (store of value)  
- Food → Socio-economic sensitivity (high volatility)  

This highlights how different asset classes respond uniquely to global economic forces.

---

# Key Skills Demonstrated

- Data Cleaning & Transformation (Python)
- SQL Aggregation & Analytical Queries
- Time-Series Analysis
- Data Visualization & Dashboarding (Power BI)
- Economic Interpretation of Data
- Data Storytelling

---
