WITH interactors as
    (SELECT
        DISTINCT
        user_id
    FROM
        events
    WHERE
        action IN ('like','comment')),
non_interactors as
    (SELECT
        id,
        1 AS is_not_interactor 
    FROM    
        users
    WHERE
        id NOT IN (SELECT * FROM interactors))
SELECT
    ROUND(AVG(COALESCE(is_not_interactor,0)),2) as percent_never
FROM
    users
LEFT JOIN
    non_interactors USING(id)