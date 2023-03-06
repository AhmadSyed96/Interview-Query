SELECT
    passenger_user_id,
    AVG(FLOOR(TIMESTAMPDIFF(MINUTE, start_dt, end_dt))) as avg_time
FROM
    rides
GROUP BY 
    1