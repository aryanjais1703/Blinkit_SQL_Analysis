-- 1. Check missing customer names

SELECT *
FROM customers
WHERE customer_name IS NULL;

-- 2. Check missing product names

SELECT *
FROM products
WHERE product_name IS NULL;

-- 3. Check duplicate customer IDs

SELECT
    customer_id,
    COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- 4. Check duplicate product IDs

SELECT
    product_id,
    COUNT(*)
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

-- 5. Check customer types

SELECT DISTINCT customer_type
FROM customers;

-- 6. Check product categories

SELECT DISTINCT category
FROM products;

-- 7. Check payment methods

SELECT DISTINCT payment_method
FROM orders;

-- 8. Check delivery status

SELECT DISTINCT delivery_status
FROM orders;

-- 9. Check negative order values

SELECT *
FROM orders
WHERE order_total < 0;

-- 10. Check negative product prices

SELECT *
FROM products
WHERE price < 0;


-- Results

-- No missing values found in key columns
-- No duplicate IDs found
-- No negative prices or order values found
-- Customer types, categories, payment methods, and delivery statuses were validated