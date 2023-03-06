WITH cte as
    (SELECT
        *,
        ROW_NUMBER() OVER(ORDER BY created_at) AS rn
    FROM
        transactions)
SELECT
    created_at, product_id
FROM
    cte
WHERE
    MOD(rn,4) = 0