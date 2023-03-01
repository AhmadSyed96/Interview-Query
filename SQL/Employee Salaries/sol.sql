SELECT
    name as department_name, count(flag) as number_of_employees, sum(flag)/COUNT(flag) as percentage_over_100k
FROM
    (SELECT *, salary > 100000 as flag FROM employees) AS employees_flag
JOIN
    departments ON departments.id =  employees_flag.department_id
GROUP BY
    1
HAVING
    count(employees_flag.id) > 9