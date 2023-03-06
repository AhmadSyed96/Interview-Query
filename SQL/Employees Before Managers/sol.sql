SELECT
    concat(first_name, ' ', last_name) as employee_name
FROM
    employees
WHERE
    join_date < 
        (SELECT 
            join_date
        FROM
            managers
        WHERE
            employees.manager_id = managers.id)

-- SELECT CONCAT(e.first_name, ‘ ‘, e.last_name) AS employee_name

-- FROM employees e

-- INNER JOIN managers m ON e.manager_id = m.id AND e.join_date < m.join_date