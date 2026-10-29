# E-commerce Sales & Customer Analytics (PostgreSQL)

## Project overview
A portfolio SQL project using the Olist Brazilian E-Commerce Public Dataset to explore delivered-order revenue, monthly sales, product categories, customer spending, repeat customers, and ranking/window-function analyses.

## Tools
- PostgreSQL
- pgAdmin
- SQL: joins, aggregations, CTEs, `DENSE_RANK()`, `LAG()`, conditional counts

## Dataset
Use the Olist Brazilian E-Commerce Public Dataset from Kaggle. Download it from Kaggle yourself and follow the dataset's terms. The raw dataset is not included in this repository.

## Database tables
The scripts expect these tables to be imported into a PostgreSQL database:
`customers`, `orders`, `order_items`, `products`, `payments`, `reviews`, and `sellers`.

## Suggested run order
1. `01_table_setup.sql` — create the tables (run only if they do not already exist).
2. Import the CSV data into the matching tables using pgAdmin.
3. `02_row_counts.sql` — inspect row counts.
4. `03_data_quality_checks.sql` — run basic quality and relationship checks.
5. `04_sales_kpis.sql` — calculate delivered-order revenue, delivered orders, and average order value.
6. `05_monthly_revenue.sql` — inspect monthly revenue and the highest-revenue month.
7. `06_product_category_analysis.sql` — rank categories by revenue.
8. `07_customer_analysis.sql` — inspect top-spending and repeat customers.
9. `08_advanced_sql.sql` — use CTEs and window functions for category ranking, month-over-month comparison, and top products within categories.

The `ecommerce_analysis.sql` file contains the complete set of queries in one master script. If tables already exist, skip its `CREATE TABLE` section or use the individual analysis files.

## Verified project figures recorded during the project
- Delivered product-price revenue: **13,221,498.11**
- Delivered orders: **96,478**
- Average product-price revenue per delivered order: **137.04**
- Highest-revenue purchase month in the query output shared: **November 2017 — 987,765.37**

These figures use `order_status = 'delivered'` and sum `order_items.price`; freight is excluded. Monthly revenue is grouped by purchase month for orders whose current status is delivered. Treat the figures as outputs from this project run, not as universal figures for every version or import of the dataset.

## Notes and limitations
- The month-over-month query uses `LAG()` over months present in the grouped result. If a calendar month has no qualifying rows, `LAG()` compares with the previous available month, not necessarily the previous calendar month.
- The revenue queries use product item prices and exclude freight and payment adjustments.
- Query outputs for top categories, top customers, repeat-customer counts, and ranked products should be added to the README only after you record and verify the results in pgAdmin.

## GitHub upload checklist
- Upload the SQL files and this README.
- Do not upload the raw CSV dataset unless you have checked the dataset license and repository size requirements.
- Add screenshots of selected query outputs to a `screenshots/` folder if you want visual evidence of the results.
