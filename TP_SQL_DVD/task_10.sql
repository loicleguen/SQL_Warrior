SELECT d.titre, gf.libelle_genre
FROM dvd d
JOIN genres_film gf ON gf.id = d.genre_id
ORDER BY d.titre ASC