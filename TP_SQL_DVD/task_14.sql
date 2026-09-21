SELECT c.nom, c.prenom, d.titre, f.date_facture
FROM clients c
JOIN factures f ON f.client_id = c.id
JOIN locations l ON l.facture_id = f.id
JOIN dvd d ON d.id = l.dvd_id
JOIN realisateurs r ON r.id = d.realisateur_id
WHERE r.pays = 'ALLEMAGNE' AND f.date_facture BETWEEN '2006-06-01' AND '2006-06-30'
ORDER BY c.nom, c.prenom, d.titre