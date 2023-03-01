WITH cte as
    (SELECT
        bt1.user_id as user_id_1,
        bt2.user_id as user_id_2
    FROM
        bank_transactions bt1
    JOIN
        bank_transactions bt2 ON bt1.created_at + INTERVAL 10 SECOND = bt2.created_at)
SELECT
    user_id_1 as user_id
FROM
    cte
UNION
SELECT
    user_id_2
FROM
    cte