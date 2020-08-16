SELECT products.name,
       providers.name,
       categories.name
FROM categories
JOIN products ON products.id_categories = categories.id
JOIN providers ON products.id_providers = providers.id
WHERE providers.name = 'Sansul SA'
  AND categories.name = 'Imported';
