USE toronto_dinesafe;

-- ============================================================
-- Query 5: Violation Severity Breakdown
-- KPI-06: What is the ratio of crucial to minor violations?
-- Business use: Understand severity profile of non-compliance
-- ============================================================

SELECT
    severity,
    COUNT(*)                                        AS violation_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*))
          OVER(), 1)                                AS pct_of_total,
    COUNT(DISTINCT est_id)                          AS establishments_affected,
    ROUND(COUNT(*) * 1.0 /
          COUNT(DISTINCT est_id), 1)                AS avg_per_establishment
FROM inspections
WHERE severity IS NOT NULL
GROUP BY severity
ORDER BY
    CASE severity
        WHEN 'C - Crucial'      THEN 1
        WHEN 'S - Significant'  THEN 2
        WHEN 'M - Minor'        THEN 3
    END;