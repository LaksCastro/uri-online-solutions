SELECT products.name,
       categories.name
FROM products
JOIN categories ON categories.id = products.id_categories
WHERE products.amount > 100
  AND categories.id IN(1,
                       2,
                       3,
                       6,
                       9)
ORDER BY categories.id ASC;
