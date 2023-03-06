SELECT
    department,
    MAX(salary) as largest_salary
FROM
    employees
GROUP BY
    department