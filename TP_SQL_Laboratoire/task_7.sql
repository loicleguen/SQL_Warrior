SELECT e.code_echantillon, te.libelle_type
FROM echantillon e
JOIN type_echantillon te ON te.id_type_echantillon = e.id_type_echantillon
ORDER BY e.code_echantillon