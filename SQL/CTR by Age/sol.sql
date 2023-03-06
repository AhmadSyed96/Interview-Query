SELECT
    MOD(FLOOR(TIMESTAMPDIFF(YEAR, birthdate, search_time) / 10),10) AS age_group,
    ROUND(AVG(has_clicked),5) AS crt
FROM
    search_events
JOIN
    users ON users.id = search_events.user_id
WHERE
    YEAR(search_time) = 2021
GROUP BY 
    1
ORDER BY
    2 DESC
LIMIT 3