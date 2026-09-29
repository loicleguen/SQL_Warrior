SELECT e.code_echantillon, a.id_analyse, ra.valeur_mesuree, ra.conforme
FROM echantillon e
JOIN analyse a ON a.id_echantillon = e.id_echantillon
LEFT JOIN resultat_analyse ra ON ra.id_analyse = a.id_analyse
ORDER BY e.code_echantillon