-- models/base_model.sql
SELECT
    film_code,
    cinema_code,
    ticket_price AS total_revenue,
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
