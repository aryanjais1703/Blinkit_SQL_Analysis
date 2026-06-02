-- 1. Revenue by customer type

SELECT
    c.customer_type,
    ROUND(SUM(o.order_total),2) AS total_revenue,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_type
ORDER BY total_revenue DESC;

-- 2. Revenue by payment method

SELECT
    payment_method,
    ROUND(SUM(order_total),2) AS total_revenue,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- 3. Top 10 spending customers

SELECT
    c.customer_name,
    ROUND(SUM(o.order_total),2) AS total_spent,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- 4. Revenue by category

SELECT
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS total_revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 5. Best selling products

SELECT
    p.product_name,
    SUM(oi.quantity) AS units_sold
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY units_sold DESC
LIMIT 10;

-- 6. Delivery performance

SELECT
    delivery_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY delivery_status
ORDER BY total_orders DESC;

-- 7. Underperforming categories

SELECT
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS total_revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue ASC
LIMIT 5;


-- Key Findings

-- Regular customers generated the highest revenue
-- Card was the top payment method by revenue
-- Dairy & Breakfast was the highest revenue category
-- Baby Food and Baby Wipes were top-selling products
-- 69.4% of deliveries were completed on time
-- Instant & Frozen Food was the lowest revenue category