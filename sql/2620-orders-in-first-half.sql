select customers.name, orders.id from orders
join customers on customers.id = orders.id_customers
where orders.orders_date between '2016-01-01' and '2016-06-30';
