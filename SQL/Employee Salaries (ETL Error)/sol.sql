SELECT
    e1.first_name,
    e1.last_name,
    e1.salary
FROM
    employees e1
JOIN
    (SELECT
        first_name,
        last_name,
        MAX(id) as id
    FROM
        employees
    GROUP BY
        1,2) AS e2 USING(first_name, last_name, id)