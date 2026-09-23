SELECT r.pays, gf.libelle_genre, ROUND(AVG(d.duree_minutes), 1) AS duree_moyenne
FROM realisateurs r
JOIN dvd d ON d.realisateur_id = r.id
JOIN genres_film gf ON gf.id = d.genre_id
GROUP BY r.pays, gf.libelle_genre
ORDER BY r.pays, gf.libelle_genre