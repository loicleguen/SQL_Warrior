SELECT d.titre, CONCAT(c.civilite, ' ', c.nom, ' ', c.prenom) AS client, CONCAT(r.nom, ' ', r.prenom) AS realisateur
FROM dvd d
JOIN locations l ON l.dvd_id = d.id
JOIN factures f ON f.id = l.facture_id
JOIN clients c ON c.id = f.client_id
JOIN realisateurs r ON r.id = d.realisateur_id
ORDER BY d.titre ASC