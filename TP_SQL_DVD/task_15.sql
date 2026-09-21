SELECT d.titre, c.nom, c.prenom, c.date_naissance
FROM dvd d
JOIN locations l ON l.dvd_id = d.id
JOIN factures f ON f.id = l.facture_id
JOIN clients c ON c.id = f.client_id
JOIN genres_film gf ON gf.id = d.genre_id
WHERE code_genre = 'AV' AND c.date_naissance BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY d.titre