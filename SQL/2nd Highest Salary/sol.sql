WITH cte AS
    (SELECT
        salary,
        DENSE_RANK() OVER(ORDER BY salary DESC) as rnk
    FROM
        employees
    JOIN
        departments ON departments.id = employees.department_id
    WHERE
        name = 'engineering')
SELECT
    salary
FROM
    cte
WHERE
    rnk = 2
GROUP BY    
    1