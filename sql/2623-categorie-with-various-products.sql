select products.name, categories.name from products 
join categories on categories.id = products.id_categories
where products.amount > 100 and 
categories.id in(1, 2, 3, 6, 9)
order by categories.id asc;
