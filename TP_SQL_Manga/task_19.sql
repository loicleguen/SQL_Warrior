UPDATE mangas m
JOIN genres_manga g ON g.code_genre = m.code_genre
SET m.prix_base = m.prix_base + 0.20
WHERE g.signification = 'Horreur';

SELECT m.num_manga, m.titre, m.prix_base, g.signification
FROM mangas m
JOIN genres_manga g ON g.code_genre = m.code_genre
WHERE g.signification = 'Horreur';