SELECT tal.num_facture, c.prenom, c.nom, m.titre, tyl.libelle, tal.date_retour
FROM types_location tyl
JOIN table_location tal ON tal.code_type = tyl.code_type
JOIN mangas m ON m.num_manga = tal.num_manga
JOIN factures f ON f.num_facture = tal.num_facture
Join clients c ON c.code_client = f.code_client