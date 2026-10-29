-- 05 Monthly Revenue
-- E-commerce Sales & Customer Analytics | PostgreSQL

SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp)::DATE
        AS order_month,
    ROUND(SUM(oi.price), 2) AS monthly_revenue,
    COUNT(DISTINCT o.order_id) AS delivered_orders
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATE_TRUNC('month', o.order_purchase_timestamp)::DATE
ORDER BY order_month;

SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp)::DATE
        AS order_month,
    ROUND(SUM(oi.price), 2) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY DATE_TRUNC('month', o.order_purchase_timestamp)::DATE
ORDER BY monthly_revenue DESC
LIMIT 1;
