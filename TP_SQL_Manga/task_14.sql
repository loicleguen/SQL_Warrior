SELECT g.signification, ROUND(SUM(m.prix_base * tyl.coefficient), 2) AS chiffre_affaires
FROM genres_manga g
JOIN mangas m ON m.code_genre = g.code_genre
JOIN table_location tal ON tal.num_manga = m.num_manga
JOIN types_location tyl ON tyl.code_type = tal.code_type
JOIN factures f ON f.num_facture = tal.num_facture
GROUP BY g.signification
ORDER BY chiffre_affaires DESC