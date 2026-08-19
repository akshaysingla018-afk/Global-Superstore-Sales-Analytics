-- Global Superstore Sales Analytics
-- Reconstructed SQL portfolio queries
-- Note: The original SQL query file was not retained. These queries were
-- reconstructed from the internship task list and the cleaned dataset.
-- SQL dialect: MySQL 8+
--
-- Expected table name: global_superstore
--
-- Main columns used:
-- order_id, order_date, ship_mode, customer_name, market, region,
-- product_id, category, sub_category, product_name, sales, discount, profit

USE global_superstore_db;

-- 1. Top 10 profitable products
SELECT
    product_id,
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM global_superstore
GROUP BY product_id, product_name
ORDER BY total_profit DESC
LIMIT 10;


-- 2. Top 10 customers by sales
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM global_superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- 3. Region-wise total sales
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales
FROM global_superstore
GROUP BY region
ORDER BY total_sales DESC;


-- 4. Category-wise average profit
SELECT
    category,
    ROUND(AVG(profit), 2) AS average_profit
FROM global_superstore
GROUP BY category
ORDER BY average_profit DESC;


-- 5. Category with the highest average discount
SELECT
    category,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percent
FROM global_superstore
GROUP BY category
ORDER BY average_discount_percent DESC
LIMIT 1;


-- 6. Orders / order lines with negative profit
SELECT
    order_id,
    customer_name,
    product_name,
    ROUND(sales, 2) AS sales,
    ROUND(profit, 2) AS profit
FROM global_superstore
WHERE profit < 0
ORDER BY profit ASC;


-- 7. Monthly sales trend
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(sales), 2) AS total_sales
FROM global_superstore
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY sales_month;


-- 8. Market-wise revenue analysis
SELECT
    market,
    ROUND(SUM(sales), 2) AS total_revenue
FROM global_superstore
GROUP BY market
ORDER BY total_revenue DESC;


-- 9. Top-performing sub-categories by total profit
SELECT
    sub_category,
    ROUND(SUM(profit), 2) AS total_profit
FROM global_superstore
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 10;


-- 10. Ship mode usage analysis
SELECT
    ship_mode,
    COUNT(*) AS order_lines,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM global_superstore),
        2
    ) AS usage_percent
FROM global_superstore
GROUP BY ship_mode
ORDER BY order_lines DESC;


-- Additional useful business-insight queries

-- A. Total sales, profit, and average discount
SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percent
FROM global_superstore;


-- B. Count of distinct orders
SELECT
    COUNT(DISTINCT order_id) AS distinct_orders
FROM global_superstore;


-- C. Top 10 loss-making products by total profit
SELECT
    product_id,
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM global_superstore
GROUP BY product_id, product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;


-- D. Region-wise profit
SELECT
    region,
    ROUND(SUM(profit), 2) AS total_profit
FROM global_superstore
GROUP BY region
ORDER BY total_profit DESC;


-- E. Category-wise sales and profit
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM global_superstore
GROUP BY category
ORDER BY total_sales DESC;
