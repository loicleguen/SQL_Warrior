SELECT l.id, u.nom_complet, v.code, l.date_debut, l.date_fin, montant
FROM locations l
JOIN utilisateurs u ON u.id = l.utilisateur_id
JOIN velos v ON v.id = l.velo_id
JOIN paiements p ON p.location_id = l.id
WHERE l.id = 1