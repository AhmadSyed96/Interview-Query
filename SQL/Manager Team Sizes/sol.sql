WITH cte AS
    (SELECT
        managers.name,
        COUNT(*) as team_size
    FROM
        employees
    JOIN
        managers ON employees.manager_id = managers.id
    GROUP BY
        1)
SELECT
    name as manager,
    team_size
FROM
    cte
WHERE
    team_size = (SELECT MAX(team_size) FROM cte)