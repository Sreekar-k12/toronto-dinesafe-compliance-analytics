USE toronto_dinesafe;

-- ============================================================
-- Query 1: Overall Compliance Rate
-- KPI-01: What percentage of inspections result in a Pass?
-- Business use: Headline metric for Public Health Manager
-- ============================================================

SELECT
    inspection_status,
    COUNT(*)                                    AS inspection_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*))
          OVER(), 1)                            AS percentage
FROM inspections
GROUP BY inspection_status
ORDER BY inspection_count DESC;