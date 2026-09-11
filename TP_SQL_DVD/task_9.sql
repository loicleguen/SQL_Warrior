SELECT gf.libelle_genre, ROUND(AVG(d.duree_minutes), 1) AS duree_moyenne
FROM genres_film gf
JOIN dvd d ON d.genre_id = gf.id
GROUP BY gf.libelle_genre
ORDER BY duree_moyenne DESC