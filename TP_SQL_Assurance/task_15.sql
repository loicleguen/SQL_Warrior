SELECT v.id, v.modele, COUNT(DISTINCT d.debut_dep, d.fin_dep) AS nombre_total_de_trajets
FROM vehicules v
JOIN deplacements d ON d.vehicule = v.id
GROUP BY v.id, v.modele
ORDER BY nombre_total_de_trajets DESC, v.id ASC