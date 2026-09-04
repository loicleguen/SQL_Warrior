DROP FUNCTION IF EXISTS date_fin_contrat;

DELIMITER //

CREATE FUNCTION date_fin_contrat(p_id_contrat INT)
RETURNS DATE
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE date_fin DATE;
    SELECT DATE_ADD(date_effet, INTERVAL duree MONTH)
    INTO date_fin
    FROM contrats
    WHERE id = p_id_contrat;

    RETURN date_fin;
END
//

DELIMITER ;

SELECT date_fin_contrat(999) AS date_fin;