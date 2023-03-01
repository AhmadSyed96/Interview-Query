select created_at, id, name from users
group by id, name, created_at
having count(*) >1