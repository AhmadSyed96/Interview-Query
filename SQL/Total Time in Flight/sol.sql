WITH RECURSIVE days AS
    (SELECT 
        id,
        plane_id,
        flight_start,
        DATE_FORMAT(flight_start, '%Y-%m-%d 23:59:59') as flight_start_day_end
    FROM
        (SELECT * FROM flights WHERE DATE(flight_start) != DATE(flight_end)) AS t1
    UNION
    SELECT
        days.id,
        days.plane_id,
        DATE_FORMAT(days.flight_start+interval 1 day, '%Y-%m-%d 00:00:00') as flight_start,
        case when DATE_FORMAT(days.flight_start+interval 1 day, '%Y-%m-%d 23:59:59') > flights.flight_end then flight_end
            else DATE_FORMAT(days.flight_start+interval 1 day, '%Y-%m-%d 23:59:59') end as flight_start_day_end
    FROM
        days
    JOIN
        flights USING(id)
    WHERE 
        DATE_FORMAT(days.flight_start+1, '%Y-%m-%d 23:59:59') < flights.flight_end
),
single_day_flights AS
    (SELECT * FROM flights WHERE DATE(flight_start) = DATE(flight_end)),
combined as
    (SELECT plane_id, flight_start, flight_end FROM single_day_flights
    UNION ALL
    SELECT plane_id, flight_start, flight_start_day_end FROM days)
SELECT * FROM    
    (SELECT
        plane_id,
        DATE(flight_start) as calendar_day,
        SUM(CEIL(TIMESTAMPDIFF(second, flight_start, flight_end)/60)) as time_in_min
    FROM
        combined
    GROUP BY
        1,2)AS t1
WHERE time_in_min > 0