SELECT id,
       name
FROM customers
WHERE NOT EXISTS
    (SELECT id_customers
     FROM locations
     WHERE customers.id = locations.id_customers);
