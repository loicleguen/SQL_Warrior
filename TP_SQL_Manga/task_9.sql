SELECT m.titre, mk.prenom, mk.nom, mk.pays
FROM mangas m
JOIN mangakas mk ON mk.code_mangaka = m.code_mangaka
ORDER BY m.titre