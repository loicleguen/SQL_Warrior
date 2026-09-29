SELECT a.id_analyse, e.code_echantillon, ma.nom_methode, a.statut
FROM analyse a
JOIN echantillon e ON e.id_echantillon = a.id_echantillon
JOIN methode_analyse ma ON ma.id_methode = a.id_methode
ORDER BY a.id_analyse