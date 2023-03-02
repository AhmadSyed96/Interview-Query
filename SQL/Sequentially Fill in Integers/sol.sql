WITH RECURSIVE cte AS   
    (SELECT
        int_numbers, 1 as lvl
    FROM
        tbl_numbers
        
    UNION
    
    SELECT
        int_numbers, lvl+1
    FROM
        cte
    WHERE
        int_numbers > lvl)
SELECT int_numbers as seq_numbers FROM cte ORDER BY 1