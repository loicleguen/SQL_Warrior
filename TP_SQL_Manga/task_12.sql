SELECT m.titre, mk.prenom, mk.nom, g.signification
FROM mangakas mk
JOIN mangas m ON m.code_mangaka = mk.code_mangaka
JOIN genres_manga g ON g.code_genre = m.code_genre
WHERE signification = 'Horreur'