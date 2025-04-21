SELECT 
    film_code, 
    COUNT(DISTINCT cinema_code) AS cinemas_playing_movie,
    ROUND(SUM(total_revenue_usd/1000000), 2) AS revenue_per_film_millions
FROM master_model
GROUP BY film_code
ORDER BY revenue_per_film_millions DESC