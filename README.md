
## Too long didn't read (TL;DR):

This project showcases an end-to-end **ELT (Extract, Load, Transform)** data pipeline for cinema ticket sales data. The goal was to simulate a real-world business case where raw operational data is transformed into actionable insights through structured modeling and visual storytelling. 

- **Extract**: Raw CSV files (downloaded from Kaggle) were extracted into Python for light inspection.
- **Load**: Cleaned datasets were loaded into a **DuckDB** database as a source "warehouse".
- **Transform**: Used **dbt** to transform the data using **SQL** to aggregate and build the **data models**.
- **Visualize**: Final models were connected to **Power BI**, where insights were visualized in an interactive dashboard.


## 🛠️ Tools Used:

- **DuckDB** – for fast, local database storage and querying.
- **dbt** – to manage data transformations and model building using SQL.
- **SQL** - for data wrangling and aggregation to finally build 7 data models.
- **Python** - for initial data preparation and scripting.
- **Power BI** – for building the final interactive dashboard and visuals. Look at the dashboards here: https://app.powerbi.com/view?r=eyJrIjoiNTAzN2ZhYjEtZGQyOS00N2M1LThhYzEtZDg2YTcxNDQzNGFjIiwidCI6IjlkZGFhY2ExLTM4OWYtNGNiMS1hMTEzLTA4MWJlNmNjMjVmYyIsImMiOjZ9


## 🧱  Each model explanation:

**Base Model**
Standardized the raw dataset into a clean, usable format. Converted total_sales from cents to dollars, dropped irrelevant or misleading columns considering my future analysis.


**2nd model/Top Cinemas by Revenue**

What it does: Ranks the top 15 cinemas based on total revenue.

Business Question: Which cinemas generate the most revenue?

Key takeways from dashboard: 

- cinema_code 448 is by far the most succesful with 107M, more than doubling 2nd highest performer. 
- There's a major revenue drop-off after the top 2 cinemas.
- 8 of the top 10 cinemas generate less than a third of the revenue of the market leader (cinema 448), suggesting a highly concentrated market where one or two locations dominate.


**3rd model/Revenue & Cinema Distribution by Film**

What it does: Lists each film, the number of cinemas it's shown in, and the total revenue (in millions).

Business Question: How widely was each film distributed, and how much revenue did it generate?

Key takeways from dashboard: 

- Top film with highest revenue is also the one with the highest number of cinemas playing it. Film 1554 --> 212 cinemas.
- Film 1493 made less revenue than film 1484 and 1483 yet film 1493 is being played in 20+ more cinemas than both 1484 and 1483 combined. Difference between 1493 and 1484 --> around $3 million. Difference between 1493 and 1483 --> around $6 million.
- Film 1556 is played in more cinemas than 6 out of the Top 8 most lucrative films in terms of revenue. 


**4th model/Monthly Cinema Revenue**

What it does: Shows monthly revenue trends for Top 5 cinemas (revenue) from February to November 2018.

Business Question: How well are cinemas performing monthly, and are there seasonal trends in cinema revenue?

Key takeaways from dashboard:

- Cinema 524 consistently generates the highest monthly revenue, showing significant peaks around months 4 (April), 7-8 (July-August), and 10 (October), with revenues reaching a max of $18M during peak months.
- All cinemas display similar seasonal patterns with roughly three revenue peaks throughout the year, likely corresponding to major film releases or holiday periods, followed by notable dips in months 6 (June) and 9 (September).


**5th model/Cinema Occupancy Rates**

What it does: Calculates the average occupancy rate per cinema to assess how well they utilize available seating on average.

Business Question: Which cinemas have the highest average occupancy rates?

Key takeaways from dashboard:

- Cinema 474 leads significantly with 64% average occupancy, followed by cinema 390 at 59%. These two venues clearly outperform all others with occupancy rates well above 50%.
- Most cinemas in this top 15 list operate at 35-40% average occupancy, suggesting that even among the best-performing venues, they typically run with more than half their seats empty.
- Four cinemas (316, 304, 430, and 524) all share the exact same occupancy rate of 40%.


**6th model/Film Occupancy Analysis**

What it does: Analyzes average occupancy and total tickets sold per film. Helps identify which films consistently drew large audiences.

Business Question: Which films attracted the highest average occupancy across all their screenings?

Key takeaways from dashboard:

- As expected there is a general positive correlation between occupancy and ticket sales. In other words, as occupancy increases, the number of tickets sold tends to increase as well, though with significant variability.


**7th model/Daily Cinema Revenue**

What it does: Tracks daily revenue per cinema to identify short-term performance spikes or dips.

Business Question: Which cinemas generate the most revenue on a daily basis?

Key takeaways:

- Cinema 448 is a clear top performer. Opens discussion on investigating why, could be due location, seating capacity, or number of shows played. 
- Strong weekly seasonality, spikes every 7 days. Suggesting weekends are high revenue days. 
- April, July and October show highest revenue. Possible whys include blockbuster release windows around those dates, school breaks, or even favorable weather. 


**🧼 Data Issues & Fixes**

**Ticket Price Anomaly**: The original dataset included a ticket_price column that, when multiplied by tickets_sold, produced unrealistically high totals. After inspection, we discovered total_sales was actually in USD cents.

**Fix**: Converted total_sales by dividing by 100 and dropped the misleading ticket_price column.

