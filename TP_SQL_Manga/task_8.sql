SELECT c.ville, COUNT(c.code_client) AS nombre_de_clients, SUM(c.enfants) AS nombre_d_enfants
FROM clients c
GROUP BY c.ville
ORDER BY c.ville