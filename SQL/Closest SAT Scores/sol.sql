WITH cte AS
    (SELECT 
        s1.student as st1,
        s1.score as scr1,
        s2.student as st2,
        s2.score as scr2,
        s1.score - s2.score as diff,
        RANK() OVER(order by s1.score - s2.score, s2.student) as rnk
    FROM 
        scores s1, scores s2 
    WHERE 
        s1.score-s2.score >= 0
        and s1.id != s2.id)
SELECT
    st2 as one_student,
    st1 as other_student,
    diff as score_diff
FROM
    cte
WHERE 
    rnk=1