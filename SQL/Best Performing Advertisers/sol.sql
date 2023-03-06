WITH cte0 AS
    (SELECT
        advertisers.advertiser_name,
        revenue.*
    FROM
        revenue
    JOIN
        advertisers USING(advertiser_id)),
cte1 as
-- get the weekly sums for each company
    (SELECT
        advertiser_name,
        WEEK(transaction_date),
        SUM(amount) AS weekly_total
    FROM
        cte0
    GROUP BY
        1,2),
cte2 as
-- average weekly amount for each company
    (SELECT
        advertiser_name,
        AVG(weekly_total) as avg_weekly
    FROM
        cte1
    GROUP BY
        1),
cte3 as
-- get the name of the company wth the higheest weekly avg
    (SELECT
        advertiser_name
    FROM
        cte2
    WHERE
        avg_weekly = (SELECT MAX(avg_weekly) FROM cte2)),
cte4 as
-- get ranking of best day for each company/companies
    (SELECT
        advertiser_name,
        transaction_date,
        amount, 
        RANK() OVER(PARTITION BY advertiser_name ORDER BY amount DESC) as rnk
    FROM
        cte0
    WHERE
        advertiser_name IN (SELECT advertiser_name FROM cte3))
SELECT
    advertiser_name,
    transaction_date,
    amount
FROM
    cte4
WHERE
    rnk < 4