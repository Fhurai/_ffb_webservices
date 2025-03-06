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
        - SQLSTATE '45000': Author does not exist.
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
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Author does not exist.';
    END IF;
END $$

/**
    Procedure: prc_delete_authors
    Purpose: Performs a soft delete on an author by setting `delete_date` and `update_date` to the current timestamp.
    Parameters:
        - IN p_id INT: ID of the author to soft delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the soft delete was successful, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Author does not exist.
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
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Author does not exist.';
    END IF;
END $$

/**
    Procedure: prc_restore_authors
    Purpose: Restores a soft-deleted author by setting `delete_date` to NULL and updating `update_date`.
    Parameters:
        - IN p_id INT: ID of the author to restore.
        - OUT result BOOLEAN: Returns TRUE (1) if the restore was successful, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Author does not exist.
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
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Author does not exist.';
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
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fandom does not exist.';
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
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fandom does not exist.';
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
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fandom does not exist.';
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
    DECLARE a_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the language exists and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `languages`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
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
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Language does not exist.';
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
    DECLARE a_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `languages`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Perform soft delete
        UPDATE `languages`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Language does not exist.';
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
    DECLARE a_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `languages`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `languages`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Language does not exist.';
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
    DECLARE a_count INT;
    DECLARE t_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the fandom exists and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `tags`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN

        SELECT COUNT(*) INTO t_count
        FROM `tag_types`
        WHERE `id` = typeTag
        FOR SHARE;

        IF t_count > 0 THEN
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
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tag type does not exist.';
        END IF;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tag does not exist.';
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
    DECLARE a_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `tags`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Perform soft delete
        UPDATE `tags`
        SET `delete_date` = NOW(),
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tag does not exist.';
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
    DECLARE a_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check existence and lock the row
    SELECT COUNT(*) INTO a_count
    FROM `tags`
    WHERE `id` = p_id
    FOR SHARE;

    IF a_count > 0 THEN
        -- Restore by clearing delete_date
        UPDATE `tags`
        SET `delete_date` = NULL,
            `update_date` = NOW()
        WHERE `id` = p_id;

        SET result = (ROW_COUNT() > 0);
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tag does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Characters
-- ####################################################################################
/**
 */

/**
 */

/**
 */

-- ####################################################################################
-- # Relations
-- ####################################################################################
/**
 */

/**
 */

/**
 */

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