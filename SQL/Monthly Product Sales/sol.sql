SELECT
    DATE(month) as month,
    SUM(CASE WHEN product_id = 1 THEN amount_sold END) AS '1',
    SUM(CASE WHEN product_id = 2 THEN amount_sold END) AS '2',
    SUM(CASE WHEN product_id = 3 THEN amount_sold END) AS '3',
    SUM(CASE WHEN product_id = 4 THEN amount_sold END) AS '4'
FROM
    monthly_sales
GROUP BY
    1