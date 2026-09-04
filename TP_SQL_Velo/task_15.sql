SELECT MONTH(l.date_debut) AS mois, COUNT(l.id) AS nombre_locations
FROM locations l
GROUP BY mois
ORDER BY mois