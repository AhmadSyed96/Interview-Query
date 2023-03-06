
WITH cat_9 as
    (SELECT
        1 as id,
        avg(price) as cat_9_avg,
        var_samp(price) as cat_9_var,
        count(*) as cat_9_cnt,
        power(var_samp(price),2)/count(*) as cat_9_x
    FROM
        products
    WHERE
        category_id=9),
not_cat9 as
    (SELECT
        1 as id,
        avg(price) as not_cat9_avg,
        var_samp(price) as not_cat9_var,
        count(*) as not_cat9_cnt,
        power(var_samp(price),2)/COUNT(*) AS not_cat9_x
    FROM
        products
    WHERE
        category_id!=9)
SELECT
    ROUND((cat_9_avg - not_cat9_avg) / sqrt((cat_9_var/cat_9_cnt)+(not_cat9_var/not_cat9_cnt)),5) as t_value,
    FLOOR(POWER((cat_9_x)+(not_cat9_x),2) / ((power(cat_9_x,2)/(cat_9_cnt-1))+(power(not_cat9_x,2)/(not_cat9_cnt-1)))) as d_o_f
FROM
    cat_9
JOIN
    not_cat9 USING(id)