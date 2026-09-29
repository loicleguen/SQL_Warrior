CREATE VIEW vue_resultats_complets AS
SELECT c.nom AS client, s.nom_site, e.code_echantillon, pa.nom_parametre, pa.unite, pa.seuil_reglementaire, ra.valeur_mesuree, ra.conforme
From client c
JOIN site s ON s.id_client = c.id_client
JOIN prelevement p ON p.id_site = s.id_site
JOIN echantillon e ON e.id_prelevement = p.id_prelevement
JOIN analyse a ON a.id_echantillon = e.id_echantillon
JOIN resultat_analyse ra ON ra.id_analyse = a.id_analyse
JOIN methode_analyse ma ON ma.id_methode = a.id_methode
JOIN parametre_analyse pa ON pa.id_parametre = ma.id_parametre;

SELECT * FROM vue_resultats_complets;