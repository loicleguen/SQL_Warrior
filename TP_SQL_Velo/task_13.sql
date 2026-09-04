SELECT v.code, COUNT(l.id) AS total_location
FROM velos v
LEFT JOIN locations l ON l.velo_id = v.id
GROUP BY v.code
ORDER BY total_location DESC