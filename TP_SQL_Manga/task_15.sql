SELECT g.signification, tyl.libelle, COUNT(tal.num_facture) AS nombre_location
FROM genres_manga g
JOIN mangas m ON m.code_genre = g.code_genre
JOIN table_location tal ON tal.num_manga = m.num_manga
JOIN types_location tyl ON tyl.code_type = tal.code_type
GROUP BY g.signification, tyl.libelle
ORDER BY g.signification