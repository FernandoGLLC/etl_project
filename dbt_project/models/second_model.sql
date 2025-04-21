SELECT
    cinema_code,
    CAST(ROUND(SUM(total_revenue_usd), 0) AS INT) AS total_revenue_usd
FROM master_model
GROUP BY cinema_code
ORDER BY total_revenue_usd DESC
LIMIT 16