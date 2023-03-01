WITH cte as    
    (SELECT
        *, CASE WHEN position_name = 'Data Scientist' AND previous_position = 'Data Analyst' THEN 1 ELSE 0 END AS flag
    FROM
        (SELECT
            *, LAG(position_name) OVER(PARTITION BY user_id ORDER BY start_date) as previous_position
        FROM 
            user_experiences) AS a)
SELECT 
    round(sum(flag),3) / count(DISTINCT user_id) as percentage
FROM
    cte