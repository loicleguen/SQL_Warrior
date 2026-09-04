DROP FUNCTION IF EXISTS vehicule_est_assure;

DELIMITER //

CREATE FUNCTION vehicule_est_assure(p_id_vehicule INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_count INT DEFAULT 0;

    SELECT COUNT(*)
    INTO v_count
    FROM contrats
    WHERE vehicule = p_id_vehicule
        AND CURRENT_DATE() BETWEEN date_effet AND DATE_ADD(date_effet, INTERVAL duree MONTH);
    
    IF v_count > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END
//

DELIMITER ;
