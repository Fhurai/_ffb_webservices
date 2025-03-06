DELIMITER $$

/*
    Database Procedures and Functions for Managing Authors, Fandoms, Languages, Tags, Characters, and Relations
    Description: This script defines stored procedures and functions to delete data into the database with validation checks.
    Error Handling: Uses transactions to ensure atomicity and custom SQLSTATE codes for specific errors.
*/

-- ####################################################################################
-- # Authors
-- ####################################################################################

/**
    Procedure: prc_remove_authors
    Purpose: Deletes an author from the `authors` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the author to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the author was successfully removed, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Author does not exist.
    Example Usage:
        CALL prc_remove_authors(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_authors $$
CREATE PROCEDURE prc_remove_authors(
    IN p_id INT,
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
        -- Delete the author
        DELETE FROM `authors`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
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
    Procedure: prc_remove_fandoms
    Purpose: Deletes a fandom from the `fandoms` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the fandom to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the fandom was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Fandom does not exist.
    Example Usage:
        CALL prc_remove_fandoms(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_fandoms $$
CREATE PROCEDURE prc_remove_fandoms(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE f_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the author exists and lock the row
    SELECT COUNT(*) INTO f_count
    FROM `fandoms`
    WHERE `id` = p_id
    FOR SHARE;

    IF f_count > 0 THEN
        -- Delete the author
        DELETE FROM `fandoms`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
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
    Procedure: prc_remove_languages
    Purpose: Deletes a language from the `languages` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the language to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the language was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Language does not exist.
    Example Usage:
        CALL prc_remove_languages(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/

DROP PROCEDURE IF EXISTS prc_remove_languages $$
CREATE PROCEDURE prc_remove_languages(
    IN p_id INT,
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
        -- Delete the language
        DELETE FROM `languages`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
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
    Procedure: prc_remove_tags
    Purpose: Deletes a tag from the `tags` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the tag to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the tag was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Tag does not exist.
    Example Usage:
        CALL prc_remove_tags(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_tags $$
CREATE PROCEDURE prc_remove_tags(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE t_count INT;

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
        -- Delete the tag
        DELETE FROM `tags`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
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
    Procedure: prc_remove_characters
    Purpose: Deletes a character from the `characters` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the character to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the character was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Character does not exist.
    Example Usage:
        CALL prc_remove_characters(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_characters $$
CREATE PROCEDURE prc_remove_characters(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE c_count INT;

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
        -- Delete the character
        DELETE FROM `characters`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Character does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Relations
-- ####################################################################################

/**
    Procedure: prc_remove_relations
    Purpose: Deletes a relation from the `relations` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the relation to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the relation was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Relation does not exist.
    Example Usage:
        CALL prc_remove_relations(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_relations $$
CREATE PROCEDURE prc_remove_relations(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE r_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the relation exists and lock the row
    SELECT COUNT(*) INTO r_count
    FROM `relations`
    WHERE `id` = p_id
    FOR SHARE;

    IF r_count > 0 THEN
        -- Delete the relation
        DELETE FROM `relations`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Relation does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Fanfictions
-- ####################################################################################

/**
    Procedure: prc_remove_fanfictions
    Purpose: Deletes a fanfiction from the `fanfictions` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the fanfiction to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the fanfiction was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Fanfiction does not exist.
    Example Usage:
        CALL prc_remove_fanfictions(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_fanfictions $$
CREATE PROCEDURE prc_remove_fanfictions(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE f_count INT;

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check if the relation exists and lock the row
    SELECT COUNT(*) INTO f_count
    FROM `fanfictions`
    WHERE `id` = p_id
    FOR SHARE;

    IF f_count > 0 THEN
        -- Delete the relation
        DELETE FROM `fanfictions`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fanfiction does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Links
-- ####################################################################################

/**
    Procedure: prc_remove_links
    Purpose: Deletes a link from the `links` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the link to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the link was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Link does not exist.
    Example Usage:
        CALL prc_remove_links(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_links $$
CREATE PROCEDURE prc_remove_links(
    IN p_id INT,
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

    -- Check if the link exists and lock the row
    SELECT COUNT(*) INTO l_count
    FROM `links`
    WHERE `id` = p_id
    FOR SHARE;

    IF l_count > 0 THEN
        -- Delete the link
        DELETE FROM `links`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Link does not exist.';
    END IF;
END $$

-- ####################################################################################
-- # Series
-- ####################################################################################

/**
    Procedure: prc_remove_series
    Purpose: Deletes a series from the `series` table if they exist, using transactional safety and row locking.
    Parameters:
        - IN p_id INT: ID of the series to delete.
        - OUT result BOOLEAN: Returns TRUE (1) if the series was successfully deleted, FALSE (0) otherwise.
    Exceptions:
        - SQLSTATE '45000': Series does not exist.
    Example Usage:
        CALL prc_remove_series(123, @deletion_result);
        SELECT @deletion_result; -- Returns 1 for success, 0 for failure
*/
DROP PROCEDURE IF EXISTS prc_remove_series $$
CREATE PROCEDURE prc_remove_series(
    IN p_id INT,
    OUT result BOOLEAN
)
BEGIN
    DECLARE s_count INT;

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
        -- Delete the series
        DELETE FROM `series`
        WHERE `id` = p_id;

        -- Determine if the delete was successful
        SET result = (ROW_COUNT() > 0);

        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Series does not exist.';
    END IF;
END $$