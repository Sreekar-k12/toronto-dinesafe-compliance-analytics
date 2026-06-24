USE toronto_dinesafe;

-- ============================================================
-- Query 6: Monthly Inspection Trend
-- KPI-08: How have inspections trended over time?
-- Business use: Shows inspection activity patterns by month
-- ============================================================

SELECT
    inspection_year,
    inspection_month,
    inspection_month_name,
    COUNT(DISTINCT unique_id)               AS total_inspections,
    SUM(CASE WHEN inspection_status = 'Pass'
             THEN 1 ELSE 0 END)            AS pass_count,
    SUM(CASE WHEN inspection_status = 'Conditional Pass'
             THEN 1 ELSE 0 END)            AS conditional_count,
    SUM(CASE WHEN inspection_status = 'Closed'
             THEN 1 ELSE 0 END)            AS closed_count,
    ROUND(SUM(CASE WHEN inspection_status = 'Pass'
             THEN 1 ELSE 0 END) * 100.0 /
          COUNT(DISTINCT unique_id), 1)    AS pass_rate_pct
FROM inspections
GROUP BY inspection_year, inspection_month, inspection_month_name
ORDER BY inspection_year, inspection_month;