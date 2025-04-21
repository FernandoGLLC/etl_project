SELECT 
    cinema_code,
    date,
    SUM(total_revenue_usd) AS daily_revenue
FROM master_model
GROUP BY cinema_code, date
ORDER by date