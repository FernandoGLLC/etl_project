SELECT
    CAST(cinema_code AS TEXT) AS cinema_code,
    month,
    SUM(total_revenue_usd) AS monthly_revenue
FROM master_model
GROUP BY cinema_code, month
ORDER BY month