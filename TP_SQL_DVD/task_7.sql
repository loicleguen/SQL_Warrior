SELECT gf.libelle_genre, COUNT(d.id) AS nb_dvd
FROM genres_film gf
LEFT JOIN dvd d ON d.genre_id = gf.id
GROUP BY gf.libelle_genre
ORDER BY nb_dvd DESC, gf.libelle_genre ASC