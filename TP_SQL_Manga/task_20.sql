SELECT tyl.code_type, COUNT(tal.code_type) AS nb_utilisations
FROM types_location tyl
JOIN table_location tal ON tal.code_type = tyl.code_type
WHERE tyl.libelle = 'Retard régularisé'
GROUP BY tyl.code_type