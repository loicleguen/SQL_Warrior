SELECT LEFT(c.code_postal, 2) AS departement, c.civilite, COUNT(c.id) AS nb_clients
FROM clients c
GROUP BY departement, c.civilite
ORDER BY departement, c.civilite