SELECT
    dt,
    avg(total_value) over(order by dt ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS rolling_three_day
FROM
    (SELECT
        DATE(created_at) as dt,
        SUM(transaction_value) as total_value
    FROM
        bank_transactions
    WHERE
        transaction_value > 0
    GROUP BY
        1) AS t1