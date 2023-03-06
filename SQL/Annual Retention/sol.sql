
WITH paid_years as
    (SELECT user_id, product, YEAR(created_at) AS yr_paid FROM annual_payments WHERE status='paid'),
cancelled_years as
    (SELECT user_id, product, YEAR(created_at) AS yr_cancelled FROM annual_payments WHERE status!='paid'),
user_information as
    (SELECT *  FROM paid_years LEFT JOIN cancelled_years USING(user_id, product)),
possible_retainees_from_prev_yr as
    (SELECT 
        yr_paid as yr, 
        product, 
        count(*) as yr_tot, 
        COALESCE(LAG(count(*)) over(partition by product order by yr_paid),0) as prev_yr_tot 
    FROM user_information
    GROUP BY 
        1,2),
retainees as
    (SELECT 
        yr_paid as yr,
        product,
        SUM(is_retained) as tot_retained 
    FROM
        (SELECT 
            *, 
            CASE WHEN lag(yr_paid) over(partition by user_id, product order by yr_paid)=yr_paid-1 THEN 1 ELSE 0 END AS is_retained
        FROM 
            user_information 
        WHERE 
            yr_paid!=yr_cancelled OR yr_cancelled IS NULL) t1
    GROUP BY
        1,2)
SELECT
    yr as year,
    COALESCE(round(sum(tot_retained)/sum(prev_yr_tot),2),0) percentage_renewed
FROM
    retainees
JOIN
    possible_retainees_from_prev_yr USING(yr)
GROUP BY 1
