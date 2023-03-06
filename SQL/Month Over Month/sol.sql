SELECT
    MONTH(created_at) as "month",
    ROUND((SUM(price*quantity) /
    LAG(SUM(price*quantity)) OVER(ORDER BY created_at))-1,2) as month_over_month
FROM
    transactions
JOIN
    products ON products.id = transactions.product_id
WHERE
    YEAR(created_at) = 2019
GROUP BY 
    1