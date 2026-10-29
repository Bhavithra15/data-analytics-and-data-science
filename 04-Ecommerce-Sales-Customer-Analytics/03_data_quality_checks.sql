-- 03 Data Quality Checks
-- E-commerce Sales & Customer Analytics | PostgreSQL

SELECT
    COUNT(*) AS total_orders,
    COUNT(*) FILTER (
        WHERE customer_id IS NULL
    ) AS missing_customer_id,
    COUNT(*) FILTER (
        WHERE order_purchase_timestamp IS NULL
    ) AS missing_purchase_date,
    COUNT(*) FILTER (
        WHERE order_delivered_customer_date IS NULL
    ) AS missing_delivery_date
FROM orders;

SELECT order_id, COUNT(*) AS occurrences
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT customer_id, COUNT(*) AS occurrences
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT *
FROM order_items
WHERE price < 0
   OR freight_value < 0;

SELECT COUNT(*) AS missing_or_invalid_prices
FROM order_items
WHERE price IS NULL
   OR freight_value IS NULL;

SELECT COUNT(*) AS orders_without_customer
FROM orders o
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

SELECT COUNT(*) AS items_without_order
FROM order_items oi
LEFT JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;

SELECT *
FROM reviews
WHERE review_score NOT BETWEEN 1 AND 5
   OR review_score IS NULL;
