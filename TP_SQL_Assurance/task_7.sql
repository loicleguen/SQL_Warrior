SELECT v.id AS vehicule, COUNT(d.vehicule) AS nb_deplacements
FROM vehicules v
JOIN deplacements d ON d.vehicule = v.id
GROUP BY vehicule
ORDER BY nb_deplacements DESC