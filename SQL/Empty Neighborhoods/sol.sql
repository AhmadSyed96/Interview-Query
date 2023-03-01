select 
    name 
from 
    neighborhoods 
where 
    id not in (select neighborhood_id from users)