-- 08 Advanced Sql
-- E-commerce Sales & Customer Analytics | PostgreSQL

WITH category_revenue AS (
    SELECT
        p.product_category_name,
        SUM(oi.price) AS total_revenue
    FROM order_items oi
    JOIN orders o
        ON oi.order_id = o.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    WHERE o.order_status = 'delivered'
    GROUP BY p.product_category_name
),
ranked_categories AS (
    SELECT
        product_category_name,
        total_revenue,
        DENSE_RANK() OVER (
            ORDER BY total_revenue DESC
        ) AS revenue_rank
    FROM category_revenue
)
SELECT
    product_category_name,
    ROUND(total_revenue, 2) AS total_revenue
FROM ranked_categories
WHERE revenue_rank = 2;

WITH monthly_sales AS (
    SELECT
        DATE_TRUNC(
            'month', o.order_purchase_timestamp
        )::DATE AS order_month,
        SUM(oi.price) AS revenue
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY DATE_TRUNC(
        'month', o.order_purchase_timestamp
    )::DATE
),
sales_comparison AS (
    SELECT
        order_month,
        revenue,
        LAG(revenue) OVER (
            ORDER BY order_month
        ) AS previous_month_revenue
    FROM monthly_sales
)
SELECT
    order_month,
    ROUND(revenue, 2) AS revenue,
    ROUND(previous_month_revenue, 2) AS previous_month_revenue,
    ROUND(
        100.0 * (revenue - previous_month_revenue)
        / NULLIF(previous_month_revenue, 0),
        2
    ) AS growth_percentage
FROM sales_comparison
ORDER BY order_month;

WITH product_sales AS (
    SELECT
        p.product_category_name,
        oi.product_id,
        SUM(oi.price) AS total_revenue
    FROM order_items oi
    JOIN orders o
        ON oi.order_id = o.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    WHERE o.order_status = 'delivered'
    GROUP BY
        p.product_category_name,
        oi.product_id
),
ranked_products AS (
    SELECT
        product_category_name,
        product_id,
        total_revenue,
        DENSE_RANK() OVER (
            PARTITION BY product_category_name
            ORDER BY total_revenue DESC
        ) AS product_rank
    FROM product_sales
)
SELECT
    product_category_name,
    product_id,
    ROUND(total_revenue, 2) AS total_revenue,
    product_rank
FROM ranked_products
WHERE product_rank <= 3
ORDER BY product_category_name, product_rank;
