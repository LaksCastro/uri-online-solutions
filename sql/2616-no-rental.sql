select id, name from customers
where not exists
(select id_customers
from locations
where customers.id = locations.id_customers);
