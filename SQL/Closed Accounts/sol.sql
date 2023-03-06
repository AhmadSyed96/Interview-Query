WITH cte as
    (SELECT
        account_id,
        SUM(CASE WHEN date = '2019-12-31' and status = 'open' then 1 else 0 end) as open_dec_31_2019,
        SUM(CASE WHEN date = '2020-01-01' and status = 'closed' then 1 else 0 end) as closed_jan_01_2020,
        SUM(CASE WHEN date = '2019-12-31' and status = 'open' then 1 else 0 end) * SUM(CASE WHEN date = '2020-01-01' and status = 'closed' then 1 else 0 end) AS boths
    FROM
        account_status
    GROUP BY
        1)
SELECT
    SUM(boths) / SUM(open_dec_31_2019) as percentage_closed
FROM
    cte