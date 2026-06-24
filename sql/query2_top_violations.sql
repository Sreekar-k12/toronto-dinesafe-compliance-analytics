USE toronto_dinesafe;

-- ============================================================
-- Query 2: Top 10 Most Common Violations
-- KPI-07: Which violation categories occur most frequently?
-- Business use: Identifies where to focus training programs
-- ============================================================

SELECT
    deficiency_desc                             AS violation_category,
    COUNT(*)                                    AS violation_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*))
          OVER(), 1)                            AS pct_of_all_violations,
    COUNT(DISTINCT est_id)                      AS establishments_affected
FROM inspections
WHERE deficiency_desc IS NOT NULL
GROUP BY deficiency_desc
ORDER BY violation_count DESC
LIMIT 10;