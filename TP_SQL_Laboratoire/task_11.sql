SELECT CONCAT(e.prenom, ' ', e.nom) AS analyste, COUNT(a.id_analyse) AS nombre_analyses
FROM employe e
JOIN analyse a ON a.id_analyste = e.id_employe
GROUP BY analyste
ORDER BY nombre_analyses DESC