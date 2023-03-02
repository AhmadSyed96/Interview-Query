select 
    * 
from
    (select 
        TIMESTAMPDIFF(MINUTE, start_dt, end_dt) as duration_minutes 
    from 
        rides)as a 
where 
    duration_minutes > 120