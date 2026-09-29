SELECT e.code_echantillon, a.id_analyse,
    Case
        WHEN ra.conforme = 1 THEN 'conforme'
        WHEN ra.conforme = 0 THEN 'non conforme'
        ELSE 'en attente'
    END AS statut_resultat
FROM echantillon e
JOIN analyse a ON a.id_echantillon = e.id_echantillon
LEFT JOIN resultat_analyse ra ON ra.id_analyse = a.id_analyse
ORDER BY a.id_analyse