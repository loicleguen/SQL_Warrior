SELECT u.nom_complet, SUM(p.montant) AS total_depense
FROM utilisateurs u
JOIN locations l ON l.utilisateur_id = u.id
JOIN paiements p ON p.location_id = l.id
GROUP BY u.nom_complet
HAVING total_depense > 10