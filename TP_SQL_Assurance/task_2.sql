SELECT v.modele, a.nom
FROM vehicules v
JOIN contrats c ON c.vehicule = v.id
JOIN assureurs a ON a.id = c.assureur