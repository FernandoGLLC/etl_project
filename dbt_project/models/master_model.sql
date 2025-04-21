SELECT
    film_code,
    cinema_code,
    ROUND(total_sales / 100.0, 2) AS total_revenue_usd,
    tickets_sold,
    tickets_out,
    show_time,
    occu_perc,
    ticket_use,
    capacity,
    date,
    month,
    quarter,
    day
FROM cinema_tickets
