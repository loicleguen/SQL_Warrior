DROP TRIGGER IF EXISTS trg_verifier_places;

DELIMITER //

CREATE TRIGGER trg_verifier_places
BEFORE INSERT ON deplacements
FOR EACH ROW
BEGIN
    DECLARE v_nbplaces INT;
    DECLARE v_deplacements_actuels INT;

    -- 1. Récupérer la capacité maximale du véhicule
    SELECT tv.nbplaces INTO v_nbplaces
    FROM vehicules v
    JOIN types_vehicules tv ON v.type_voiture = tv.id
    WHERE v.id = NEW.vehicule;

    -- 2. Compter combien de personnes sont déjà inscrites sur ce déplacement
    SELECT COUNT(*) INTO v_deplacements_actuels
    FROM deplacements
    WHERE vehicule = NEW.vehicule
      AND debut_dep = NEW.debut_dep
      AND fin_dep = NEW.fin_dep;

    -- 3. Si la capacité est atteinte, bloquer l'insertion
    IF v_deplacements_actuels >= v_nbplaces THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Capacite du vehicule depassee';
    END IF;
END //

DELIMITER ;