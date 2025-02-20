DELIMITER $$
/*
    Database Procedures and Functions for Managing Authors, Fandoms, Languages, Tags, Characters, and Relations
    Description: This script defines stored procedures and functions to insert data into the database with validation checks.
    Error Handling: Uses transactions to ensure atomicity and custom SQLSTATE codes for specific errors.
*/

-- ####################################################################################
-- # Authors
-- ####################################################################################

/**
    Procedure: prc_insert_authors
    Purpose: Inserts a new author into the `authors` table if it does not already exist.
    Parameters:
        - IN label VARCHAR(100): Name of the author to insert.
        - OUT id INT: Auto-generated ID of the newly inserted author.
    Exceptions:
        - SQLSTATE '50001': Author already exists.
    Example Usage:
        CALL prc_insert_authors('J.K. Rowling', @author_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_authors $$
CREATE PROCEDURE prc_insert_authors(
    IN label VARCHAR(100), 
    OUT id INT
)
BEGIN
    DECLARE a_count INT;

    START TRANSACTION;

    -- Check if the author already exists
    SET a_count = (
        SELECT COUNT(*) 
        FROM `authors`
        WHERE name = label 
        FOR SHARE
    );

    IF a_count = 0 THEN
        -- Insert new author
        INSERT INTO `authors` (`name`) VALUES (label);
        SET id = LAST_INSERT_ID(); -- Return the new author's ID
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Author already exists.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Fandoms
-- ####################################################################################

/**
    Procedure: prc_insert_fandoms
    Purpose: Inserts a new fandom into the `fandoms` table if it does not already exist.
    Parameters:
        - IN label VARCHAR(100): Name of the fandom.
        - OUT id INT: Auto-generated ID of the new fandom.
    Exceptions:
        - SQLSTATE '50001': Fandom already exists.
    Example Usage:
        CALL prc_insert_fandoms('Harry Potter', @fandom_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_fandoms $$
CREATE PROCEDURE prc_insert_fandoms(
    IN label VARCHAR(100), 
    OUT id INT
)
BEGIN
    DECLARE a_count INT;

    START TRANSACTION;

    -- Check for existing fandom
    SET a_count = (
        SELECT COUNT(*) 
        FROM `fandoms`
        WHERE name = label 
        FOR SHARE
    );

    IF a_count = 0 THEN
        INSERT INTO `fandoms` (`name`) VALUES (label);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Fandom already exists.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Languages
-- ####################################################################################

/**
    Procedure: prc_insert_languages
    Purpose: Inserts a new language into the `languages` table if the (name, abbreviation) pair is unique.
    Parameters:
        - IN label VARCHAR(100): Language name (e.g., 'English').
        - IN abbr VARCHAR(2): 2-letter abbreviation (e.g., 'EN').
        - OUT id INT: Auto-generated ID of the new language.
    Exceptions:
        - SQLSTATE '50001': Language already exists.
    Example Usage:
        CALL prc_insert_languages('English', 'EN', @language_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_languages $$
CREATE PROCEDURE prc_insert_languages(
    IN label VARCHAR(100), 
    IN abbr VARCHAR(2), 
    OUT id INT
)
BEGIN
    DECLARE a_count INT;

    START TRANSACTION;

    -- Check for existing language with the same name and abbreviation
    SET a_count = (
        SELECT COUNT(*) 
        FROM `languages`
        WHERE name = label 
        AND abbreviation = abbr
        FOR SHARE
    );

    IF a_count = 0 THEN
        INSERT INTO `languages` (`name`, `abbreviation`) VALUES (label, abbr);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Language already exists.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Tags
-- ####################################################################################

/**
    Function: fn_check_tagtype
    Purpose: Validates if a tag type ID exists in the `tag_types` table.
    Parameters:
        - IN TID INT: Tag type ID to validate.
    Returns: BOOLEAN (true if the tag type exists, false otherwise).
*/
DROP FUNCTION IF EXISTS fn_check_tagtype $$
CREATE FUNCTION fn_check_tagtype(
    TID INT
) RETURNS BOOLEAN
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the tag type exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `tag_types` 
    WHERE id = TID;

    RETURN exist;
END $$

/**
    Procedure: prc_insert_tags
    Purpose: Inserts a new tag into the `tags` table if it does not already exist for the given type.
    Parameters:
        - IN label VARCHAR(100): Tag name (e.g., 'Fantasy').
        - IN descrp TEXT: Tag description.
        - IN typeTag INT: Tag type ID (validated via `fn_check_tagtype`).
        - OUT id INT: Auto-generated ID of the new tag.
    Exceptions:
        - SQLSTATE '50001': Tag already exists.
        - SQLSTATE '50002': Tag type does not exist.
    Example Usage:
        CALL prc_insert_tags('Fantasy', 'Magical elements', 1, @tag_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_tags $$
CREATE PROCEDURE prc_insert_tags(
    IN label VARCHAR(100), 
    IN descrp TEXT, 
    IN typeTag INT, 
    OUT id INT
)
BEGIN
    DECLARE t_count INT DEFAULT 1;

    START TRANSACTION;

    -- Validate the tag type
    IF fn_check_tagtype(typeTag) THEN
        -- Check for existing tag with the same name and type
        SET t_count = (
            SELECT COUNT(*) 
            FROM `tags`
            WHERE name = label 
            AND type_id = typeTag
            FOR SHARE
        );

        IF t_count = 0 THEN
            INSERT INTO `tags` (`name`, `description`, `type_id`) VALUES (label, descrp, typeTag);
            SET id = LAST_INSERT_ID();
        ELSE
            ROLLBACK;
            SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Tag already exists.';
        END IF;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Tag type does not exist.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Characters
-- ####################################################################################

/**
    Function: fn_check_fandom
    Purpose: Validates if a fandom ID exists in the `fandoms` table.
    Parameters:
        - IN FID INT: Fandom ID to validate.
    Returns: BOOLEAN (true if the fandom exists, false otherwise).
*/
DROP FUNCTION IF EXISTS fn_check_fandom $$
CREATE FUNCTION fn_check_fandom(
    FID INT
) RETURNS BOOLEAN
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the fandom exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `fandoms` 
    WHERE id = FID;

    RETURN exist;
END $$

/**
    Procedure: prc_insert_characters
    Purpose: Inserts a new character into the `characters` table if it does not already exist in the specified fandom.
    Parameters:
        - IN label VARCHAR(100): Character name (e.g., 'Harry Potter').
        - IN identifier INT: Fandom ID (validated via `fn_check_fandom`).
        - OUT id INT: Auto-generated ID of the new character.
    Exceptions:
        - SQLSTATE '50001': Character already exists in the fandom.
        - SQLSTATE '50002': Fandom does not exist.
    Example Usage:
        CALL prc_insert_characters('Harry Potter', 1, @character_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_characters $$
CREATE PROCEDURE prc_insert_characters(
    IN label VARCHAR(100), 
    IN identifier INT, 
    OUT id INT
)
BEGIN
    DECLARE f_count INT DEFAULT 1;

    START TRANSACTION;

    -- Validate the fandom
    IF fn_check_fandom(identifier) THEN
        -- Check for existing character in the fandom
        SET f_count = (
            SELECT COUNT(*) 
            FROM `characters`
            WHERE name = label 
            AND fandom_id = identifier
            FOR SHARE
        );

        IF f_count = 0 THEN
            INSERT INTO `characters` (`name`, `fandom_id`) VALUES (label, identifier);
            SET id = LAST_INSERT_ID();
        ELSE
            ROLLBACK;
            SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Character already exists.';
        END IF;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exist.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Relations
-- ####################################################################################

/**
    Function: fn_check_character
    Purpose: Validates if a character ID exists in the `characters` table.
    Parameters:
        - IN CID INT: Character ID to validate.
    Returns: BOOLEAN (true if the character exists, false otherwise).
*/
DROP FUNCTION IF EXISTS fn_check_character $$
CREATE FUNCTION fn_check_character(
    CID INT
) RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the character exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `characters` 
    WHERE id = CID;

    RETURN exist;
END $$

/**
    Procedure: prc_insert_relations
    Purpose: Inserts a new relation (e.g., 'Rikku/Tidus/Yuna') into the `relations` table and links it to characters via `relations_characters`.
    Parameters:
        - IN label VARCHAR(255): Relation name (e.g., 'Rikku / Tidus / Yuna').
        - IN chara JSON: JSON array of character IDs (e.g., '[23, 24, 29]').
    Exceptions:
        - Automatically rolls back on any SQL error.
    Example Usage:
        CALL prc_insert_relations('Rikku / Tidus / Yuna', '[23, 24, 29]');
*/
DROP PROCEDURE IF EXISTS prc_insert_relations $$
CREATE PROCEDURE prc_insert_relations(
    IN label VARCHAR(255), 
    IN chara JSON
)
BEGIN
    DECLARE parent_id INT;
    DECLARE i INT DEFAULT 0;
    DECLARE chara_id VARCHAR(10);
    DECLARE temp VARCHAR(100);

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Insert the relation name
    INSERT INTO `relations` (`name`) VALUES (label);
    SET parent_id = LAST_INSERT_ID(); -- Get the new relation's ID

    -- Loop through the JSON array of character IDs
    WHILE i < JSON_LENGTH(chara) DO
    
        -- Extract the character ID from the JSON array
        SET chara_id = JSON_UNQUOTE(JSON_EXTRACT(chara, CONCAT('$[', i, ']')));

        IF fn_check_character(CAST(`chara_id` AS UNSIGNED)) THEN

        -- Link the character to the relation
        INSERT INTO `relations_characters` (`relation_id`, `character_id`) VALUES (parent_id, chara_id);

        SET i = i + 1; -- Move to the next character

        ELSE
            ROLLBACK;

            SELECT CONCAT('Character ', chara_id,' does not exist.') INTO temp;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
        END IF;
    END WHILE;

    COMMIT;
END $$

-- ####################################################################################
-- # Fanfictions
-- ####################################################################################

/**
    Function: fn_check_author
    Purpose: Validates if a author ID exists in the `authors` table.
    Parameters:
        - IN AID INT: Author ID to validate.
    Returns: BOOLEAN (true if the author exists, false otherwise).
*/
DROP FUNCTION IF EXISTS fn_check_author $$
CREATE FUNCTION fn_check_author(
    AID INT
) RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the author exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `authors` 
    WHERE id = AID;

    RETURN exist;
END $$

/**
    Function: fn_check_language
    Purpose: Validates if a language ID exists in the `languages` table.
    Parameters:
        - IN LID INT: Language ID to validate.
    Returns: BOOLEAN (true if the language exists, false otherwise).
*/
DROP FUNCTION IF EXISTS fn_check_language $$
CREATE FUNCTION fn_check_language(
    LID INT
) RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the language exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `languages` 
    WHERE id = LID;

    RETURN exist;
END $$

/**
    Function: fn_check_relation
    Purpose: Validates if a relation ID exists in the `relations` table.
    Parameters:
        - IN RID INT: Relation ID to validate.
    Returns: BOOLEAN (true if the relation exists, false otherwise).
*/
DROP FUNCTION IF EXISTS fn_check_relation $$
CREATE FUNCTION fn_check_relation(
    RID INT
) RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the relation exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `relations` 
    WHERE id = RID;

    RETURN exist;
END $$

/**
    Function: fn_check_tag
    Purpose: Validates if a tag ID exists in the `tags` table.
    Parameters:
        - IN TID INT: Tag ID to validate.
    Returns: BOOLEAN (true if the tag exists, false otherwise).
*/
DROP FUNCTION IF EXISTS fn_check_tag $$
CREATE FUNCTION fn_check_tag(
    TID INT
) RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the tag exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `tags` 
    WHERE id = TID;

    RETURN exist;
END $$

/**
    Procedure: prc_insert_fanfictions
    Purpose: Inserts a new fanfiction into the `fanfictions` table and links it to characters via `fanfictions_characters`, to fandoms via `fanfictions_authors`, to relations via `fanfictions_relations` and to tags via `fanfictions_tags`.
    Parameters:
        - IN label VARCHAR(100) : Fanfiction name.
        - IN author INT: author ID.
        - IN rating INT: rating ID.
        - IN summary TEXT: Summary of the fanfiction.
        - IN language_id INT: language ID.
        - IN chara JSON: JSON array of characters IDs.
        - IN fandoms JSON: JSON array of fandoms IDs.
        - IN relations JSON: JSON array of relations IDs.
        - IN tags JSON: JSON array of tags IDs.
    Exceptions:
        Automaticaly rolls back on any SQL error.
    Example Usage
        CALL prc_insert_fanfictions('Test Overwatch', 704, 4, 'This is a test of fanfiction created by procedure', 2, '[348, 349]', '[13]', '[291]', '[10, 20, 27, 28, 34]')
 */
DROP PROCEDURE IF EXISTS prc_insert_fanfictions $$
CREATE PROCEDURE prc_insert_fanfictions(
    IN label VARCHAR(100),
    IN author INT,
    IN rating INT,
    IN summary TEXT,
    IN language_id INT,
    IN chara JSON,
    IN fandoms JSON,
    IN relations JSON,
    IN tags JSON
)
BEGIN
    DECLARE parent_id INT;
    DECLARE i INT DEFAULT 0;
    DECLARE child_id VARCHAR(10);
    DECLARE temp VARCHAR(100);

    -- Handle errors by rolling back the transaction
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    -- Insert the fanfiction
    INSERT INTO `fanfictions`(`name`, `author_id`, `rating_id`, `description`, `language_id`) VALUES (label, author, rating, summary, language_id);
    SET parent_id = LAST_INSERT_ID(); -- Get the new fanfictions's ID

    -- Loop through the JSON array of characters IDs
    WHILE i < JSON_LENGTH(chara) DO

        -- Extract the character ID from the JSON array
        SET child_id = JSON_UNQUOTE(JSON_EXTRACT(chara, CONCAT('$[', i, ']')));

        IF fn_check_character(CAST(child_id AS UNSIGNED)) THEN
            -- Link the character to the relation
            INSERT INTO `fanfictions_characters` (fanfiction_id, character_id) VALUES (parent_id, child_id);

            SET i = i + 1; -- Move to the next character
        ELSE
            ROLLBACK;

            SELECT CONCAT('Character ', child_id,' does not exist.') INTO temp;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
        END IF;
    END WHILE;

    -- Loop through the JSON array of fandoms IDs
    WHILE i < JSON_LENGTH(fandoms) DO

        -- Extract the fandom ID from the JSON array
        SET child_id = JSON_UNQUOTE(JSON_EXTRACT(fandoms, CONCAT('$[', i, ']')));

        IF fn_check_fandom(CAST(child_id AS UNSIGNED)) THEN
            -- Link the fandom to the relation
            INSERT INTO `fanfictions_fandoms` (fanfiction_id, fandom_id) VALUES (parent_id, child_id);

            SET i = i + 1; -- Move to the next fandom
        ELSE
            ROLLBACK;

            SELECT CONCAT('Fandom ', child_id,' does not exist.') INTO temp;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
        END IF;
    END WHILE;

    -- Loop through the JSON array of relations IDs
    WHILE i < JSON_LENGTH(relations) DO

        -- Extract the relation ID from the JSON array
        SET child_id = JSON_UNQUOTE(JSON_EXTRACT(relations, CONCAT('$[', i, ']')));

        IF fn_check_relation(CAST(child_id AS UNSIGNED)) THEN
            -- Link the relation to the relation
            INSERT INTO `fanfictions_relations` (fanfiction_id, relation_id) VALUES (parent_id, child_id);

            SET i = i + 1; -- Move to the next relation
        ELSE
            ROLLBACK;

            SELECT CONCAT('Relation ', child_id,' does not exist.') INTO temp;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
        END IF;
    END WHILE;

    -- Loop through the JSON array of tags IDs
    WHILE i < JSON_LENGTH(tags) DO

        -- Extract the tag ID from the JSON array
        SET child_id = JSON_UNQUOTE(JSON_EXTRACT(tags, CONCAT('$[', i, ']')));

        IF fn_check_tag(CAST(child_id AS UNSIGNED)) THEN
            -- Link the tag to the relation
            INSERT INTO `fanfictions_tags` (fanfiction_id, tag_id) VALUES (parent_id, child_id);

            SET i = i + 1; -- Move to the next tag
        ELSE
            ROLLBACK;

            SELECT CONCAT('Character ', child_id,' does not exist.') INTO temp;
            SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
        END IF;
    END WHILE;

END $$

/**
 */

-- ####################################################################################
-- # Links
-- ####################################################################################

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


-- ####################################################################################
-- # Users
-- ####################################################################################

/**
 */

/**
 */

-- ####################################################################################
-- # UsersActions
-- ####################################################################################

/**
 */

/**
 */
 
DELIMITER ;