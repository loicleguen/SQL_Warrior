SELECT id_demande, date_demande, priorite, objet_demande
FROM demande_analyse
WHERE priorite = 'haute' OR priorite = 'urgente'
ORDER BY date_demande ASC