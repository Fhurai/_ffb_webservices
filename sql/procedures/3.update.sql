DELIMITER $$

/*
    Database Procedures and Functions for Managing Authors, Fandoms, Languages, Tags, Characters, and Relations
    Description: This script defines stored procedures and functions to update data into the database with validation checks.
    Error Handling: Uses transactions to ensure atomicity and custom SQLSTATE codes for specific errors.
*/

-- ####################################################################################
-- # Authors
-- ####################################################################################

/**
    Procedure: prc_update_authors
    Purpose: Deletes an author from the `authors` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the author to update.
        - IN label VARCHAR(100): Name of the author to update.
        - OUT result BOOLEAN: Returns TRUE (1) if the author was successfully updated, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '50002': Author does not exist.
    Example Usage:
        CALL prc_update_authors(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
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

/**
    Procedure: prc_delete_authors
    Purpose: Performs a soft delete on an author by setting `delete_date` and `update_date` to the current timestamp.
    Parameters:
        - IN p_id INT: ID of the author to soft delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the soft delete was successful, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '50002': Author does not exist.
    Example Usage:
        CALL prc_delete_authors(123, @result);
        SELECT @result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_delete_authors $$
CREATE PROCEDURE prc_delete_authors(
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
        -- Perform soft delete
        UPDATE `authors`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Author does not exist.';
    END IF;
END $$

/**
    Procedure: prc_restore_authors
    Purpose: Restores a soft-deleted author by setting `delete_date` to NULL and updating `update_date`.
    Parameters:
        - IN p_id INT: ID of the author to restore.
        - OUT result BOOLEAN: Returns TRUE (1) if the restore was successful, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '50002': Author does not exist.
    Example Usage:
        CALL prc_restore_authors(123, @result);
        SELECT @result; -- Returns 1 for success, 0 for failure
*/
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

/**
 */
DROP PROCEDURE IF EXISTS prc_delete_fandoms $$
CREATE PROCEDURE prc_delete_fandoms(
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
        -- Perform soft delete
        UPDATE `fandoms`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exist.';
    END IF;
END $$

/**
 */
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

/**
 */
DROP PROCEDURE IF EXISTS prc_delete_languages $$
CREATE PROCEDURE prc_delete_languages(
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
        -- Perform soft delete
        UPDATE `languages`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Language does not exist.';
    END IF;
END $$

/**
 */
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

/**
 */
DROP PROCEDURE IF EXISTS prc_delete_tags $$
CREATE PROCEDURE prc_delete_tags(
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
        -- Perform soft delete
        UPDATE `tags`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Tag does not exist.';
    END IF;
END $$

/**
 */
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

/**
 */
DROP PROCEDURE IF EXISTS prc_delete_characters $$
CREATE PROCEDURE prc_delete_characters(
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
        -- Perform soft delete
        UPDATE `characters`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);

        IF result THEN
            UPDATE `relations` r
            INNER JOIN `relations_characters` rc ON r.`id` = rc.`relation_id`
            SET r.`delete_date` = NOW(),
                r.`update_date` = NOW()
            WHERE rc.`character_id` = p_id;
        END IF;

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Character does not exist.';
    END IF;
END $$

/**
 */
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
    DECLARE temp VARCHAR(100);
    DECLARE name_count INT;

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

/**
 */
DROP PROCEDURE IF EXISTS prc_delete_relations $$
CREATE PROCEDURE prc_delete_relations(
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
        -- Perform soft delete
        UPDATE `relations`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Relation does not exist.';
    END IF;
END $$

/**
 */
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

-- ####################################################################################
-- # Fanfictions
-- ####################################################################################
/**
 */

/**
 */

/**
 */

-- ####################################################################################
-- # Links
-- ####################################################################################
/**
 */

/**
 */

/**
 */

-- ####################################################################################
-- # Series
-- ####################################################################################
/**
 */

/**
 */

/**
 */