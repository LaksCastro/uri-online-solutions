SELECT products.name
FROM products
JOIN providers ON providers.id = products.id_providers
WHERE (products.amount BETWEEN 10 AND 20)
  AND providers.name LIKE 'P%';
