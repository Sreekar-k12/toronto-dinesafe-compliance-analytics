# KPI Framework
## Toronto Restaurant Risk & Compliance Intelligence System

| Field | Details |
|---|---|
| **Project** | Toronto Restaurant Risk & Compliance Intelligence System |
| **Author** | Sreekar Koduru, Data & Business Analyst |
| **Version** | 1.1 |
| **Date** | June 2026 |

---

## Purpose
This KPI Framework defines the 8 key performance indicators used to 
measure restaurant compliance and inspection effectiveness across Toronto. 
Every SQL query, Power BI visual, and business recommendation in this 
project maps back to one or more of these KPIs.

Defining KPIs before building any dashboard or writing any query ensures 
that every analytical output serves a measurable business purpose.

---

## KPI Design Principles
- **Actionable:** Each KPI should lead to a decision or action
- **Measurable:** Each KPI can be calculated from available DineSafe data
- **Owned:** Each KPI has a named stakeholder responsible for it
- **Relevant:** Each KPI maps to at least one business objective
- **Comparable:** Each KPI can be tracked over time or across segments

---

## KPI Definitions

---

### KPI-01: Overall Compliance Rate

| Field | Details |
|---|---|
| **Definition** | Percentage of inspections resulting in a Pass outcome |
| **Formula** | (Total Pass Inspections / Total Inspections) × 100 |
| **Unit** | Percentage (%) |
| **Illustrative Target** | ≥ 85% overall compliance rate |
| **Owner** | Public Health Manager |
| **Frequency** | Annual + rolling 12-month |
| **Data Source** | inspectionStatus field — DineSafe dataset |
| **Linked Objective** | Increase visibility into compliance trends |
| **Linked Requirement** | FR-05 |

**Why it matters:**
The overall compliance rate is the headline metric for the DineSafe 
program. It tells management at a glance whether Toronto's food 
establishments are meeting health standards. A declining rate signals 
systemic issues requiring intervention. An improving rate validates 
inspection strategy effectiveness.

*Note: The illustrative target of 85% is used for analytical reference 
purposes. Actual targets should be established by Public Health management 
based on historical baselines and program objectives.*

**Segmentation:**
- By ward (25 Toronto wards)
- By year (2001–present)
- By violation category

---

### KPI-02: Average Violations Per Inspection

| Field | Details |
|---|---|
| **Definition** | Average number of violations recorded per inspection event |
| **Formula** | Total Violations / Total Inspections |
| **Unit** | Number (violations per inspection) |
| **Illustrative Target** | ≤ 1.5 violations per inspection |
| **Owner** | Inspection Team Lead |
| **Frequency** | Quarterly |
| **Data Source** | deficiencyDesc field — one row per violation |
| **Linked Objective** | Improve inspection prioritisation |
| **Linked Requirement** | FR-06 |

**Why it matters:**
A single inspection may result in multiple violations. Tracking the 
average number of violations per inspection reveals whether the 
severity and frequency of non-compliance is increasing or decreasing 
over time. Rising averages may indicate deteriorating compliance culture 
across establishments.

*Note: The illustrative target of 1.5 violations per inspection is a 
reference point for analysis. Actual benchmarks should be validated 
against Toronto Public Health program data.*

**Segmentation:**
- By severity (Minor / Significant / Crucial)
- By ward
- By violation category

---

### KPI-03: High-Risk Establishment Percentage

| Field | Details |
|---|---|
| **Definition** | Percentage of active establishments classified as High Risk (score 70–100) |
| **Formula** | (High Risk Establishment Count / Total Active Establishments) × 100 |
| **Unit** | Percentage (%) |
| **Illustrative Target** | ≤ 10% of active establishments in High Risk tier |
| **Owner** | Public Health Director |
| **Frequency** | Quarterly |
| **Data Source** | Derived from risk scoring model output |
| **Linked Objective** | Improve inspection prioritisation |
| **Linked Requirement** | FR-01, FR-02 |

**Why it matters:**
This KPI quantifies the scale of the high-risk problem. If 25% of 
establishments are High Risk, that requires a very different resource 
allocation strategy than if only 5% are. Tracking this percentage over 
time shows whether risk-based inspection strategies are reducing the 
proportion of high-risk establishments.

*Note: The illustrative target of ≤10% is used for analytical reference. 
Actual thresholds should be defined in collaboration with Public Health 
management.*

**Segmentation:**
- By ward
- By violation category
- Trend over time (is the % growing or shrinking?)

---

### KPI-04: Repeat Offender Rate

| Field | Details |
|---|---|
| **Definition** | Percentage of active establishments flagged as repeat offenders (3+ violations in 12 months) |
| **Formula** | (Repeat Offender Count / Total Active Establishments) × 100 |
| **Unit** | Percentage (%) |
| **Illustrative Target** | ≤ 5% repeat offender rate |
| **Owner** | Enforcement Team Lead |
| **Frequency** | Quarterly |
| **Data Source** | Derived from violation frequency analysis |
| **Linked Objective** | Identify repeat offenders earlier |
| **Linked Requirement** | FR-03 |

**Why it matters:**
Repeat offenders represent the highest concentration of public health 
risk. An establishment that repeatedly violates health standards despite 
inspections and enforcement is significantly more likely to cause a 
foodborne illness incident. Reducing the repeat offender rate is one 
of the strongest leading indicators of improved public health outcomes.

*Note: The illustrative target of ≤5% is an analytical reference point. 
"Repeat offender" is defined for this project as 3 or more violations 
within any 12-month period.*

**Segmentation:**
- By ward
- By violation type (what are they repeatedly violating?)
- By establishment age (are newer establishments more likely to repeat?)

---

### KPI-05: Risk Score Trend

| Field | Details |
|---|---|
| **Definition** | Change in risk score for an establishment across consecutive inspection periods |
| **Formula** | Current Period Risk Score − Previous Period Risk Score |
| **Unit** | Score change (points) |
| **Illustrative Target** | No establishment showing sustained worsening trend for 3+ consecutive periods |
| **Trend Classification** | Improving = decrease > 5 points / Stable = ±5 points / Worsening = increase > 5 points |
| **Owner** | Analytics Team |
| **Frequency** | Per inspection cycle |
| **Data Source** | Derived from risk scoring model across time periods |
| **Linked Objective** | Identify repeat offenders earlier |
| **Linked Requirement** | FR-08 |

**Why it matters:**
A single high risk score is concerning. A risk score that is consistently 
increasing over time is alarming. This KPI identifies establishments that 
are trending in the wrong direction — getting worse with each inspection 
cycle — before they reach crisis point. It enables proactive intervention 
rather than reactive enforcement.

*Note: The ±5 point threshold for trend classification is illustrative 
and should be validated against the distribution of risk scores in the 
actual dataset before operational use.*

**Segmentation:**
- Establishments with 3+ consecutive worsening periods flagged automatically
- Trend direction: Improving / Stable / Worsening

---

### KPI-06: Critical vs Minor Violation Ratio

| Field | Details |
|---|---|
| **Definition** | Ratio of Crucial violations to Minor violations across all inspections |
| **Formula** | Total Crucial Violations / Total Minor Violations |
| **Unit** | Ratio |
| **Illustrative Target** | Ratio ≤ 0.15 (no more than 1 crucial for every 7 minor violations) |
| **Owner** | Inspection Team Lead |
| **Frequency** | Annual |
| **Data Source** | severity field — DineSafe dataset |
| **Linked Objective** | Increase visibility into compliance trends |
| **Linked Requirement** | FR-06 |

**Why it matters:**
The ratio between crucial and minor violations indicates the overall 
severity profile of non-compliance. A rising ratio means the nature of 
violations is becoming more serious — more contamination, pest 
infestation, and immediate health hazards relative to minor paperwork 
or maintenance issues. This is a leading indicator of deteriorating 
food safety culture across the city.

*Note: The illustrative target of ≤0.15 is an analytical reference point 
based on the severity hierarchy defined by Toronto Public Health.*

**Segmentation:**
- By ward
- By year (is the severity profile changing over time?)
- By violation category

---

### KPI-07: Top Violation Categories

| Field | Details |
|---|---|
| **Definition** | Distribution of total violations across deficiency categories — 
identifying which violation types occur most frequently |
| **Formula** | (Violations in Category / Total Violations) × 100 |
| **Unit** | Percentage (%) |
| **Illustrative Target** | No single category exceeding 30% of total violations |
| **Owner** | Public Health Manager |
| **Frequency** | Annual |
| **Data Source** | deficiencyDesc field — DineSafe dataset |
| **Linked Objective** | Increase visibility into compliance trends |
| **Linked Requirement** | FR-06 |

**Why it matters:**
Understanding which violation categories drive the most failures enables 
targeted intervention. If sanitation and equipment maintenance account 
for 60% of all violations, training programs should focus on those areas 
rather than applying generic enforcement across all categories.

*Note: The DineSafe dataset does not contain a cuisine type field. This 
KPI uses violation category (deficiencyDesc) as the segmentation 
dimension, which provides more actionable insight for inspection planning 
than cuisine type would.*

**Examples of commonly occurring violation categories (to be quantified 
during Python analysis phase):**
- Equipment surface sanitation
- Floor and wall maintenance
- Handwashing station compliance
- Pest prevention
- Food handling room sanitation

**Segmentation:**
- By ward (which areas have the highest sanitation violations?)
- By year (are certain violation categories improving or worsening?)

---

### KPI-08: Year-over-Year Compliance Trend

| Field | Details |
|---|---|
| **Definition** | Annual change in overall compliance rate compared to the prior year |
| **Formula** | Current Year Compliance Rate − Prior Year Compliance Rate |
| **Unit** | Percentage point change |
| **Illustrative Target** | Positive trend (improvement) year over year |
| **Owner** | Public Health Director |
| **Frequency** | Annual |
| **Data Source** | Historical DineSafe dataset (2001–2022) + current dataset |
| **Linked Objective** | Support data-driven public health decision making |
| **Linked Requirement** | FR-05 |

**Why it matters:**
The year-over-year trend is the most important strategic KPI in this 
framework. It tells Public Health leadership and City Council whether 
the DineSafe program is having its intended effect over time. 22 years 
of historical data makes this analysis uniquely powerful — you can see 
the impact of policy changes, public health campaigns, and major events 
(like COVID-19) on compliance rates across the city.

**Segmentation:**
- Overall city trend
- By ward (which wards are improving vs declining?)
- Pre/post COVID comparison (2019 vs 2020–2022)

---

## KPI Summary Table

| KPI | Formula | Illustrative Target | Owner | Frequency |
|---|---|---|---|---|
| KPI-01: Overall Compliance Rate | Pass / Total × 100 | ≥ 85% | Public Health Manager | Annual |
| KPI-02: Avg Violations Per Inspection | Total Violations / Total Inspections | ≤ 1.5 | Inspection Team Lead | Quarterly |
| KPI-03: High-Risk Establishment % | High Risk / Total Active × 100 | ≤ 10% | Director | Quarterly |
| KPI-04: Repeat Offender Rate | Repeat Offenders / Total Active × 100 | ≤ 5% | Enforcement Lead | Quarterly |
| KPI-05: Risk Score Trend | Current Score − Previous Score | No sustained worsening (3+ periods) | Analytics Team | Per cycle |
| KPI-06: Critical vs Minor Ratio | Crucial / Minor Violations | ≤ 0.15 | Inspection Team Lead | Annual |
| KPI-07: Top Violation Categories | Violations in Category / Total × 100 | No single category dominant | Public Health Manager | Annual |
| KPI-08: YoY Compliance Trend | Current Year % − Prior Year % | Positive trend | Director | Annual |

---

## KPI to Dashboard Mapping

| KPI | Power BI Page | Visual Type |
|---|---|---|
| KPI-01 | Page 1 — Executive Overview | KPI Card + Line Chart |
| KPI-02 | Page 1 — Executive Overview | Bar Chart |
| KPI-03 | Page 1 — Executive Overview | Donut Chart + KPI Card |
| KPI-04 | Page 3 — Risk Intelligence | Table + KPI Card |
| KPI-05 | Page 3 — Risk Intelligence | Line Chart (per establishment) |
| KPI-06 | Page 1 — Executive Overview | Stacked Bar Chart |
| KPI-07: Top Violation Categories | Page 4 — Trend Analysis | Horizontal Bar Chart (violation categories) |
| KPI-08 | Page 4 — Trend Analysis | Line Chart (2001–present) |