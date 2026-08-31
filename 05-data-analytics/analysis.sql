-- 1. Deal pipeline by stage
SELECT stage, COUNT(*) AS deals, ROUND(SUM(deal_size_usd_mm),1) AS pipeline_usd_mm
FROM deals GROUP BY stage ORDER BY deals DESC;

-- 2. Average days in stage by sector
SELECT sector, ROUND(AVG(days_in_stage),1) AS avg_days_in_stage
FROM deals GROUP BY sector ORDER BY avg_days_in_stage DESC;

-- 3. Approval rate by sector
SELECT sector,
       ROUND(100.0 * SUM(CASE WHEN stage='Approved' THEN 1 ELSE 0 END) / COUNT(*),1) AS approval_rate_pct
FROM deals GROUP BY sector ORDER BY approval_rate_pct DESC;

-- 4. Investments materially below revenue-growth thesis
SELECT investment_id, company, sector,
       ROUND(target_revenue_growth*100,1) AS target_growth_pct,
       ROUND(actual_revenue_growth*100,1) AS actual_growth_pct,
       ROUND(revenue_growth_variance*100,1) AS variance_pp,
       exception_severity
FROM portfolio_performance
WHERE revenue_growth_variance <= -0.05
ORDER BY revenue_growth_variance;

-- 5. Exception concentration
SELECT sector, exception_severity, COUNT(*) AS investments
FROM portfolio_performance
WHERE exception_severity <> 'None'
GROUP BY sector, exception_severity
ORDER BY sector, exception_severity;
