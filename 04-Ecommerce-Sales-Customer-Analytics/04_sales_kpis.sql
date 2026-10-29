-- 04 Sales Kpis
-- E-commerce Sales & Customer Analytics | PostgreSQL

SELECT
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered';

SELECT
    COUNT(*) AS total_delivered_orders
FROM orders
WHERE order_status = 'delivered';

SELECT
    ROUND(SUM(oi.price) / COUNT(DISTINCT o.order_id), 2)
        AS average_order_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered';
