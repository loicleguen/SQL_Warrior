SELECT tal.num_facture, SUM(m.prix_base * coefficient) AS depenses
FROM table_location tal
JOIN mangas m ON m.num_manga = tal.num_manga
JOIN types_location tyl ON tyl.code_type = tal.code_type
GROUP BY tal.num_facture
ORDER BY tal.num_facture