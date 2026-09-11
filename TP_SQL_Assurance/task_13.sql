SELECT e.id, e.nom, e.prenom
FROM employes e
LEFT JOIN deplacements d ON d.employe = e.id
WHERE d.employe IS NULL