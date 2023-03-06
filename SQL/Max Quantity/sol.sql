SELECT
    YEAR(created_at) as "year",
    product_id,
    MAX(quantity) AS max_quantity
FROM
    transactions
GROUP BY
    1,2
ORDER BY
    1,2