WITH cte AS
    (SELECT
        *,
        timestampdiff(minute, flight_start, flight_end) as df,
        rank() over(partition by greatest(source_location, destination_location), least(source_location, destination_location) order by timestampdiff(minute, flight_start, flight_end) desc) as rk
    FROM
        flights)
SELECT
    destination_location,
    flight_start,
    flight_end,
    id,
    source_location
FROM 
    cte
WHERE
    rk=2