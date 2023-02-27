WITH cte AS
    (SELECT
        t2.employee_id,
        rank() over(order by salary desc) as rnk
    FROM
        employees
    JOIN
        (SELECT
            employee_id
        FROM
            projects
        WHERE
            end_dt IS NOT NULL
        GROUP BY
            1
        HAVING 
            COUNT(*) > 2) AS t2 on employees.id = t2.employee_id)
SELECT
    employee_id
FROM
    cte
WHERE
    rnk <= 5