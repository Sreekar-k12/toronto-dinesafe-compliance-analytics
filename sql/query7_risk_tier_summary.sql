USE toronto_dinesafe;

-- ============================================================
-- Query 7: Risk Tier Summary with Fine Analysis
-- KPI-03: High risk establishment breakdown with enforcement
-- Business use: Links risk levels to actual enforcement outcomes
-- ============================================================

SELECT
    er.risk_tier,
    COUNT(*)                                AS establishment_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*))
          OVER(), 1)                        AS pct_of_total,
    ROUND(AVG(er.risk_score), 1)            AS avg_risk_score,
    SUM(er.total_violations)                AS total_violations,
    ROUND(AVG(er.total_violations), 1)      AS avg_violations,
    SUM(er.crucial_violations)              AS total_crucial,
    SUM(er.is_repeat_offender)              AS repeat_offenders,
    ROUND(SUM(er.total_fined), 2)           AS total_fines_issued,
    ROUND(AVG(er.total_fined), 2)           AS avg_fine_per_establishment
FROM establishment_risk er
GROUP BY er.risk_tier
ORDER BY
    CASE er.risk_tier
        WHEN 'High'   THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Low'    THEN 3
    END;