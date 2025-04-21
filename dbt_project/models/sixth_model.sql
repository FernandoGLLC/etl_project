SELECT 
   film_code,
   AVG(occu_perc) AS avg_occupancy_per_film,
   SUM(tickets_sold) AS tot_tickets_sold
FROM master_model
GROUP BY film_code
ORDER BY avg_occupancy_per_film DESC