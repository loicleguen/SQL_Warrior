SELECT c.nom, COUNT(e.id_echantillon) AS nombre_echantillons
FROM client c
JOIN demande_analyse da ON da.id_client = c.id_client
JOIN prelevement p ON p.id_demande = da.id_demande
LEFT JOIN echantillon e ON e.id_prelevement = p.id_prelevement
GROUP BY c.nom
ORDER BY nombre_echantillons DESC, c.nom ASC