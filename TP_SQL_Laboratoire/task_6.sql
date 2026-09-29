SELECT s.nom_site, s.ville, s.type_site, c.nom
FROM site s
JOIN client c ON c.id_client = s.id_client
ORDER BY c.nom, s.nom_site