DELIMITER $$

DROP PROCEDURE IF EXISTS prc_restore_authors $$
CREATE PROCEDURE prc_restore_authors(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE a_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `authors`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `authors`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Author does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_fandoms $$
CREATE PROCEDURE prc_restore_fandoms(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE a_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `fandoms`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `fandoms`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_languages $$
CREATE PROCEDURE prc_restore_languages(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE l_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO l_count
    FROM `languages`
    WHERE `id` = p_id
    FOR SHARE;

    IF l_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `languages`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Language does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_tags $$
CREATE PROCEDURE prc_restore_tags(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE t_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO t_count
    FROM `tags`
    WHERE `id` = p_id
    FOR SHARE;

    IF t_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `tags`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Tag does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_characters $$
CREATE PROCEDURE prc_restore_characters(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE c_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO c_count
    FROM `characters`
    WHERE `id` = p_id
    FOR SHARE;

    IF c_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `characters`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);

        IF result THEN
            UPDATE `relations` r
            INNER JOIN `relations_characters` rc ON r.`id` = rc.`relation_id`
            SET r.`delete_date` = NULL,
                r.`update_date` = NOW()
            WHERE rc.`character_id` = p_id;
        END IF;

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Character does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_relations $$
CREATE PROCEDURE prc_restore_relations(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE r_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO r_count
    FROM `relations`
    WHERE `id` = p_id
    FOR SHARE;

    IF r_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `relations`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Relation does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_fanfictions $$
CREATE PROCEDURE prc_restore_fanfictions(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE f_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO f_count
    FROM `fanfictions`
    WHERE `id` = p_id
    FOR SHARE;

    IF f_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `fanfictions`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fanfiction does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_links $$
CREATE PROCEDURE prc_restore_links(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE l_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO l_count
    FROM `links`
    WHERE `id` = p_id
    FOR SHARE;

    IF l_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `links`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Link does not exist.';
    END IF;
END $$

DROP PROCEDURE IF EXISTS prc_restore_series $$
CREATE PROCEDURE prc_restore_series(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE s_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO s_count
    FROM `series`
    WHERE `id` = p_id
    FOR SHARE;

    IF s_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `series`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Series does not exist.';
    END IF;
END $$