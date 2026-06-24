# Business Problem Statement
## Toronto Restaurant Risk & Compliance Intelligence System

| Field | Details |
|---|---|
| **Project Name** | Toronto Restaurant Risk & Compliance Intelligence System |
| **Client** | City of Toronto — Public Health Division |
| **Analyst** | Sreekar Koduru, Data & Business Analyst |
| **Date** | June 2026 |
| **Data Source** | Toronto Open Data — DineSafe Program |
| **Version** | 1.1 |

---

## 1. Business Context & Objective
Toronto Public Health's DineSafe program inspects thousands of food 
establishments annually. With limited inspection resources and a growing 
number of establishments, the division needs a data-driven intelligence 
system to prioritise inspections, identify repeat offenders, and track 
compliance trends across Toronto's 25 wards.

This project delivers a complete analytics solution — from raw inspection 
data to an interactive Power BI dashboard — enabling Public Health managers 
to make faster, evidence-based decisions about where to focus inspection 
resources.

---

## 2. Business Problem
Toronto Public Health conducts food safety inspections across 
**15,000+ active food establishments** in the city. Inspectors currently 
rely on scheduled rotation rather than risk-based prioritisation.

This creates three critical gaps:

**Gap 1 — No Risk-Based Prioritisation**
Inspectors visit low-risk establishments on the same schedule as 
high-risk ones. Resources are not allocated based on historical 
violation patterns, repeat offender status, or severity of past 
infractions.

**Gap 2 — Limited Operational Visibility**
Management has no centralised dashboard to monitor compliance trends 
by ward, cuisine type, or establishment category. Decisions are made 
from static periodic reports based on historical batch data rather 
than real-time operational intelligence.

**Gap 3 — No Systematic Risk Flagging**
There is no structured mechanism to flag establishments showing 
increasing violation severity or frequency over time. High-risk 
patterns are identified reactively rather than proactively.

---

## 3. Business Objectives
1. Improve inspection prioritisation using evidence-based risk scoring
2. Increase visibility into ward-level and cuisine-level compliance trends
3. Reduce manual reporting effort through an automated dashboard
4. Identify repeat offenders earlier to enable proactive intervention
5. Support consistent, data-driven public health decision making across the inspection team

---

## 4. Business Impact

| Metric | Observation |
|---|---|
| Active food establishments in Toronto | 15,000+ |
| Annual inspections conducted | 40,000+ |
| Establishments with 3+ violations (repeat offenders) | To be quantified from data |
| Inspection prioritisation efficiency | Opportunity exists to improve allocation through risk-based routing |
| Resource utilisation | Current inspection schedules may not account for historical risk patterns |
| Estimated cost of a foodborne illness outbreak | $500K–$2M (Ontario Ministry of Health estimate) |

---

## 5. Proposed Solution
Build a **Toronto Restaurant Risk & Compliance Intelligence System** that:

1. Ingests and cleans 22+ years of DineSafe inspection data
2. Engineers a **Risk Score (0–100)** for every active establishment
3. Classifies establishments into **High / Medium / Low** risk tiers
4. Identifies **repeat offenders** and **trending risk** establishments
5. Delivers an **interactive Power BI dashboard** for Public Health managers
6. Provides **5 prioritised business recommendations** for inspection strategy

---

## 6. Stakeholders

| Stakeholder | Role | Interest |
|---|---|---|
| Public Health Manager | Primary Decision Maker | Ward-level compliance overview, resource allocation |
| DineSafe Inspectors | Primary Users | Risk-prioritised inspection list |
| Toronto City Council | Informed | Public health outcomes, ward performance |
| Restaurant Owners | Affected Party | Fair, transparent compliance scoring |
| Toronto Residents | Beneficiaries | Safe dining environments |
| Data & Analytics Team | Technical | Dashboard maintenance, data pipeline |

---

## 7. Success Criteria

| Criterion | Target |
|---|---|
| Risk score model covers all active establishments | 100% coverage |
| Dashboard load time | Under 5 seconds |
| Risk scoring model generates classifications for all active establishments | Validated through data completeness check |
| Inspector adoption of risk-based routing | 80% within 60 days |
| Reduction in repeat offender rate | 10% within 12 months of implementation |
| Dashboard uptime | 99% during business hours |

---

## 8. Expected Benefits
- Faster identification of high-risk establishments before incidents occur
- Improved inspection prioritisation based on historical violation patterns
- Increased visibility into compliance trends across wards and cuisine types
- Reduced manual reporting effort through automated dashboard refresh
- More consistent, data-driven decision making across the inspection team
- Transparent, auditable risk scoring that can be shared with stakeholders

---

## 9. Project Risks

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Incomplete inspection records may affect risk scoring accuracy | Medium | High | Document data gaps in validation report; note limitations in recommendations |
| Public dataset may contain missing or outdated establishment information | High | Medium | Cross-validate active establishments against inspection recency |
| Risk score assumptions may require validation by Public Health experts | Medium | Medium | Clearly document all scoring methodology assumptions |
| Historical patterns may not fully predict future violations | Medium | Medium | Frame risk scores as indicators, not guarantees |
| Dataset retired from portal may have gaps in recent records | Low | High | Use both current CSV and historical archive to maximise coverage |

---

## 10. Scope

### In Scope
- Analysis of DineSafe current dataset (102,769 records)
- Historical trend analysis (2001–2022)
- Risk scoring model for all active establishments
- Power BI interactive dashboard (4 pages)
- Excel executive summary
- Business recommendations report

### Out of Scope
- Real-time data pipeline (batch refresh only)
- Mobile application
- Integration with inspector scheduling system
- Predictive ML model (Phase 2)

---

## 11. Timeline

| Phase | Deliverable | Timeline |
|---|---|---|
| Phase 1 | Business Foundation (BRD, User Stories, KPIs) | Days 1–2 |
| Phase 2 | Data Engineering (Cleaning, Validation, Risk Scoring) | Days 3–5 |
| Phase 3 | Analysis & BI (SQL, Excel, Power BI) | Days 6–8 |
| Phase 4 | Delivery (Recommendations, README, GitHub) | Days 9–10 |

---

## 12. Assumptions & Constraints

### Assumptions
- DineSafe data accurately reflects actual inspection outcomes
- Establishments with no inspections in 24+ months are considered inactive
- Risk score is based on violation history only — not establishment size or revenue
- All analysis uses publicly available data under Toronto Open Government Licence
- Outbreak cost estimate sourced from Ontario Ministry of Health public reports

### Constraints
- No access to inspector scheduling system
- No real-time data feed — analysis based on downloaded snapshot
- Power BI Service (browser-based) used due to Mac M3 hardware limitation
- Budget: $0 — all tools are free or open source