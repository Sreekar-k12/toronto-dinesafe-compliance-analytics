# User Stories
## Toronto Restaurant Risk & Compliance Intelligence System

| Field | Details |
|---|---|
| **Project** | Toronto Restaurant Risk & Compliance Intelligence System |
| **Author** | Sreekar Koduru, Business Analyst |
| **Version** | 1.0 |
| **Date** | June 2026 |
| **Format** | Agile User Stories with Gherkin Acceptance Criteria |

---

## Epic: Restaurant Risk & Compliance Intelligence Dashboard

---

### US-01: Risk Score Visibility
**As a** Public Health Manager,  
**I want** to see a risk score for every active food establishment,  
**So that** I can prioritise inspection resources toward the highest-risk 
establishments rather than relying on scheduled rotation alone.

**Priority:** Must Have  
**Linked Requirements:** FR-01, FR-02  
**Estimate:** 5 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Risk score displayed for active establishment
  Given an establishment has at least one inspection record
  And the inspection occurred within the last 24 months
  When the risk scoring model is applied
  Then a risk score between 0 and 100 is generated for that establishment
  And the establishment is classified as High, Medium, or Low risk

Scenario 2: Inactive establishments excluded
  Given an establishment has no inspection record in the last 24 months
  When the risk scoring model is applied
  Then the establishment is excluded from risk scoring
  And flagged as inactive in the output dataset

Scenario 3: Risk score based on violation history only
  Given an establishment has violation records across multiple inspections
  When the risk score is calculated
  Then the score reflects crucial, significant, and minor violations
  weighted according to the documented scoring methodology
  And the score does not incorporate establishment size or revenue data
```

---

### US-02: Repeat Offender Identification
**As a** DineSafe Inspector,  
**I want** to see a list of establishments with 3 or more violations 
in a 12-month period,  
**So that** I can prioritise follow-up inspections for establishments 
showing a pattern of non-compliance.

**Priority:** Must Have  
**Linked Requirements:** FR-03  
**Estimate:** 3 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Repeat offender correctly identified
  Given an establishment has 3 or more violation records
  And those violations occurred within a 12-month window
  When the repeat offender analysis runs
  Then the establishment is flagged as a repeat offender
  And appears in the Repeat Offender list on the dashboard

Scenario 2: Establishment with fewer than 3 violations not flagged
  Given an establishment has 2 violation records in a 12-month period
  When the repeat offender analysis runs
  Then the establishment is NOT flagged as a repeat offender

Scenario 3: Repeat offender list filterable by ward
  Given the repeat offender list is displayed on the dashboard
  When the inspector applies a ward filter
  Then the list updates to show only repeat offenders in that ward
```

---

### US-03: Ward-Level Compliance Map
**As a** Public Health Manager,  
**I want** to view an interactive map of Toronto showing compliance 
rates by ward,  
**So that** I can quickly identify which areas of the city have the 
lowest compliance and may require additional inspection resources.

**Priority:** Must Have  
**Linked Requirements:** FR-04, FR-09  
**Estimate:** 4 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Map displays compliance rate by ward
  Given inspection data is available with latitude and longitude coordinates
  When the Ward & Geographic Analysis page loads
  Then a map of Toronto is displayed
  And each ward is colour-coded by compliance rate
  And green indicates high compliance and red indicates low compliance

Scenario 2: Map is interactive
  Given the compliance map is displayed
  When the manager clicks on a specific ward
  Then a tooltip shows the ward name, compliance rate, and total inspections
  And the other dashboard visuals filter to show only that ward's data

Scenario 3: Map excludes records without coordinates
  Given some inspection records have null latitude or longitude values
  When the map is rendered
  Then those records are excluded from the map visual
  And a note indicates the number of records excluded
```

---

### US-04: Violation Severity Breakdown
**As a** DineSafe Inspector,  
**I want** to see violations broken down by severity (Minor, Significant, 
Crucial),  
**So that** I can understand the nature of non-compliance across 
establishments and focus on the most serious violations first.

**Priority:** Must Have  
**Linked Requirements:** FR-06  
**Estimate:** 2 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Violations displayed by severity
  Given inspection records contain severity classifications
  When the Executive Overview page loads
  Then a chart displays violation counts separated by Minor, Significant, and Crucial
  And each severity level is distinctly colour-coded

Scenario 2: Severity breakdown filterable by date range
  Given the severity breakdown chart is displayed
  When the inspector applies a date range filter
  Then the chart updates to show only violations within that date range

Scenario 3: Crucial violations highlighted prominently
  Given violation data contains crucial infractions
  When the dashboard loads
  Then crucial violations are visually prominent
  And the count of crucial violations is displayed as a KPI card
```

---

### US-05: Year-over-Year Compliance Trend
**As a** Public Health Manager,  
**I want** to see how overall compliance rates have changed year over year,  
**So that** I can assess whether the DineSafe program is improving 
public health outcomes over time and report progress to City Council.

**Priority:** Must Have  
**Linked Requirements:** FR-05  
**Estimate:** 3 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Year-over-year trend displayed as line chart
  Given historical inspection data is available from 2001 to present
  When the Trend Analysis page loads
  Then a line chart displays annual compliance rate for each year
  And the x-axis shows year and y-axis shows compliance rate percentage

Scenario 2: Trend line shows direction clearly
  Given the compliance trend line is displayed
  When the manager views the chart
  Then an upward trend indicates improving compliance
  And a downward trend is visually highlighted for attention

Scenario 3: Incomplete years handled correctly
  Given the current year data is a partial year
  When the trend chart is rendered
  Then the current year is displayed with a note indicating partial data
  And is visually differentiated from complete years
```

---

### US-06: Top High-Risk Establishment List
**As a** DineSafe Inspector,  
**I want** to see a ranked list of the top 20 highest-risk establishments,  
**So that** I can immediately know which establishments should be 
prioritised for the next inspection cycle.

**Priority:** Must Have  
**Linked Requirements:** FR-01, FR-02, FR-08  
**Estimate:** 3 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Top 20 high-risk establishments displayed
  Given risk scores have been calculated for all active establishments
  When the Establishment Risk Intelligence page loads
  Then a table shows the top 20 establishments ranked by risk score
  And columns include: establishment name, address, risk score, risk tier,
  last inspection date, and violation count

Scenario 2: List is sortable
  Given the top 20 list is displayed
  When the inspector clicks a column header
  Then the list re-sorts by that column in ascending or descending order

Scenario 3: List filterable by risk tier
  Given the establishment list is displayed
  When the inspector selects High Risk from the risk tier filter
  Then only High Risk establishments are shown in the table
```

---

### US-07: Pass Rate by Cuisine Type
**As a** Public Health Manager,  
**I want** to see inspection pass rates broken down by cuisine type,  
**So that** I can identify whether specific cuisine categories 
have systemic compliance challenges requiring targeted intervention.

**Priority:** Should Have  
**Linked Requirements:** FR-07  
**Estimate:** 2 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Pass rate displayed by cuisine type
  Given inspection records contain establishment type or cuisine information
  When the Trend Analysis page loads
  Then a bar chart shows pass rate for each cuisine category
  And bars are sorted from lowest to highest pass rate

Scenario 2: Cuisine type with fewer than 10 establishments grouped
  Given some cuisine types have very few establishments
  When the chart is rendered
  Then cuisine types with fewer than 10 establishments are grouped as Other
  And a note explains the grouping threshold

Scenario 3: Chart filterable by year
  Given the cuisine pass rate chart is displayed
  When the manager applies a year filter
  Then the chart updates to show pass rates for only the selected year
```

---

### US-08: Dashboard Filtering
**As a** DineSafe Inspector or Public Health Manager,  
**I want** to filter all dashboard visuals by ward, cuisine type, 
risk tier, and date range simultaneously,  
**So that** I can focus the analysis on a specific subset of 
establishments relevant to my current inspection priorities.

**Priority:** Must Have  
**Linked Requirements:** FR-09  
**Estimate:** 3 story points  

#### Acceptance Criteria:
```gherkin
Scenario 1: Single filter applied updates all visuals
  Given the dashboard is displaying all establishments
  When the user selects a specific ward from the ward filter
  Then all charts, maps, and tables on the current page update
  to show only data for that ward

Scenario 2: Multiple filters applied simultaneously
  Given the dashboard is displaying all establishments
  When the user selects Ward 10 AND High Risk tier AND date range 2023–2025
  Then all visuals update to reflect all three filters combined

Scenario 3: Filters reset to default
  Given one or more filters have been applied
  When the user clicks Reset Filters
  Then all filters return to their default All selection
  And all visuals return to showing the full dataset
```

---

## Story Summary

| ID | User Story | Priority | Points | Requirements |
|---|---|---|---|---|
| US-01 | Risk score visibility | Must Have | 5 | FR-01, FR-02 |
| US-02 | Repeat offender identification | Must Have | 3 | FR-03 |
| US-03 | Ward-level compliance map | Must Have | 4 | FR-04, FR-09 |
| US-04 | Violation severity breakdown | Must Have | 2 | FR-06 |
| US-05 | Year-over-year compliance trend | Must Have | 3 | FR-05 |
| US-06 | Top high-risk establishment list | Must Have | 3 | FR-01, FR-02, FR-08 |
| US-07 | Pass rate by cuisine type | Should Have | 2 | FR-07 |
| US-08 | Dashboard filtering | Must Have | 3 | FR-09 |
| | **Total** | | **25 points** | |

---

## Definition of Done
A user story is complete when:
- [ ] Dashboard visual built and verified against Python output
- [ ] All acceptance criteria tested manually
- [ ] Slicer/filter functionality confirmed working
- [ ] Visual reviewed for clarity and labelling
- [ ] No critical data errors in underlying dataset
- [ ] BA sign-off confirmed