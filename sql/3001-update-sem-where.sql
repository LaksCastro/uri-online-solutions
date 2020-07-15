select name, 
case when type = 'A' then 20.0 
when type = 'B' then 70.0 
else 530.5 end as price
from products
order by price asc, id desc;
