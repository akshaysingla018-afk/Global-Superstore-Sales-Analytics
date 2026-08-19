# Global Superstore Sales Analytics

## Project Overview

This project demonstrates an end-to-end business data analytics workflow using a Global Superstore-style e-commerce dataset. The work covers data cleaning, Excel analysis, SQL analysis, and Power BI dashboarding.

The project was completed as part of a Data Analysis internship program with Primeor Solutions.

## Dataset

The cleaned dataset contains **51,271 records** and 21 fields covering orders, customers, products, sales, discounts, profit, shipping, markets, regions, and dates.

### Key fields
- Order ID and order/ship dates
- Customer and segment
- Market and region
- Category and sub-category
- Product
- Sales, quantity, discount and profit
- Shipping cost and order priority

## Tools

- **Excel** — data cleaning, pivot tables, charts and summary analysis
- **SQL** — business queries and insight generation
- **Power BI** — interactive dashboard development

## Analysis Performed

### Excel
- Removed duplicate records
- Handled missing/null values
- Standardized inconsistent text values
- Corrected date formats and invalid numerical values
- Calculated total sales, total profit and average discount
- Identified top products and loss-making products
- Performed region, segment and monthly trend analysis

### SQL
The SQL analysis covers:
1. Top 10 profitable products
2. Top 10 customers by sales
3. Region-wise total sales
4. Category-wise average profit
5. Highest average discount category
6. Negative-profit orders/order lines
7. Monthly sales trend
8. Market-wise revenue
9. Top-performing sub-categories
10. Shipping-mode usage

The SQL file also contains additional queries for category, region and loss-making product analysis.

> **Note:** The original SQL query file was not retained. The included `.sql` file is a reconstructed portfolio version based on the documented internship task list and the cleaned dataset.

## Power BI Dashboard

The dashboard was designed around three views:

### Executive Overview
- Total Sales
- Total Profit
- Total Orders
- Average Discount

### Sales Analysis
- Sales by Region
- Sales by Market
- Monthly Sales Trend
- Category Performance

### Product & Customer Insights
- Top Products
- Top Customers
- Profit by Sub-category
- Segment Analysis

Dashboard features include KPI cards, slicers/filters and interactive visuals.

## Key Results

Based on the cleaned dataset:

- **Total Sales:** $12.64M
- **Total Profit:** $1.47M
- **Average Discount:** 14.29%
- **Distinct Orders:** 25,029
- **Quantity Sold:** 178,242
- **APAC** generated the highest market sales at approximately **$3.58M**.
- **Central** was the highest-sales region at approximately **$2.82M**.
- **Technology** had the highest average profit per record among the three categories.
- **Furniture** had the highest average discount at approximately **16.80%**.
- **Standard Class** was the most frequently used shipping mode.
- **Copiers** generated the highest total profit among sub-categories.

## Repository Structure

```text
Global-Superstore-Sales-Analytics/
│
├── README.md
├── global_superstore_analysis.sql
├── data/
│   └── cleaned_dataset.xlsx
├── excel/
│   └── excel_analysis.xlsx
├── powerbi/
│   └── global_superstore_dashboard.pbix
└── screenshots/
    └── dashboard.png
```

## Skills Demonstrated

**Excel | SQL | Power BI | Data Cleaning | Data Validation | Business Analytics | Data Visualization | KPI Reporting | Exploratory Data Analysis**
