SELECT
    p1.start_date as date,
    p1.title as project_title_start,
    p2.title as project_title_end
FROM
    projects p1
JOIN
    projects p2 ON p1.start_date = p2.end_date