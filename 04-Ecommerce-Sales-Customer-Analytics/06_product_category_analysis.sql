-- 06 Product Category Analysis
-- E-commerce Sales & Customer Analytics | PostgreSQL

SELECT
    COALESCE(p.product_category_name, 'Unknown') AS category,
    ROUND(SUM(oi.price), 2) AS total_revenue,
    COUNT(DISTINCT oi.order_id) AS total_orders
FROM order_items oi
JOIN orders o
    ON oi.order_id = o.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'delivered'
GROUP BY COALESCE(p.product_category_name, 'Unknown')
ORDER BY total_revenue DESC
LIMIT 10;
