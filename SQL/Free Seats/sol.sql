WITH seats_sold_per_flight as
    (SELECT
        flight_id,
        count(*) as seats_sold
    FROM
        flight_purchases
    GROUP BY
        1)
SELECT
    flights.id as flight_id,
    number_of_seats - COALESCE(seats_sold,0) as free_seats
FROM
    flights
JOIN
    planes ON planes.id = flights.plane_id
LEFT JOIN
    seats_sold_per_flight ON flights.id = seats_sold_per_flight.flight_id
    