SELECT v.modele, tv.nbplaces, ROUND((COUNT(d.employe) / tv.nbplaces) * 100, 2) AS taux_remplissage
FROM vehicules v
JOIN types_vehicules tv ON tv.id = v.type_voiture
LEFT JOIN deplacements d ON d.vehicule = v.id
GROUP BY v.modele, tv.nbplaces
ORDER BY taux_remplissage DESC, v.modele ASC;