SELECT a.nom, COUNT(c.id) AS nombre_de_contrats
FROM assureurs a
JOIN contrats c ON c.assureur = a.id
GROUP BY a.id, a.nom
ORDER BY nombre_de_contrats DESC, a.nom ASC
LIMIT 1