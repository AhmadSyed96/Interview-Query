SELECT
    SUM(salary) as total_slack_salary
FROM
    employees
JOIN
    (SELECT
        employee_id
    FROM
        projects
    GROUP BY
        1
    HAVING
        count(end_dt) = 0) AS t2 ON t2.employee_id = employees.id
