SELECT
    users.name as users_less_than
FROM
    transactions
JOIN
    products ON transactions.product_id = products.id
JOIN
    users ON transactions.user_id = users.id
GROUP BY
    1
HAVING
    COUNT(*) < 3
    OR SUM(quantity*price) < 500