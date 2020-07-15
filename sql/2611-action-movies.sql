select movies.id, movies.name from movies 
join genres on genres.id = movies.id_genres and genres.description = 'Action';
