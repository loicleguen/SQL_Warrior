SELECT *
FROM utilisateurs u
JOIN locations l ON l.utilisateur_id = u.id
WHERE l.id IS NULL