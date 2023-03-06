WITH trans_w_prod_names as
    (SELECT
        transactions.id,
        created_at,
        user_id,
        name
    FROM
        transactions
    JOIN
        products ON transactions.product_id = products.id)
SELECT
    least(t1.name, t2.name) as p1, greatest(t1.name, t2.name) as p2, count(*)/2 as qty
FROM
    trans_w_prod_names t1
JOIN
    trans_w_prod_names t2 USING(user_id, created_at)
WHERE
    t1.id != t2.id
GROUP BY
    1,2
ORDER BY
    3 DESC, 2
LIMIT
    5