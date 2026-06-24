# Business Requirements Document (BRD)
## Toronto Restaurant Risk & Compliance Intelligence System

| Field | Details |
|---|---|
| **Project Name** | Toronto Restaurant Risk & Compliance Intelligence System |
| **Client** | City of Toronto — Public Health Division |
| **Author** | Sreekar Koduru, Data & Business Analyst |
| **Version** | 1.0 |
| **Date** | June 2026 |
| **Status** | Draft |
| **Reference** | 01_business_problem_statement.md |

---

## 1. Purpose
This BRD defines the business and technical requirements for the Toronto 
Restaurant Risk & Compliance Intelligence System. It serves as the 
authoritative reference for all analytical, dashboard, and reporting 
deliverables produced under this project.

---

## 2. Business Objectives
1. Improve inspection prioritisation using evidence-based risk scoring
2. Increase visibility into ward-level and cuisine-level compliance trends
3. Reduce manual reporting effort through an automated dashboard
4. Identify repeat offenders earlier to enable proactive intervention
5. Support consistent, data-driven public health decision making

---

## 3. Scope

### In Scope
- Data ingestion and cleaning of DineSafe current dataset (102,769 records)
- Historical trend analysis using 22 years of inspection data (2001–2022)
- Risk scoring model producing a score (0–100) for every active establishment
- High / Medium / Low risk tier classification
- Repeat offender identification (3+ violations)
- Interactive Power BI dashboard (4 pages)
- Excel executive summary with pivot analysis
- MySQL database with 8 business queries
- Business recommendations report

### Out of Scope
- Real-time data pipeline
- Mobile application
- Integration with inspector scheduling system
- Predictive machine learning model (deferred to Phase 2)
- Individual restaurant owner portal

---

## 4. Stakeholders

| Stakeholder | Role | Type |
|---|---|---|
| Public Health Manager | Primary Decision Maker | Business |
| DineSafe Inspectors | Primary End Users | Business |
| Toronto City Council | Informed | Executive |
| Data & Analytics Team | Dashboard Maintenance | Technical |
| Restaurant Owners | Affected Party | External |
| Toronto Residents | Beneficiaries | External |

---

## 5. Functional Requirements

| ID | Requirement | Priority | Stakeholder |
|---|---|---|---|
| FR-01 | System shall calculate a risk score (0–100) for every active establishment based on violation history | Must Have | Public Health Manager |
| FR-02 | System shall classify each establishment as High, Medium, or Low risk | Must Have | Inspectors |
| FR-03 | System shall identify repeat offenders — establishments with 3 or more violations | Must Have | Inspectors |
| FR-04 | System shall display compliance rate by ward on an interactive map | Must Have | Public Health Manager |
| FR-05 | System shall show violation trend over time (year-over-year) | Must Have | Public Health Manager |
| FR-06 | System shall break down violations by severity — Minor, Significant, Crucial | Must Have | Inspectors |
| FR-07 | System shall show pass rate by cuisine type | Should Have | Public Health Manager |
| FR-08 | System shall display risk score trend — establishments getting worse over time | Should Have | Inspectors |
| FR-09 | System shall allow filtering by ward, cuisine type, risk tier, and date range | Must Have | All Users |
| FR-10 | System shall provide an Excel executive summary for non-dashboard users | Should Have | City Council |
| FR-11 | System shall include a data dictionary documenting all fields and definitions | Should Have | Analytics Team |
| FR-12 | System shall document all data validation checks and cleaning decisions | Must Have | Analytics Team |

---

## 6. Non-Functional Requirements

| ID | Requirement | Priority |
|---|---|---|
| NFR-01 | Dashboard shall load within 5 seconds on standard broadband | Must Have |
| NFR-02 | Risk scoring model shall cover 100% of active establishments | Must Have |
| NFR-03 | All data used is publicly available under Toronto Open Government Licence | Must Have |
| NFR-04 | Dashboard shall be accessible via browser — no desktop software required | Must Have |
| NFR-05 | All methodology and assumptions shall be documented and reproducible | Must Have |
| NFR-06 | Analysis shall be version-controlled and publicly available on GitHub | Should Have |
| NFR-07 | Python code shall include inline comments explaining each transformation | Should Have |
| NFR-08 | SQL queries shall include business context comments | Should Have |

---
## 7. Requirement Traceability

| Business Objective | Requirements |
|---|---|
| Improve inspection prioritisation | FR-01, FR-02, FR-03, FR-09 |
| Increase visibility into compliance trends | FR-04, FR-05, FR-06, FR-07, FR-08 |
| Reduce manual reporting effort | FR-10, NFR-01 |
| Identify repeat offenders earlier | FR-03, FR-08 |
| Support data-driven decision making | FR-04, FR-05, FR-09, FR-10, FR-11 |
| Ensure reproducibility and transparency | FR-11, FR-12, NFR-05, NFR-06, NFR-07 |

---

## 8. Requirement Dependencies

| Requirement | Depends On |
|---|---|
| FR-01 — Risk Score Calculation | Clean violation data with no nulls in severity field |
| FR-02 — Risk Tier Classification | FR-01 completed and validated |
| FR-03 — Repeat Offender Identification | Establishment ID consistent across inspection records |
| FR-04 — Ward Compliance Map | Latitude/longitude fields available and accurate |
| FR-05 — Year-over-Year Trend | Historical dataset (2001–2022) successfully loaded |
| FR-08 — Risk Score Trend | FR-01 completed across multiple time periods |
| FR-09 — Dashboard Filters | All classification fields (ward, cuisine, risk tier) populated |
| FR-10 — Excel Summary | Python analysis and SQL queries completed first |


---

## 9. Data Requirements

| Dataset | Source | Records | Coverage |
|---|---|---|---|
| DineSafe Current | Toronto Open Data | 102,769 | Recent inspections to April 2026 |
| DineSafe Historical | Toronto Open Data | ~500,000+ | 2001–2022 |

### Key Fields Required
- `estId` — unique establishment identifier
- `estName` — establishment name
- `address` — full address for mapping
- `inspectionDate` — date of inspection
- `inspectionStatus` — Pass / Conditional Pass / Closed
- `severity` — M (Minor) / S (Significant) / C (Crucial)
- `deficiencyDesc` — description of violation
- `amountFined` — financial penalty applied
- `latitude / longitude` — coordinates for map visual

### Data Quality Requirements
- Duplicate records identified, documented, and removed before analysis
- Null values in critical fields (severity, inspectionDate, estId) assessed 
  and handled before transformation
- Invalid or future-dated inspection dates excluded from analysis
- Establishments with no inspection in 24+ months classified as inactive 
  and excluded from risk scoring
- All data quality decisions documented in the Data Validation Report
- Final cleaned dataset verified against raw record count with variance explained

---

## 10. Risk Scoring Methodology

The risk score (0–100) will be calculated using a weighted model:

| Factor | Weight | Rationale |
|---|---|---|
| Crucial violations (last 12 months) | 40% | Highest public health risk |
| Significant violations (last 12 months) | 25% | Moderate risk indicator |
| Minor violations (last 12 months) | 10% | Low but tracked |
| Repeat offender status (3+ violations) | 15% | Pattern of non-compliance |
| Inspection outcome (Closed/Conditional) | 10% | Official regulatory action |

**Risk Tier Classification:**
- **High Risk:** Score 70–100
- **Medium Risk:** Score 40–69
- **Low Risk:** Score 0–39

*Note: Scoring weights are assumptions based on the violation severity 
hierarchy defined by Toronto Public Health. Weights should be validated 
by a Public Health subject matter expert before operational use.*

*Version 1.0 scoring methodology is exploratory and intended for analytical 
prioritisation purposes only. It is not intended for regulatory enforcement 
decisions.*

---

## 11. Dashboard Requirements

### Page 1 — Executive Overview
- Total establishments inspected
- Overall compliance rate
- High / Medium / Low risk breakdown (donut chart)
- Top 5 most violated deficiency types

### Page 2 — Ward & Geographic Analysis
- Map of Toronto with compliance rate by ward (colour coded)
- Bar chart: violations by ward
- Slicer: filter by ward, date range

### Page 3 — Establishment Risk Intelligence
- Table: Top 20 high-risk establishments with risk score
- Repeat offender list
- Risk score trend — establishments getting worse
- Slicer: filter by risk tier, cuisine type

### Page 4 — Trend Analysis
- Year-over-year compliance rate (line chart)
- Violation severity breakdown over time
- Pass rate by cuisine type (bar chart)
- Fine amount trend

---

## 12. Assumptions & Constraints

### Assumptions
- An establishment is "active" if inspected within the last 24 months
- "Repeat offender" is defined as 3 or more violations in any 12-month period
- Risk score is based solely on inspection history — not establishment size
- Violation severity hierarchy: Crucial > Significant > Minor
- All data used is publicly available and governed by Toronto Open Government Licence

### Constraints
- No real-time data feed — analysis is based on a downloaded snapshot
- Power BI Service (browser-based) used — no Power BI Desktop on Mac M3
- No access to inspector scheduling or routing systems
- Historical data ends at 2022 — gap between 2022 and current filled by main CSV

---

## 13. Acceptance Criteria

| Deliverable | Acceptance Criteria |
|---|---|
| Risk Scoring Model | Score generated for 100% of active establishments |
| Power BI Dashboard | All 4 pages load, all slicers functional, published to Power BI Service |
| MySQL Database | 8 queries return correct results validated against Python output |
| Excel Summary | Pivot tables accurate, KPI scorecard populated |
| GitHub Repository | All files committed, README renders correctly, live dashboard link works |
| Business Recommendations | 5 recommendations with effort/impact rating included |

---

## 14. Sign-off

| Role | Name | Decision | Date |
|---|---|---|---|
| Data & Business Analyst | Sreekar Koduru | ☐ Approved ☐ Revision Required | June 2026 |
| Public Health Manager | TBD | ☐ Approved ☐ Revision Required | |
| Analytics Team Lead | TBD | ☐ Approved ☐ Revision Required | |