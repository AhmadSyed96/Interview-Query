SELECT
    name,
    COALESCE(SUM(distance),0) as distance_traveled
FROM
    users
LEFT JOIN
    rides ON users.id = rides.passenger_user_id
GROUP BY
    1
ORDER BY    
    2 DESC