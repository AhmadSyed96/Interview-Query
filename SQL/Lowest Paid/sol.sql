WITH cte as
    (SELECT
        *
    FROM
        projects
    WHERE
        end_date IS NOT NULL),
cte2 as
    (SELECT
        employee_id,
        COUNT(*) AS projs
    FROM
        employee_projects
    JOIN
        cte ON employee_projects.project_id = cte.id
    GROUP BY
        employee_id
    HAVING
        COUNT(*) > 1),
cte3 as
    (SELECT
        cte2.employee_id,
        employees.salary,
        cte2.projs as completed_projects,
        rank() over(order by salary) as rnk
    FROM
        cte2
    JOIN
        employees ON employees.id = cte2.employee_id)
SELECT
    completed_projects, 
    employee_id,
    salary
FROM
    cte3
WHERE 
    rnk < 4