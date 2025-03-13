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
    IN fandoms JSON, 
    IN characters JSON, 
    IN relations JSON, 
    IN tags JSON, 
    OUT result BOOLEAN
)
BEGIN
    DECLARE current_name VARCHAR(100);
    DECLARE i INT DEFAULT 0;
    DECLARE temp_id INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET result = FALSE;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Verify fanfiction exists and lock row
    IF NOT EXISTS (SELECT 1 FROM `fanfictions` WHERE id = p_id FOR UPDATE) THEN
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fanfiction does not exist';
    END IF;

    -- Validate foreign keys using EXISTS pattern
    IF NOT EXISTS (SELECT 1 FROM `languages` WHERE id = language_id) THEN
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Language does not exist';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM `ratings` WHERE id = rating_id) THEN
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Rating does not exist';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM `scores` WHERE id = score_id) THEN
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Score does not exist';
    END IF;

    -- Name update with duplicate check
    IF label IS NOT NULL THEN
        SELECT name INTO current_name FROM `fanfictions` WHERE id = p_id;
        
        IF current_name <> label AND EXISTS (SELECT 1 FROM `fanfictions` WHERE name = label) THEN
            SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Fanfiction name already exists';
        END IF;
    END IF;

    -- Main fanfiction update
    UPDATE `fanfictions`
    SET `name` = COALESCE(label, name),
        `description` = COALESCE(description, description),
        `language_id` = language_id,
        `rating_id` = rating_id,
        `score_id` = score_id,
        `evaluation` = COALESCE(evaluation, evaluation),
        `update_date` = NOW()
    WHERE `id` = p_id;

    -- Process fandoms relationships
    IF fandoms IS NOT NULL THEN
        CREATE TEMPORARY TABLE `tmp_fandoms` (fandom_id INT UNSIGNED PRIMARY KEY) ENGINE = Memory;
        
        WHILE i < JSON_LENGTH(fandoms) DO
            SET temp_id = JSON_UNQUOTE(JSON_EXTRACT(fandoms, CONCAT('$[', i, ']')));
            
            IF NOT EXISTS (SELECT 1 FROM `fandoms` WHERE id = temp_id) THEN
                DROP TEMPORARY TABLE `tmp_fandoms`;
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exist';
            END IF;
            
            INSERT IGNORE INTO `tmp_fandoms` VALUES (temp_id);
            SET i = i + 1;
        END WHILE;
        
        -- Sync relationships
        DELETE FROM `fanfictions_fandoms`
        WHERE `fanfiction_id` = p_id
        AND `fandom_id` NOT IN (SELECT fandom_id FROM `tmp_fandoms`);
        
        INSERT IGNORE INTO `fanfictions_fandoms` (`fanfiction_id`, `fandom_id`)
        SELECT p_id, fandom_id FROM `tmp_fandoms`
        WHERE fandom_id NOT IN (
            SELECT `fandom_id` FROM `fanfictions_fandoms` WHERE `fanfiction_id` = p_id
        );
        
        DROP TEMPORARY TABLE `tmp_fandoms`;
        SET i = 0;  -- Reset counter for next JSON array
    END IF;

    -- Process characters relationships
    IF characters IS NOT NULL THEN
        CREATE TEMPORARY TABLE `tmp_characters` (character_id INT UNSIGNED PRIMARY KEY) ENGINE = Memory;
        
        WHILE i < JSON_LENGTH(characters) DO
            SET temp_id = JSON_UNQUOTE(JSON_EXTRACT(characters, CONCAT('$[', i, ']')));
            
            IF NOT EXISTS (SELECT 1 FROM `characters` WHERE id = temp_id) THEN
                DROP TEMPORARY TABLE `tmp_characters`;
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Character does not exist';
            END IF;
            
            INSERT IGNORE INTO `tmp_characters` VALUES (temp_id);
            SET i = i + 1;
        END WHILE;
        
        -- Sync relationships
        DELETE FROM `fanfictions_characters`
        WHERE `fanfiction_id` = p_id
        AND `character_id` NOT IN (SELECT character_id FROM `tmp_characters`);
        
        INSERT IGNORE INTO `fanfictions_characters` (`fanfiction_id`, `character_id`)
        SELECT p_id, fandom_id FROM `tmp_characters`
        WHERE character_id NOT IN (
            SELECT `character_id` FROM `fanfictions_characters` WHERE `fanfiction_id` = p_id
        );
        
        DROP TEMPORARY TABLE `tmp_characters`;
        SET i = 0;  -- Reset counter for next JSON array
    END IF;

    -- Process relations relationships
    IF relations IS NOT NULL THEN
        CREATE TEMPORARY TABLE `tmp_relations` (relation_id INT UNSIGNED PRIMARY KEY) ENGINE = Memory;
        
        WHILE i < JSON_LENGTH(relations) DO
            SET temp_id = JSON_UNQUOTE(JSON_EXTRACT(relations, CONCAT('$[', i, ']')));
            
            IF NOT EXISTS (SELECT 1 FROM `relations` WHERE id = temp_id) THEN
                DROP TEMPORARY TABLE `tmp_relations`;
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Relation does not exist';
            END IF;
            
            INSERT IGNORE INTO `tmp_relations` VALUES (temp_id);
            SET i = i + 1;
        END WHILE;
        
        -- Sync relationships
        DELETE FROM `fanfictions_relations`
        WHERE `fanfiction_id` = p_id
        AND `relation_id` NOT IN (SELECT relation_id FROM `tmp_relations`);
        
        INSERT IGNORE INTO `fanfictions_relations` (`fanfiction_id`, `relation_id`)
        SELECT p_id, fandom_id FROM `tmp_relations`
        WHERE relation_id NOT IN (
            SELECT `relation_id` FROM `fanfictions_relations` WHERE `fanfiction_id` = p_id
        );
        
        DROP TEMPORARY TABLE `tmp_relations`;
        SET i = 0;  -- Reset counter for next JSON array
    END IF;

    -- Process tags relationships
    IF tags IS NOT NULL THEN
        CREATE TEMPORARY TABLE `tmp_tags` (tag_id INT UNSIGNED PRIMARY KEY) ENGINE = Memory;
        
        WHILE i < JSON_LENGTH(tags) DO
            SET temp_id = JSON_UNQUOTE(JSON_EXTRACT(tags, CONCAT('$[', i, ']')));
            
            IF NOT EXISTS (SELECT 1 FROM `tags` WHERE id = temp_id) THEN
                DROP TEMPORARY TABLE `tmp_tags`;
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Tag does not exist';
            END IF;
            
            INSERT IGNORE INTO `tmp_tags` VALUES (temp_id);
            SET i = i + 1;
        END WHILE;
        
        -- Sync relationships
        DELETE FROM `fanfictions_tags`
        WHERE `fanfiction_id` = p_id
        AND `tag_id` NOT IN (SELECT tag_id FROM `tmp_tags`);
        
        INSERT IGNORE INTO `fanfictions_tags` (`fanfiction_id`, `tag_id`)
        SELECT p_id, fandom_id FROM `tmp_tags`
        WHERE tag_id NOT IN (
            SELECT `tag_id` FROM `fanfictions_tags` WHERE `fanfiction_id` = p_id
        );
        
        DROP TEMPORARY TABLE `tmp_tags`;
        SET i = 0;  -- Reset counter for next JSON array
    END IF;

    COMMIT;
    SET result = TRUE;
END $$

-- ####################################################################################
-- # Links
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_update_links $$
CREATE PROCEDURE prc_update_links(
    IN p_id INT,
    IN url VARCHAR(255),
    IN fanfiction INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE l_count INT;
    DECLARE f_count INT;

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

    SELECT COUNT(*) INTO f_count
        FROM `fanfictions`
        WHERE `id` = fandom_id
        FOR SHARE;

        IF f_count THEN
        
            -- Update the link
            UPDATE `links`
            SET `url` = url,
                `fanfiction_id` = fanfiction,
                `update_date` = NOW()
            WHERE `id` = p_id;

            -- Determine if the update was successful
            SET result = (ROW_COUNT() > 0);

            COMMIT;
        ELSE
            ROLLBACK;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fanfiction does not exist.';
        END IF;

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
    IN fanfictions JSON,
    OUT result BOOLEAN
)
BEGIN
    DECLARE s_count INT;
    DECLARE f_count INT;
    DECLARE i INT DEFAULT 0;
    DECLARE temp_id INT;

    -- Handle errors by rolling back the transaction
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
        -- Update the series
        UPDATE `series`
        SET `name` = COALESCE(label, name),
            `description` = COALESCE(description, description),
            `score_id` = score_id,
            `evaluation` = COALESCE(evaluation, evaluation),
            `update_date` = NOW()
        WHERE `id` = p_id;

        -- Determine if the update was successful
        SET result = (ROW_COUNT() > 0);

        -- Process fanfictions relationships
        IF fanfictions IS NOT NULL THEN
            CREATE TEMPORARY TABLE `tmp_fanfictions` (fanfiction_id INT UNSIGNED PRIMARY KEY) ENGINE = Memory;

            WHILE i < JSON_LENGTH(fanfictions) DO
                SET temp_id = JSON_UNQUOTE(JSON_EXTRACT(fanfictions, CONCAT('$[', i, ']')));

                IF NOT EXISTS (SELECT 1 FROM `fanfictions` WHERE id = temp_id) THEN
                    DROP TEMPORARY TABLE `tmp_fanfictions`;
                    SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fanfiction does not exist';
                END IF;

                INSERT IGNORE INTO `tmp_fanfictions` VALUES (temp_id);
                SET i = i + 1;
            END WHILE;

            -- Sync relationships
            DELETE FROM `series_fanfictions`
            WHERE `series_id` = p_id
            AND `fanfiction_id` NOT IN (SELECT fanfiction_id FROM `tmp_fanfictions`);

            INSERT IGNORE INTO `series_fanfictions` (`series_id`, `fanfiction_id`)
            SELECT p_id, fanfiction_id FROM `tmp_fanfictions`
            WHERE fanfiction_id NOT IN (
                SELECT `fanfiction_id` FROM `series_fanfictions` WHERE `series_id` = p_id
            );

            DROP TEMPORARY TABLE `tmp_fanfictions`;
        END IF;

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Series does not exist.';
    END IF;
END $$