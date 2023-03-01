WITH dept_cnts AS
    (SELECT 
        department_id
    FROM
        employees
    GROUP BY
        1
    HAVING
        count(*)<3)
SELECT
    departments.name AS department_name,
    answers.employee_name,
    answers.salary
FROM
    (SELECT
        department_id,
        concat(first_name, ' ', last_name) as employee_name,
        salary
    FROM    
        (SELECT
            *,
            ROW_NUMBER() OVER(PARTITION BY department_id ORDER BY salary DESC) as rnk
        FROM
            employees
        WHERE
            department_id NOT IN 
                (SELECT 
                    *
                FROM
                    dept_cnts)) AS t1
    WHERE
        rnk <= 3

    UNION

    SELECT
        department_id,
        concat(first_name, ' ', last_name) as employee_name,
        salary
    FROM
        employees
    WHERE
        department_id IN (SELECT * FROM dept_cnts)) AS answers
JOIN
    departments ON departments.id = answers.department_id
ORDER BY
    1, 3 DESC


