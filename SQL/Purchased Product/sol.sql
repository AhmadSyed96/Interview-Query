WITH cte AS
    (select 
        *, 
        ROW_NUMBER() OVER(PARTITION BY category_id ORDER BY id) as times_bought 
    from 
        products 
    ORDER BY 
        id)
SELECT
    name as product_name, 
    case when times_bought = 1 then 0 else 1 end as category_previously_purchased 
from 
    cte