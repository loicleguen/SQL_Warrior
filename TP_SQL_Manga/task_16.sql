SELECT c.ville, ROUND(SUM(m.prix_base * tyl.coefficient), 2) AS chiffre_afffaires
FROM clients c
JOIN factures f ON f.code_client = c.code_client
JOIN table_location tal ON tal.num_facture = f.num_facture
JOIN types_location tyl ON tyl.code_type = tal.code_type
JOIN mangas m ON m.num_manga = tal.num_manga
GROUP BY c.ville
ORDER BY chiffre_afffaires DESC