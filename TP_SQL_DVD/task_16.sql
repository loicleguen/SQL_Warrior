SELECT c.code_client, c.nom, c.prenom, COUNT(l.dvd_id) AS nb_dvd_loues
FROM clients c
JOIN factures f ON f.client_id = c.id
JOIN locations l ON l.facture_id = f.id
GROUP BY c.code_client
ORDER BY nb_dvd_loues DESC, c.nom, c.prenom