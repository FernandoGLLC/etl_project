SELECT 
    cinema_code,
    ROUND(AVG(occu_perc), 2) AS avg_occupancy
FROM master_model
GROUP BY cinema_code
ORDER BY avg_occupancy