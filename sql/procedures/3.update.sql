DELIMITER $$

-- ####################################################################################
-- # Authors
-- ####################################################################################

DROP PROCEDURE IF EXISTS prc_update_authors $$
CREATE PROCEDURE prc_update_authors(
    IN p_id INT,
    IN label VARCHAR(100),
    OUT result BOOLEAN
)
BEGIN
    DECLARE a_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the author exists and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `authors`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Update the author
        UPDATE `authors`
        SET `name` = label,
            `update_date` = now()
        WHERE `id` = p_id;

        -- Determine if the update was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Author does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Fandoms
-- ####################################################################################
/**
 */
DROP PROCEDURE IF EXISTS prc_update_fandoms $$
CREATE PROCEDURE prc_update_fandoms(
    IN p_id INT,
    IN label VARCHAR(100),
    OUT result BOOLEAN
)
BEGIN
    DECLARE a_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the fandom exists and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `fandoms`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Update the fandom
        UPDATE `fandoms`
        SET `name` = label,
            `update_date` = now()
        WHERE `id` = p_id;

        -- Determine if the update was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Languages
-- ####################################################################################
/**
 */
DROP PROCEDURE IF EXISTS prc_update_languages $$
CREATE PROCEDURE prc_update_languages(
    IN p_id INT,
    IN label VARCHAR(100),
    OUT result BOOLEAN
)
BEGIN
    DECLARE l_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the language exists and lock the row
    SELECT COUNT(*) INTO l_count
    FROM `languages`
    WHERE `id` = p_id
    FOR SHARE;

    IF l_count > 0 THEN
        -- Update the language
        UPDATE `languages`
        SET `name` = label,
            `update_date` = now()
        WHERE `id` = p_id;

        -- Determine if the update was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Language does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Tags
-- ####################################################################################
/**
 */
DROP PROCEDURE IF EXISTS prc_update_tags $$
CREATE PROCEDURE prc_update_tags(
    IN p_id INT,
    IN label VARCHAR(100), 
    IN descrp TEXT, 
    IN typeTag INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE t_count INT;
    DECLARE tt_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the tag exists and lock the row
    SELECT COUNT(*) INTO t_count
    FROM `tags`
    WHERE `id` = p_id
    FOR SHARE;

    IF t_count > 0 THEN

        SELECT COUNT(*) INTO tt_count
        FROM `tag_types`
        WHERE `id` = typeTag
        FOR SHARE;

        IF tt_count > 0 THEN
            -- Update the tag
            UPDATE `tags`
            SET `name` = label,
                `description` = descrp,
                `type_id` = typeTag,
                `update_date` = now()
            WHERE `id` = p_id;

            -- Determine if the update was successful
            SET result = (ROW_COUNT() > 0);
                
            COMMIT;
        ELSE
            ROLLBACK;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Tag type does not exist.';
        END IF;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Tag does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Characters
-- ####################################################################################
/**
 */
DROP PROCEDURE IF EXISTS prc_update_characters $$
CREATE PROCEDURE prc_update_characters(
    IN p_id INT,
    IN label VARCHAR(100), 
    IN fandom_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE old_label VARCHAR(100);
    DECLARE c_count INT;
    DECLARE f_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the character exists and lock the row
    SELECT COUNT(*) INTO c_count
    FROM `characters`
    WHERE `id` = p_id
    FOR SHARE;

    IF c_count > 0 THEN
    
        SELECT COUNT(*) INTO f_count
        FROM `fandoms`
        WHERE `id` = fandom_id
        FOR SHARE;

        IF f_count THEN
            -- Retrieve the current name of the character
            SELECT `name` INTO old_label 
            FROM `characters` 
            WHERE `id` = p_id
            FOR UPDATE;

            -- Update the character
            UPDATE `characters`
            SET `name` = label, 
                `fandom_id` = fandom_id, 
                `update_date` = now()
            WHERE `id` = p_id;

            -- Determine if the update was successful
            SET result = (ROW_COUNT() > 0);

            IF result AND label != old_label THEN
                -- UPDATE RELATIONS WITH CHARACTER.
                UPDATE `relations` r
                INNER JOIN `relations_characters` rc ON r.`id` = rc.`relation_id`
                SET 
                    r.`name` = REPLACE(r.`name`, old_label, label),
                    r.`update_date` = NOW()
                WHERE rc.`character_id` = p_id;
            END IF;

            COMMIT;
        ELSE
            ROLLBACK;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exist.';
        END IF;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Character does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Relations
-- ####################################################################################
/**
 */
DROP PROCEDURE IF EXISTS prc_update_relations $$
CREATE PROCEDURE prc_update_relations(
    IN p_id INT,
    IN label VARCHAR(255), 
    IN chara JSON, 
    OUT result BOOLEAN
)
BEGIN
    DECLARE current_name VARCHAR(255);
    DECLARE i INT DEFAULT 0;
    DECLARE chara_id INT;

    -- Error handling and transaction control
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET result = FALSE;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Verify relation exists
    IF NOT EXISTS (SELECT 1 FROM `relations` WHERE id = p_id) THEN
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Relation does not exist';
    END IF;

    -- Name update logic
    IF label IS NOT NULL THEN
        SELECT name INTO current_name FROM `relations` WHERE id = p_id FOR UPDATE;
        
        -- Check for duplicate name
        IF current_name <> label AND EXISTS (SELECT 1 FROM `relations` WHERE name = label) THEN
            SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Relation name already exists';
        END IF;

        -- Perform name update
        UPDATE `relations` 
        SET name = label, 
            `update_date` = NOW() 
        WHERE `id` = p_id;
    END IF;

    -- Character relationships update
    IF chara IS NOT NULL THEN
        -- Temporary storage for new characters
        CREATE TEMPORARY TABLE `tmp_chars` (
            `char_id` INT UNSIGNED PRIMARY KEY
        ) ENGINE = Memory;

        -- Validate and populate temp table
        WHILE i < JSON_LENGTH(chara) DO
            SET chara_id = JSON_UNQUOTE(JSON_EXTRACT(chara, CONCAT('$[', i, ']')));
            
            IF NOT fn_check_character(chara_id) THEN
                DROP TEMPORARY TABLE `tmp_chars`;
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = "Character does not exist";
            END IF;
            
            INSERT IGNORE INTO `tmp_chars` VALUES (chara_id);
            SET i = i + 1;
        END WHILE;

        -- Remove obsolete relationships
        DELETE rc FROM `relations_characters` rc
        LEFT JOIN `tmp_chars` t ON rc.`character_id` = t.`char_id`
        WHERE rc.`relation_id` = p_id 
          AND t.`char_id` IS NULL;

        -- Add new relationships
        INSERT IGNORE INTO `relations_characters` (`relation_id`, `character_id`)
        SELECT p_id, `char_id` 
        FROM `tmp_chars`
        WHERE `char_id` NOT IN (
            SELECT `character_id` 
            FROM `relations_characters` 
            WHERE `relation_id` = p_id
        );

        DROP TEMPORARY TABLE `tmp_chars`;
    END IF;

    COMMIT;
    SET result = TRUE;
END $$

-- ####################################################################################
-- # Fanfictions
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_update_fanfictions $$
CREATE PROCEDURE prc_update_fanfictions(
    IN p_id INT,
    IN label VARCHAR(100),
    IN description TEXT,
    IN language_id INT,
    IN rating_id INT,
    IN score_id INT,
    IN evaluation TEXT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE f_count INT;
    DECLARE l_count INT;
    DECLARE r_count INT;
    DECLARE s_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the fanfiction exists and lock the row
    SELECT COUNT(*) INTO f_count
    FROM `fanfictions`
    WHERE `id` = p_id
    FOR SHARE;

    IF f_count > 0 THEN
        -- Check if the language exists
        SELECT COUNT(*) INTO l_count
        FROM `languages`
        WHERE `id` = language_id
        FOR SHARE;

        IF l_count = 0 THEN
            ROLLBACK;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Language does not exist.';
        END IF;

        -- Check if the rating exists
        SELECT COUNT(*) INTO r_count
        FROM `ratings`
        WHERE `id` = rating_id
        FOR SHARE;

        IF r_count = 0 THEN
            ROLLBACK;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Rating does not exist.';
        END IF;

        -- Check if the score exists
        SELECT COUNT(*) INTO s_count
        FROM `scores`
        WHERE `id` = score_id
        FOR SHARE;

        IF s_count = 0 THEN
            ROLLBACK;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Score does not exist.';
        END IF;

        -- Update the fanfiction
        UPDATE `fanfictions`
        SET `name` = label,
            `description` = description,
            `language_id` = language_id,
            `rating_id` = rating_id,
            `score_id` = score_id,
            `evaluation` = evaluation,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fanfiction does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Links
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_update_links $$
CREATE PROCEDURE prc_update_links(
    IN p_id INT,
    IN url VARCHAR(255),
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

    -- Check if the link exists and lock the row
    SELECT COUNT(*) INTO l_count
    FROM `links`
    WHERE `id` = p_id
    FOR SHARE;

    IF l_count > 0 THEN
        -- Update the link
        UPDATE `links`
        SET `url` = url,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Link does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Series
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_update_series $$
CREATE PROCEDURE prc_update_series(
    IN p_id INT,
    IN label VARCHAR(100),
    IN description TEXT,
    IN score_id INT,
    IN evaluation TEXT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE s_count INT;
    DECLARE sc_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the series exists and lock the row
    SELECT COUNT(*) INTO s_count
    FROM `series`
    WHERE `id` = p_id
    FOR SHARE;

    IF s_count > 0 THEN
        -- Check if the score exists
        SELECT COUNT(*) INTO sc_count
        FROM `scores`
        WHERE `id` = score_id
        FOR SHARE;

        IF sc_count = 0 THEN
            ROLLBACK;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Score does not exist.';
        END IF;

        -- Update the series
        UPDATE `series`
        SET `name` = label,
            `description` = description,
            `score_id` = score_id,
            `evaluation` = evaluation,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Series does not exist.';
    END IF;
END $$