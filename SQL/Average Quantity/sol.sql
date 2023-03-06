SELECT
    YEAR(created_at) as 'year',
    product_id,
    ROUND(AVG(quantity),2) as avg_quantity
FROM
    transactions
GROUP BY
    1,2
ORDER BY
    1,2