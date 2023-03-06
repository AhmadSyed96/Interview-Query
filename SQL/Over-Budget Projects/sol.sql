WITH cte as
    (SELECT
        *,
        DATEDIFF(end_date, start_date) / 365 as span
    FROM
        projects),
cte2 as
    (SELECT
        project_id,
        SUM(salary) cum_sal
    FROM
        employee_projects
    JOIN
        employees ON employees.id = employee_projects.employee_id
    GROUP BY 
        1)
SELECT
    title,
    case when span*cum_sal > budget then 'overbudget' else 'within budget' end as project_forecast
FROM
    cte
JOIN
    cte2 ON cte.id = cte2.project_id