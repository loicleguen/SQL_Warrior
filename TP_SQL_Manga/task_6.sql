SELECT g.signification AS genre, COUNT(m.titre) AS nombre_de_manga_par_genre
FROM genres_manga g
JOIN mangas m ON g.code_genre = m.code_genre
GROUP BY g.code_genre, g.signification
ORDER BY nombre_de_manga_par_genre DESC