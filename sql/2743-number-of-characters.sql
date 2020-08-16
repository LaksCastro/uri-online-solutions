SELECT name,
       char_length(name) AS LENGTH
FROM people
ORDER BY LENGTH DESC;
