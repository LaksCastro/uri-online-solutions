select products.name from products 
join providers on providers.id = products.id_providers
where (products.amount between 10 and 20) and providers.name like 'P%';
