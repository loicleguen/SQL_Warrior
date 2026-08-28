SELECT c.ville, SUM(g.signification = 'Aventure') AS Aventure, SUM(g.signification = 'Fantasy') AS Fantasy, SUM(g.signification = 'Horreur') AS Horreur, SUM(g.signification = 'Shōnen') AS Shōnen
FROM clients c
JOIN factures f ON f.code_client = c.code_client
JOIN table_location tal ON tal.num_facture = f.num_facture
JOIN mangas m ON m.num_manga = tal.num_manga
JOIN genres_manga g ON g.code_genre = m.code_genre
GROUP BY c.ville
ORDER BY c.ville