select products.name, providers.name, categories.name from categories
join products on products.id_categories = categories.id
join providers on products.id_providers = providers.id
where providers.name = 'Sansul SA' and categories.name = 'Imported';
