SELECT d.titre, r.nom, r.prenom, r.pays, gf.libelle_genre
FROM dvd d
JOIN realisateurs r ON r.id = d.realisateur_id
JOIN genres_film gf ON gf.id = d.genre_id
ORDER BY d.titre ASC