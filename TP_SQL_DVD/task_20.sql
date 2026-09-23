SELECT gf.libelle_genre, COUNT(l.id) AS nb_locations
FROM genres_film gf
JOIN dvd d ON d.genre_id = gf.id
JOIN locations l ON l.dvd_id = d.id
GROUP BY gf.libelle_genre
ORDER BY nb_locations DESC, gf.libelle_genre