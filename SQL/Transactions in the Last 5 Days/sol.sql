SELECT
    COUNT(*) as number_of_users
FROM
    (SELECT
        user_id,
        COUNT(DISTINCT DATE(created_at)) AS num_days_transacted
    FROM
        bank_transactions
    WHERE
        created_at BETWEEN '2020-01-01' AND '2020-01-06'
    GROUP BY 
        user_id
    HAVING
        num_days_transacted >= 5) AS t1