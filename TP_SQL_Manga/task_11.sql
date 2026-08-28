SELECT c.code_client, c.prenom, c.nom, COUNT(f.num_facture) AS nombre_de_location, ROUND(SUM(m.prix_base * tyl.coefficient), 2) AS total_depenses
FROM types_location tyl
JOIN table_location tal ON tal.code_type = tyl.code_type
JOIN mangas m ON m.num_manga = tal.num_manga
JOIN factures f ON f.num_facture = tal.num_facture
Join clients c ON c.code_client = f.code_client
GROUP BY c.code_client
ORDER BY total_depenses DESC
LIMIT 5