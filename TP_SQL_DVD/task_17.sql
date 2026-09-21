SELECT r.pays, gf.libelle_genre, COUNT(d.id) AS nb_dvd
FROM realisateurs r
JOIN dvd d ON d.realisateur_id = r.id
JOIN genres_film gf ON gf.id = d.genre_id
GROUP BY r.pays, gf.libelle_genre
ORDER BY r.pays, gf.libelle_genre