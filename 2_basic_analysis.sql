-- 1. Total customers

SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Total products

SELECT COUNT(*) AS total_products
FROM products;

-- 3. Total orders

SELECT COUNT(*) AS total_orders
FROM orders;

-- 4. Customer types

SELECT DISTINCT customer_type
FROM customers;

-- 5. Product categories

SELECT DISTINCT category
FROM products;

-- 6. Payment methods

SELECT DISTINCT payment_method
FROM orders;

-- 7. Delivery status

SELECT DISTINCT delivery_status
FROM orders;

-- 8. Total revenue

SELECT ROUND(SUM(order_total),2) AS total_revenue
FROM orders;

-- 9. Average order value

SELECT ROUND(AVG(order_total),2) AS average_order_value
FROM orders;

-- 10. Highest order value

SELECT MAX(order_total) AS highest_order_value
FROM orders;

-- 11. Lowest order value

SELECT MIN(order_total) AS lowest_order_value
FROM orders;

-- 12. Orders by payment method

SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM orders
GROUP BY payment_method
ORDER BY total_orders DESC;

-- 13. Customers by type

SELECT
    customer_type,
    COUNT(*) AS total_customers
FROM customers
GROUP BY customer_type
ORDER BY total_customers DESC;

-- 14. Products by category

SELECT
    category,
    COUNT(*) AS total_products
FROM products
GROUP BY category
ORDER BY total_products DESC;

-- Results

-- Total Customers: 2500
-- Total Products: 268
-- Total Orders: 5000
-- Total Revenue: 11009308.50
-- Average Order Value: 2201.86