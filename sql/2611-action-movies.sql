SELECT movies.id,
       movies.name
FROM movies
JOIN genres ON genres.id = movies.id_genres
AND genres.description = 'Action';
