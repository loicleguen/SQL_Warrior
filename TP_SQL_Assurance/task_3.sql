SELECT v.id, v.modele
FROM vehicules v
LEFT JOIN contrats c ON c.vehicule = v.id
WHERE c.vehicule IS NULL