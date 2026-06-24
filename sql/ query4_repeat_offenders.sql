USE toronto_dinesafe;

-- ============================================================
-- Query 4: Repeat Offenders Analysis
-- KPI-04: Which establishments repeatedly violate standards?
-- Business use: Enforcement team priority list
-- ============================================================

SELECT
    er.est_name,
    er.address,
    er.total_violations,
    er.crucial_violations,
    er.significant_violations,
    er.minor_violations,
    er.risk_score,
    er.risk_tier,
    er.times_closed,
    er.total_fined
FROM establishment_risk er
WHERE er.is_repeat_offender = 1
ORDER BY er.total_violations DESC, er.crucial_violations DESC
LIMIT 20;