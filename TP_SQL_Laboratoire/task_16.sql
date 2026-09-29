WITH echantillons_par_client AS (
    SELECT c.id_client, c.nom AS nom_client, COUNT(e.id_echantillon) AS nombre_echantillons
    FROM client c
    LEFT JOIN demande_analyse da ON da.id_client = c.id_client
    LEFT JOIN prelevement p ON p.id_demande = da.id_demande
    LEFT JOIN echantillon e ON e.id_prelevement = p.id_prelevement
    GROUP BY c.id_client, c.nom
    ORDER BY c.id_client
)

SELECT nom_client, nombre_echantillons
FROM echantillons_par_client
WHERE nombre_echantillons > 0