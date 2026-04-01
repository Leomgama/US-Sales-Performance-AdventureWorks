# U.S. Sales Performance Analysis — AdventureWorksDW2022

## 🏢 Business Problem
Adventure Works Cycles, a fictional multinational bicycle manufacturer, 
needed a clear picture of its U.S. sales performance. This project 
analyzes regional performance, product profitability, and revenue trends 
across 5 U.S. regions — answering key business questions through SQL 
and interactive Power BI dashboards.

## ❓ Business Questions
1. What is the total revenue, cost, and profit from U.S. sales in USD?
2. Which regions generate the highest revenue and profit?
3. Which products and categories contribute most to revenue and profit?
4. What is the profitability margin across regions and products?
5. How has revenue and profit evolved over time?

## 📊 Key Results
| Metric | Value |
|---|---|
| Total Revenue | $9.39M |
| Total Profit | $3.91M |
| Average Profit Margin | 41.5% |
| Transactions Analyzed | 21,318 |
| Regions Covered | 5 U.S. Regions |
| Top Margin Category | Accessories (~62.6%) |
| Top Margin Product | Mountain Bikes (~45.4%) |

## 💡 Key Insights
- Southwest and Northwest led revenue and profit across all years
- Accessories (~62.6% margin) were the strongest profitability driver
  despite lower total revenue — outperforming Bikes on efficiency
- Mountain Bikes (~45.4%) led product-level profitability by volume
- Pareto analysis showed top 27 SKUs generated ~80% of total revenue
- Southeast showed highest margin efficiency (43.9%) despite lower volume
  — signaling strong growth potential if scaled
- Clear seasonality identified: peaks in June, October, and December

## 🔧 Technologies Used
- SQL Server (SSMS) — data extraction, filtering, validation
- Power BI + DAX — 20 custom measures, 3 interactive dashboards
- Power Query (M) — data transformation and modeling
- Snowflake schema data model

## 📁 Project Structure

**US-Sales-Performance-AdventureWorks/**
- SQL Scripts/ — Queries used for analysis and validation
- Dashboard/ — Power BI .pbix file
- Screenshots/ — Dashboard visualizations
- Docs/ — Final report PDF
- .gitignore

## 📂 Data Source
AdventureWorksDW2022 — Microsoft sample database
Used strictly for educational and analytical purposes.

## 👤 Author
**Leonardo Gama** · [LinkedIn](https://www.linkedin.com/in/leonardo-gama-a99648279/) · [GitHub](https://github.com/Leomgama)
