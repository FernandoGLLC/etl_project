🎬 Cinema Revenue Analysis & Business Insights with SQL + Power BI
This project analyzes a Mexican cinema chain’s ticketing dataset to uncover key business insights using SQL and visualizes findings with Power BI. The goal was to clean, transform, and model the data to support strategic decisions on film distribution, cinema performance, and revenue optimization.

🔧 Tools Used
SQLite / DuckDB – SQL data transformation and modeling

Power BI – Interactive dashboards and visualizations

VS Code – Project organization and GitHub integration

GitHub – Project versioning and showcase

📁 Dataset Overview
The raw dataset cinema_tickets.csv includes fields like:

film_code

cinema_code

total_sales (in MXN cents)

tickets_sold, tickets_out

occu_perc (occupancy %)

ticket_price

show_time

date

After transformation, values like revenue were converted into USD, and new time features (day, month, quarter) were extracted for temporal analysis.

📊 Analytical Models (SQL Views)
Model 1 – Master Model:
Cleans and prepares the data for all subsequent models, including currency conversion and time breakdown.

Model 2 – Top Cinemas by Total Revenue:
Aggregates revenue per cinema to identify the highest-grossing venues.

Model 3 – Film Performance:
Shows total revenue per film and number of cinemas where each film was screened.

Model 4 – Monthly Revenue by Cinema:
Creates a time series to visualize revenue trends per cinema.

Model 5 – Occupancy Rates by Cinema:
Calculates average occupancy to evaluate efficiency of seating.

Model 6 – Occupancy & Tickets Sold by Film:
Highlights how well-attended each film is on average and total audience reach.

Model 7 – Daily Revenue Trends:
Tracks revenue by day to detect peak days and business cycles.

📈 Dashboard Features (Power BI)
The Power BI dashboard includes:

Time series line charts of daily/monthly revenue

Bar charts for top cinemas and top films by revenue

Matrix and cards showing occupancy, ticket volume, and revenue in millions

Slicer filters for flexible exploration by film, cinema, and time period

📌 Key Insight & Business Recommendation
Insight: Film 1493 was shown in 20+ more cinemas than Films 1484 and 1483 combined, yet generated significantly less revenue.

Recommendation: Reallocate screen time away from underperforming films toward high-performing titles to maximize profitability and resource efficiency.

📂 Repository Structure
java
Copiar
Editar
📁 cinema-analysis/
├── data/
│   └── cinema_tickets.csv
├── models/
│   └── SQL views (models 1–7)
├── visuals/
│   └── Power BI .pbix file or screenshots
├── README.md
📬 Contact
Made by Fernando — MS in Business Analytics @ USC
Feel free to connect or reach out for collaboration!