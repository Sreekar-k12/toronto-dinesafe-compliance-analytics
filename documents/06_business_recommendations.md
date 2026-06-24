# Business Recommendations
## Toronto Restaurant Risk & Compliance Intelligence System

| Field | Details |
|---|---|
| **Project** | Toronto Restaurant Risk & Compliance Intelligence System |
| **Author** | Sreekar Koduru, Data & Business Analyst |
| **Date** | June 2026 |
| **Data Period** | November 2023 – June 2026 |
| **Based On** | 102,766 inspection records · 15,221 active establishments |

---

## Executive Summary
Analysis of 102,766 DineSafe inspection records reveals that while
Toronto's overall compliance rate of 83.7% reflects a generally
healthy food safety environment, three critical areas require
immediate attention: a disproportionate concentration of violations
in maintenance and sanitation categories, a repeat offender rate of
22.3% significantly exceeding the illustrative 5% target, and
uneven compliance patterns that suggest opportunities for more
targeted inspection resource allocation.

The following 5 recommendations are prioritised by impact and
implementation effort.

---

## Findings Summary

| Finding | Metric | Implication |
|---|---|---|
| Overall compliance rate | 83.7% | Below illustrative 85% target |
| High risk establishments | 764 (5.0%) | Require immediate priority inspection |
| Repeat offender rate | 22.3% | Far exceeds illustrative 5% target |
| Top violation category | 5C Maintenance (46%) | Systemic sanitation issue |
| Crucial violations | 2,825 (4.7% of all) | Immediate health hazard incidents |
| Crucial vs Minor ratio | 0.076 | Within acceptable range |
| Clean establishments | 7,108 (46.7%) | Majority maintaining good standards |

---

## Recommendation 1 — Implement Risk-Based Inspection Scheduling

**Priority:** High
**Effort:** Medium
**Impact:** High
**Timeline:** 3–6 months

### Finding
Current inspection scheduling follows a rotation-based approach
that does not account for an establishment's historical violation
patterns. The risk scoring model identifies 764 High Risk
establishments — 5% of active establishments — that account for
a disproportionate share of crucial violations.

### Recommendation
Adopt a risk-tiered inspection frequency model:
- **High Risk establishments:** Inspect every 3 months
- **Medium Risk establishments:** Inspect every 6 months
- **Low Risk establishments:** Inspect every 12 months

This reallocation ensures inspection resources are concentrated
where public health risk is highest without increasing total
inspection volume.

### Expected Outcome
- Faster detection of deteriorating compliance at High Risk establishments
- Reduced inspector time spent on consistently clean establishments
- More frequent touchpoints with the 764 establishments most likely
  to cause a public health incident

### Implementation Note
The risk scoring model (Version 1.0) is exploratory and intended
for analytical prioritisation purposes only. Inspection scheduling
decisions should be validated by Public Health subject matter
experts before operational implementation.

---

## Recommendation 2 — Launch Targeted Intervention for Repeat Offenders

**Priority:** High
**Effort:** Low
**Impact:** High
**Timeline:** 1–3 months

### Finding
3,400 establishments (22.3% of active establishments) are
classified as repeat offenders — having 3 or more violations
within a 12-month period. This rate significantly exceeds the
illustrative 5% target and represents the highest concentration
of sustained public health risk in the dataset.

The top repeat offender — Kasa Moto (115 Yorkville Ave) —
recorded 35 violations in the scoring window including 4 crucial
infractions.

### Recommendation
Create a dedicated **Repeat Offender Intervention Programme**:
1. Generate a monthly repeat offender report from the risk
   scoring system
2. Assign a dedicated compliance officer to the top 50 repeat
   offenders
3. Require repeat offenders to submit a corrective action plan
   within 30 days of the third violation
4. Schedule mandatory follow-up inspection within 14 days of
   corrective action plan submission

### Expected Outcome
- Structured accountability for establishments with patterns
  of non-compliance
- Earlier identification of establishments trending toward closure
- Documented corrective action trail for enforcement purposes

---

## Recommendation 3 — Address the 5C Maintenance Violation Concentration

**Priority:** High
**Effort:** Low
**Impact:** High
**Timeline:** 1–2 months

### Finding
Category **5C — Proper Maintenance / Washing of Rooms
(Including Washrooms)** accounts for **46% of all violations**
across 8,341 affected establishments. This single category
dominates all others by a significant margin — the second
highest category (05. Maintenance / Sanitation) accounts for
only 15.6%.

This concentration suggests a systemic, city-wide compliance
gap in basic premises maintenance rather than isolated incidents.

### Recommendation
1. Develop a **5C Compliance Guide** — a simple, visual one-page
   document outlining exactly what inspectors look for in the 5C
   category, translated into the top 5 languages spoken by
   Toronto food establishment operators
2. Distribute the guide proactively to all active establishments
   via email before their next scheduled inspection
3. Create a short online training module specifically covering
   5C requirements — free, accessible, self-paced
4. Track 5C violation rates quarterly to measure the impact
   of the intervention

### Expected Outcome
- Reduction in 5C violations through increased operator awareness
- Lower re-inspection rates as establishments understand
  requirements before inspection
- More efficient inspections as common violations are addressed proactively

---

## Recommendation 4 — Establish a Public Compliance Transparency Dashboard

**Priority:** Medium
**Effort:** Medium
**Impact:** Medium
**Timeline:** 3–6 months

### Finding
Toronto residents currently access DineSafe compliance information
through a static web lookup tool. There is no visual, interactive
way for the public to understand compliance trends in their
neighbourhood or identify high-risk establishments nearby.

### Recommendation
Publish a **public-facing version** of the compliance dashboard
showing:
- Ward-level compliance rates (no establishment names for Low/Medium risk)
- High Risk establishments (names visible — already public via DineSafe)
- Trend data showing whether compliance is improving citywide
- Top violation categories to educate the public on what
  inspectors look for

### Expected Outcome
- Increased public awareness of DineSafe programme
- Market incentive for establishments to improve — poor compliance
  is publicly visible
- Strengthened public trust in Toronto Public Health

---

## Recommendation 5 — Conduct Seasonal Inspection Surge in Summer Months

**Priority:** Medium
**Effort:** Low
**Impact:** Medium
**Timeline:** Annual — implement before June each year

### Finding
Monthly trend analysis reveals that **August 2024 had the lowest
pass rate** in the dataset at 79.5%, and **July 2024 recorded
25 closure orders** — the highest single-month closure count in
the analysis period. Summer months consistently show elevated
violation rates, likely driven by higher food volumes, increased
temperatures, and seasonal staffing changes.

### Recommendation
1. Increase inspection frequency by 20% in June, July, and August
2. Prioritise food establishments with outdoor seating, high
   summer foot traffic, and those that previously failed
   summer inspections
3. Issue a **Summer Food Safety Advisory** to all active
   establishments in May each year — a one-page reminder
   of the most common summer violations (temperature control,
   pest prevention, handwashing)

### Expected Outcome
- Reduction in summer pass rate dip
- Fewer closure orders during peak dining season
- Proactive operator preparation rather than reactive enforcement

---

## Priority Matrix

| Recommendation | Impact | Effort | Priority | Timeline |
|---|---|---|---|---|
| R1: Risk-based scheduling | High | Medium | P1 | 3–6 months |
| R2: Repeat offender programme | High | Low | P1 | 1–3 months |
| R3: 5C compliance guide | High | Low | P1 | 1–2 months |
| R4: Public dashboard | Medium | Medium | P2 | 3–6 months |
| R5: Summer inspection surge | Medium | Low | P2 | Annual |

---

## Limitations & Caveats
- Risk scores are based on violation history only and do not
  account for establishment size, cuisine type, or seating capacity
- The scoring model (Version 1.0) is exploratory and intended
  for analytical prioritisation — not regulatory enforcement
- Current dataset covers November 2023 to June 2026 only.
  Year-over-year trend analysis requires historical files
- All targets referenced are illustrative and should be validated
  against Toronto Public Health programme baselines
- Recommendations should be reviewed by Public Health subject
  matter experts before implementation