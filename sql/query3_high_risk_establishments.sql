USE toronto_dinesafe;

-- ============================================================
-- Query 3: High Risk Establishments — Top 20
-- KPI-03: Which establishments need immediate attention?
-- Business use: Inspection priority list for DineSafe team
-- ============================================================

SELECT
    er.est_name,
    er.address,
    er.risk_score,
    er.risk_tier,
    er.total_violations,
    er.crucial_violations,
    er.significant_violations,
    er.minor_violations,
    er.is_repeat_offender,
    er.total_fined
FROM establishment_risk er
WHERE er.risk_tier = 'High'
ORDER BY er.risk_score DESC, er.crucial_violations DESC
LIMIT 20;