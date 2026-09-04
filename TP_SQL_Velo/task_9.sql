SELECT v.code, COUNT(l.velo_id) AS nombre_locations
FROM velos v
JOIN locations l ON l.velo_id = v.id
GROUP BY v.code