WITH subscriptions_cohort AS
    (SELECT
        user_id,
        plan_id,
        DATE_FORMAT(start_date, '%Y-%m-01') as start_month,
        DATE_FORMAT(end_date, '%Y-%m-01') as end_month
    FROM
        subscriptions),
months as
    (SELECT
        plan_id,
        start_month,
        num_month,
        end_month,
        start_month + INTERVAL num_month MONTH as start_plus_n_month
    FROM
        subscriptions_cohort
    CROSS JOIN 
        (SELECT 1 AS num_month UNION SELECT 2 UNION SELECT 3) nums),
retained_per_month as 
    (SELECT
        plan_id,
        start_month,
        num_month,
        end_month,
        start_plus_n_month <= end_month OR end_month IS NULL as is_retained
    FROM
        months)
SELECT
    num_month,
    plan_id,
    start_month,
    ROUND(SUM(is_retained)/COUNT(*),2) AS retained
FROM
    retained_per_month
GROUP BY
    1,2,3