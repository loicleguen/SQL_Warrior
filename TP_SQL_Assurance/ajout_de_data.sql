USE assurance_flotte;

-- Vérification / ajout de types de véhicules si besoin
INSERT INTO types_vehicules (id, libelle, nbplaces)
VALUES
('FAM', 'Familiale', 5),
('LUX', 'Berline luxe', 5),
('ELEC2', 'Electrique premium', 4),
('MINI', 'Mini-citadine', 2);

-- Vérification / ajout d’assureurs si besoin
INSERT INTO assureurs (id, nom, adresse, telephone)
VALUES
('CA', 'Credit Agricole Assurances', 'Paris France', '0144556677'),
('MF', 'Matmut France', 'Rouen France', '0255667788'),
('GD', 'Gan Assurances', 'Lille France', '0366778899'),
('PN', 'Pacifica Assurance', 'Nanterre France', '0477889900');

-- Ajout des 4 véhicules
INSERT INTO vehicules (id, modele, couleur, immat, type_voiture)
VALUES
(113, 'Toyota Corolla Touring', 'Gris', 'AB2026CD', 'FAM'),
(114, 'BMW Serie 3', 'Noir', 'EF2026GH', 'LUX'),
(115, 'Tesla Model 3', 'Blanc', 'IJ2026KL', 'ELEC2'),
(116, 'Smart Fortwo', 'Bleu', 'MN2026OP', 'MINI');

-- Ajout des contrats d’assurance
-- Durée exprimée en mois.
-- De mai 2026 à mai 2035 = 9 ans = 108 mois.
INSERT INTO contrats (id, date_effet, duree, assureur, vehicule)
VALUES
(13, '2026-05-01 00:00:00', 108, 'CA', 113),
(14, '2026-05-05 00:00:00', 108, 'MF', 114),
(15, '2026-05-10 00:00:00', 108, 'GD', 115),
(16, '2026-05-15 00:00:00', 108, 'PN', 116);

-- Vérification
SELECT
    v.id,
    v.modele,
    v.immat,
    tv.libelle AS type_vehicule,
    a.nom AS assureur,
    c.date_effet,
    DATE_ADD(c.date_effet, INTERVAL c.duree MONTH) AS date_fin_contrat
FROM vehicules v
INNER JOIN types_vehicules tv
    ON v.type_voiture = tv.id
INNER JOIN contrats c
    ON v.id = c.vehicule
INNER JOIN assureurs a
    ON c.assureur = a.id
WHERE v.id BETWEEN 113 AND 116
ORDER BY v.id;