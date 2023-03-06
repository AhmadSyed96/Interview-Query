WITH cte as
    (SELECT
        user_id, 
        SUM(amount_per_unit*quantity) as tot
    FROM
        payments
    GROUP BY
        1)
SELECT
    AVG(tot) as average_lifetime_revenue
FROM
    cte