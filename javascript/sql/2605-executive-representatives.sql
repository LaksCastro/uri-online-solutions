select products.name, providers.name from products 
join providers on providers.id = products.id_providers 
where products.id_categories = 6;
