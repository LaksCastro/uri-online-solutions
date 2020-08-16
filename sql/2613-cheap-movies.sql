SELECT movies.id,
       movies.name
FROM movies
JOIN prices ON prices.id = movies.id_prices
AND prices.value < 2;
