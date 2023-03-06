with cte as
    (SELECT
        id,
        name,
        song_name,
        MIN(date_played) as first_play,
        RANK() OVER(PARTITION BY name ORDER BY MIN(date_played)) as rnk
    FROM
        song_plays
    JOIN
        users ON users.id = song_plays.user_id
    GROUP BY
        1,2,3)
SELECT
    users.name,
    first_play as date_played,
    song_name
FROM
    users
LEFT JOIN
    (SELECT
        *
    FROM
        cte
    WHERE
        rnk = 3) AS filtered USING(id)