SELECT
    DISTINCT
    LEAST(source_location, destination_location) as destination_one,
    GREATEST(source_location, destination_location) as destination_two
FROM
    flights