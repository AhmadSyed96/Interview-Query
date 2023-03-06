WITH cte as
    (SELECT
        query,
        IF(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END)=1,1,0) AS avg_is_less_than_3
    FROM
        search_results
    GROUP BY 1)
SELECT
    round(avg(avg_is_less_than_3),2) as percentage_less_than_3
FROM
    cte