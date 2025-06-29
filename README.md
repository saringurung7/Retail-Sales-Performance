# Title: Retail Sales Performance Dashboard with End-to-End ETL and Analysis
![Image](https://github.com/user-attachments/assets/b10a49ae-df0d-429a-ac70-23d739cb4741)

![Image](https://github.com/user-attachments/assets/c40c6b8c-e588-4851-80d3-9288b722055d)

![Image](https://github.com/user-attachments/assets/e8dae8b1-14d5-4cc4-bc83-6201ec68384c)

📝 Objective:
To evaluate and visualize retail sales performance using an automated end-to-end pipeline: from data extraction, transformation, and loading (ETL) to structured SQL analysis and insightful Power BI dashboarding.

🏛️ Business Scope

The goal is to enable data-driven decision-making for retail strategy by analyzing sales and profit performance across:

Products and Sub-Categories

Time Periods (Month-over-Month and Year-over-Year)

Geographic Regions

🧰 Data Pipeline Overview (ETL Process)

Extract:

Automated dataset download from Kaggle API.

Integration with Python (Jupyter Notebook) to begin preprocessing.

Transform:

Cleaned raw data using Pandas (null handling, type conversion, feature engineering).

Derived necessary metrics (e.g., sales, profit) and formatted dates.

Load:

Inserted structured data into MySQL using SQLAlchemy.

Ensured referential integrity and indexing for optimized queries.

🔢 SQL Analysis

Performed business-critical analysis using advanced SQL queries with techniques like:

CTEs (Common Table Expressions)

Window Functions (ROW_NUMBER)

CASE Statements

Aggregates and Grouping

Key Insights Derived:

Top 10 Highest Revenue-Generating Products:

Identified using SUM and ORDER BY clauses.

Top 5 Best-Selling Products per Region:

Used ROW_NUMBER() OVER(PARTITION BY region) to rank products regionally.

Month-over-Month Sales Comparison (2022 vs 2023):

Pivoted sales using CASE WHEN for cross-year comparison.

Peak Sales Month by Category:

Derived using ROW_NUMBER() per category on monthly sales.

Highest Growth Sub-Category (YoY Profit %):

Calculated growth using safe division with NULLIF().

📊 Power BI Dashboard Insights

Quantified Insights (from dashboard):

Total Sales 2023: 11.2M vs 2022: 10.95M → +2.3% Growth

February 2023: +42.2% YoY Growth

Top Revenue Product: TEC-CO-10004722 with ~59.5K in sales

Top Sub-Category: Phones with 318K units

Highest Regional Profit Contribution: West (30.49%)

Lowest Performing Month (YoY): June 2023 with -26.8% decline vs June 2022

💡 Business Value Delivered

A centralized view of product, region, and time-based sales performance.

Identified high-performing and underperforming areas for optimization.

Built automation-friendly ETL & SQL logic for scalability.

Enabled interactive, non-technical user engagement via dashboards.

🔧 Tools & Tech Stack

Data Extraction: Kaggle API

Data Transformation: Python (Pandas, SQLAlchemy)

Data Storage: MySQL

Data Analysis: SQL (MySQL)

Visualization: Power BI

👨‍💼 Summary

This project highlights complete ownership of the data lifecycle: from sourcing and wrangling raw data to deriving insights and presenting them through an interactive executive dashboard. Ideal for retail analysts, business stakeholders, or operations managers seeking a clear 360° view of sales trends.


