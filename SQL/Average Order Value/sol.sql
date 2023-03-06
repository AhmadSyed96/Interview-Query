SELECT
    sex,
    ROUND(AVG(price*quantity),2) as aov
FROM
    transactions
JOIN
    users ON transactions.user_id = users.id
JOIN
    products ON transactions.product_id = products.id
GROUP BY 
    1