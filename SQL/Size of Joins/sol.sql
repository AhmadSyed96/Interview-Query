WITH top_ads as
    (SELECT * FROM ads order by 1 limit 3),
inner_join as
    (SELECT 
        'inner_join' as join_type,
        COUNT(*) as number_of_rows
    FROM
        ads
    JOIN
        top_ads USING(id)),
left_join as
    (SELECT
        'left_join' as join_type,
        COUNT(*) as number_of_rows
    FROM
        ads
    LEFT JOIN
        top_ads USING(id)),
right_join as
    (SELECT
        'right_join' as join_type,
        COUNT(*) as number_of_rows
    FROM
        ads
    RIGHT JOIN
        top_ads USING(id)),
cross_join as
    (SELECT
        'cross_join' as join_type,
        COUNT(*) as number_of_rows
    FROM
        ads, top_ads)
SELECT * FROM inner_join
UNION
SELECT * FROM right_join
UNION
SELECT * FROM left_join
UNION
SELECT * FROM cross_join