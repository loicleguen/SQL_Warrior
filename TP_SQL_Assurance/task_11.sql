DROP PROCEDURE IF EXISTS ajouter_employe;

DELIMITER //

CREATE PROCEDURE ajouter_employe(
    IN p_nom VARCHAR(50),
    IN p_prenom VARCHAR(50),
    IN p_num_permis VARCHAR(12))
BEGIN
    DECLARE v_next_id INT;

    SELECT IFNULL(MAX(id), 0) + 1 INTO v_next_id FROM employes;

    INSERT INTO employes (id, nom, prenom, num_permis)
    VALUES (
        v_next_id,
        UPPER(p_nom),
        CONCAT(UPPER(LEFT(p_prenom, 1)),
        LOWER(SUBSTRING(p_prenom, 2))),
        p_num_permis);
END
//

DELIMITER ;


CALL ajouter_employe(
    'diallo',
    'amina',
    '999888777666'
);

SELECT *
FROM employes
WHERE nom = 'DIALLO' AND prenom = 'amina';
