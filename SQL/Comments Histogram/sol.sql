WITH cte AS
(SELECT 
    u.id, count(body) AS tot_cnt
FROM
    users u
LEFT JOIN
    (SELECT * FROM comments WHERE YEAR(created_at) ='2020' AND MONTH(created_at) = 1)as c ON u.id = c.user_id
GROUP BY 
    1) 
SELECT
    tot_cnt as comment_count, count(*) AS frequency
FROM
    cte
GROUP BY
    1