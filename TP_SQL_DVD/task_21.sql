SELECT f.id AS facture_id, f.date_facture, c.nom, c.prenom, SUM(tl.tarif) AS montant_total
FROM factures f
JOIN clients c ON c.id = f.client_id
JOIN locations l ON l.facture_id = f.id
JOIN types_location tl ON tl.id = l.type_location_id
GROUP BY f.id
ORDER BY montant_total DESC