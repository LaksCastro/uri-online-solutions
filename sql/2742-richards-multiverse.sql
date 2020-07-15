select life_registry.name, round((life_registry.omega * 1.618), 3) as "The N Factor" from life_registry
join dimensions on dimensions.id = life_registry.dimensions_id
where dimensions.name in('C774', 'C875') and life_registry.name like 'Richard%'
order by life_registry.omega asc;
