with dedup as
    (SELECT
        DISTINCT employee_id, project_id
    FROM
        employee_projects),
project_counts as
    (SELECT
        project_id,
        count(*) cnt
    FROM
        dedup
    GROUP BY
        1)
SELECT
    title,
    budget/cnt as budget_per_employee
FROM
    project_counts
JOIN
    projects ON projects.id = project_counts.project_id
ORDER BY
    2 DESC
LIMIT 5