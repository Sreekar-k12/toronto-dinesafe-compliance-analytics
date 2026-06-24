USE toronto_dinesafe;

-- ============================================================
-- Query 8: Geographic Compliance Analysis
-- KPI-01 by location: Which areas have the most violations?
-- Business use: Geographic targeting of inspection resources
-- ============================================================

SELECT
    i.est_id,
    i.est_name,
    i.address,
    i.latitude,
    i.longitude,
    er.risk_score,
    er.risk_tier,
    er.total_violations,
    er.crucial_violations,
    er.is_repeat_offender,
    COUNT(DISTINCT i.unique_id)             AS total_inspections,
    ROUND(SUM(CASE WHEN i.inspection_status = 'Pass'
              THEN 1 ELSE 0 END) * 100.0 /
          COUNT(DISTINCT i.unique_id), 1)   AS pass_rate_pct
FROM inspections i
JOIN establishment_risk er ON i.est_id = er.est_id
GROUP BY
    i.est_id, i.est_name, i.address,
    i.latitude, i.longitude,
    er.risk_score, er.risk_tier,
    er.total_violations, er.crucial_violations,
    er.is_repeat_offender
ORDER BY er.risk_score DESC
LIMIT 50;