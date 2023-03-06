WITH cte as
    (SELECT
        project_id,
        count(*) as cnt
    FROM
        employee_projects
    GROUP BY
        1)
SELECT
    title,
    budget/cnt as budget_per_employee
FROM
    projects
JOIN
    cte ON projects.id = cte.project_id
ORDER BY
    2 DESC
LIMIT 
    5