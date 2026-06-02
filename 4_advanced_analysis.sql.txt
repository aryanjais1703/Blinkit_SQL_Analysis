-- 1. Rank categories by revenue

WITH category_revenue AS
(
    SELECT
        p.category,
        ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue
    FROM order_items oi
    JOIN products p
    ON oi.product_id = p.product_id
    GROUP BY p.category
)

SELECT
    category,
    revenue,
    RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
FROM category_revenue;

-- 2. Top 3 products in each category

WITH product_sales AS
(
    SELECT
        p.category,
        p.product_name,
        SUM(oi.quantity) AS units_sold
    FROM products p
    JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY p.category, p.product_name
),

ranked_products AS
(
    SELECT
        category,
        product_name,
        units_sold,
        DENSE_RANK() OVER
        (
            PARTITION BY category
            ORDER BY units_sold DESC
        ) AS product_rank
    FROM product_sales
)

SELECT *
FROM ranked_products
WHERE product_rank <= 3
ORDER BY category, product_rank;

-- 3. Customer spending tiers

SELECT
    customer_name,
    total_spent,
    CASE
        WHEN total_spent >= 15000 THEN 'High Value'
        WHEN total_spent >= 8000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_tier
FROM
(
    SELECT
        c.customer_name,
        SUM(o.order_total) AS total_spent
    FROM customers c
    JOIN orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name
) customer_spending
ORDER BY total_spent DESC;

-- 4. Products above average price

SELECT
    product_name,
    price
FROM products
WHERE price >
(
    SELECT AVG(price)
    FROM products
)
ORDER BY price DESC;

-- Concepts Used

-- CTE
-- CASE WHEN
-- Subquery
-- Window Functions
-- RANK()
-- DENSE_RANK()
-- PARTITION BY