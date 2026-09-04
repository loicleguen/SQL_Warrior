SELECT employe, vehicule, lieu
FROM deplacements
WHERE lieu = 'Nice'
    AND debut_dep > CURRENT_DATE()