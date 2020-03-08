select products.id, products.name from products 
join categories on categories.id = products.id_categories 
where categories.name like 'super%';
