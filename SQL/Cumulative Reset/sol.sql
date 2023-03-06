SELECT
    DATE(created_at) as date, 
    sum(count_people) OVER(PARTITION BY year(created_at), 
    MONTH(created_at) ORDER BY created_at) as monthly_cumulative
FROM
    (select 
        created_at, 
        count(name) as count_people 
    from 
        users 
    group by 
        1) as users_counts
GROUP BY 
    1
ORDER BY
    1