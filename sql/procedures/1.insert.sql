DELIMITER $$

-- ####################################################################################
-- # Authors
-- ####################################################################################

/*
Inserts a new author if it doesn't exist.
Parameters:
    label (VARCHAR(100)): Author's name.
    id (OUT INT): Returns the new/existing author's ID.
Exceptions:
    - SQLSTATE '50001': Author already exists.
Example:
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

    -- Check if the author exists by name (no check function for names)
    SELECT COUNT(*) INTO a_count 
    FROM `authors` 
    WHERE name = label 
    FOR SHARE;

    IF a_count = 0 THEN
        INSERT INTO `authors` (`name`) VALUES (label);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Author already exists.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Fandoms
-- ####################################################################################

/*
Inserts a new fandom if it doesn't exist.
Parameters:
    label (VARCHAR(100)): Fandom name.
    id (OUT INT): Returns the new fandom ID.
Exceptions:
    - SQLSTATE '50001': Fandom already exists.
Example:
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

    -- Check for existing fandom by name
    SELECT COUNT(*) INTO a_count 
    FROM `fandoms` 
    WHERE name = label 
    FOR SHARE;

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

/*
Inserts a new language if it doesn't exist.
Parameters:
    label (VARCHAR(100)): Language name.
    abbr (VARCHAR(2)): Language abbreviation.
    id (OUT INT): Returns the new language ID.
Exceptions:
    - SQLSTATE '50001': Language already exists.
Example:
    CALL prc_insert_languages('English', 'EN', @lang_id);
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

    -- Check for existing language by name and abbreviation
    SELECT COUNT(*) INTO a_count 
    FROM `languages` 
    WHERE name = label 
    AND abbreviation = abbr 
    FOR SHARE;

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

/*
Inserts a new tag if it doesn't exist and validates the tag type.
Parameters:
    label (VARCHAR(100)): Tag name.
    descrp (TEXT): Tag description.
    typeTag (INT): Tag type ID (validated via fn_check_tagtype).
    id (OUT INT): Returns the new tag ID.
Exceptions:
    - SQLSTATE '50001': Tag already exists.
    - SQLSTATE '50002': Tag type does not exist.
Example:
    CALL prc_insert_tags('Magic', 'Wizardry', 2, @tag_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_tags $$
CREATE PROCEDURE prc_insert_tags(
    IN label VARCHAR(100), 
    IN descrp TEXT, 
    IN typeTag INT, 
    OUT id INT
)
BEGIN
    DECLARE t_count INT;

    START TRANSACTION;

    -- Validate tag type using check function
    IF NOT fn_check_tagtype(typeTag) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Tag type does not exist.';
    END IF;

    -- Check for existing tag by name and type
    SELECT COUNT(*) INTO t_count 
    FROM `tags` 
    WHERE `name` = label 
    AND `type_id` = typeTag 
    FOR SHARE;

    IF t_count = 0 THEN
        INSERT INTO `tags` (`name`, `description`, `type_id`) VALUES (label, descrp, typeTag);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Tag already exists.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Characters
-- ####################################################################################

/*
Inserts a new character if it doesn't exist and validates the fandom.
Parameters:
    label (VARCHAR(100)): Character name.
    identifier (INT): Fandom ID (validated via fn_check_fandom).
    id (OUT INT): Returns the new character ID.
Exceptions:
    - SQLSTATE '50001': Character already exists.
    - SQLSTATE '50002': Fandom does not exist.
Example:
    CALL prc_insert_characters('Harry Potter', 1, @char_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_characters $$
CREATE PROCEDURE prc_insert_characters(
    IN label VARCHAR(100), 
    IN identifier INT, 
    OUT id INT
)
BEGIN
    DECLARE f_count INT;

    START TRANSACTION;

    -- Validate fandom using check function
    IF NOT fn_check_fandom(identifier) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exist.';
    END IF;

    -- Check for existing character by name and fandom
    SELECT COUNT(*) INTO f_count 
    FROM `characters` 
    WHERE name = label 
    AND fandom_id = identifier 
    FOR SHARE;

    IF f_count = 0 THEN
        INSERT INTO `characters` (`name`, `fandom_id`) VALUES (label, identifier);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Character already exists.';
    END IF;

    COMMIT;
END $$

-- ####################################################################################
-- # Relations
-- ####################################################################################

/*
Inserts a new relation and links characters (validates characters via fn_check_character).
Parameters:
    label (VARCHAR(255)): Relation name.
    chara (JSON): JSON array of character IDs.
    id (OUT INT): Returns the new relation ID.
Exceptions:
    - SQLSTATE '50001': Relation already exists.
    - SQLSTATE '50002': Invalid character ID.
Example:
    CALL prc_insert_relations('Parent-Child', '[1, 2]', @relation_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_relations $$
CREATE PROCEDURE prc_insert_relations(
    IN label VARCHAR(255), 
    IN chara JSON, 
    OUT id INT
)
BEGIN
    DECLARE r_count INT;
    DECLARE parent_id INT;
    DECLARE i INT DEFAULT 0;
    DECLARE chara_id VARCHAR(10);
    DECLARE temp VARCHAR(100);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check for existing relation by name
    SELECT COUNT(*) INTO r_count 
    FROM `relations` 
    WHERE `name` = label 
    FOR SHARE;

    IF r_count = 0 THEN
        INSERT INTO `relations` (`name`) VALUES (label);
        SET parent_id = LAST_INSERT_ID();

        -- Validate and link characters
        WHILE i < JSON_LENGTH(chara) DO
            SET chara_id = JSON_UNQUOTE(JSON_EXTRACT(chara, CONCAT('$[', i, ']')));
            IF NOT fn_check_character(CAST(chara_id AS UNSIGNED)) THEN
                ROLLBACK;
                SET temp = CONCAT('Character ', chara_id, ' does not exist.');
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
            END IF;
            INSERT INTO `relations_characters` (`relation_id`, `character_id`) VALUES (parent_id, chara_id);
            SET i = i + 1;
        END WHILE;

        COMMIT;
        SET id = parent_id;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Relation already exists.';
    END IF;
END $$

-- ####################################################################################
-- # Fanfictions
-- ####################################################################################

/*
Inserts a new fanfiction and links related entities (validates IDs via check functions).
Parameters:
    label (VARCHAR(100)): Fanfiction title.
    author (INT): Author ID (validated via fn_check_author).
    rating (INT): Rating ID (validated via fn_check_rating).
    summary (TEXT): Story summary.
    language_id (INT): Language ID (validated via fn_check_language).
    chara (JSON): JSON array of character IDs.
    fandoms (JSON): JSON array of fandom IDs.
    relations (JSON): JSON array of relation IDs.
    tags (JSON): JSON array of tag IDs.
    id (OUT INT): Returns the new fanfiction ID.
Exceptions:
    - SQLSTATE '50001': Fanfiction already exists.
    - SQLSTATE '50002': Invalid author, rating, language, character, fandom, relation, or tag.
Example:
    CALL prc_insert_fanfictions('The Phoenix', 1, 3, 'A tale...', 1, '[5]', '[1]', '[2]', '[4]', @fic_id);
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
    IN tags JSON, 
    OUT id INT
)
BEGIN
    DECLARE f_count INT;
    DECLARE parent_id INT;
    DECLARE i INT DEFAULT 0;
    DECLARE child_id VARCHAR(10);
    DECLARE temp VARCHAR(100);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Validate author, rating, language using check functions
    IF NOT (fn_check_author(author) AND fn_check_rating(rating) AND fn_check_language(language_id)) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Author, rating, or language does not exist.';
    END IF;

    -- Check for existing fanfiction by name and author
    SELECT COUNT(*) INTO f_count 
    FROM `fanfictions` 
    WHERE `name` = label 
    AND `author_id` = author;

    IF f_count = 0 THEN
        INSERT INTO `fanfictions`(`name`, `author_id`, `rating_id`, `description`, `language_id`) 
        VALUES (label, author, rating, summary, language_id);
        SET parent_id = LAST_INSERT_ID();

        -- Link characters (validated via fn_check_character)
        WHILE i < JSON_LENGTH(chara) DO
            SET child_id = JSON_UNQUOTE(JSON_EXTRACT(chara, CONCAT('$[', i, ']')));
            IF NOT fn_check_character(CAST(child_id AS UNSIGNED)) THEN
                ROLLBACK;
                SET temp = CONCAT('Character ', child_id, ' does not exist.');
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
            END IF;
            INSERT INTO `fanfictions_characters` VALUES (parent_id, child_id);
            SET i = i + 1;
        END WHILE;

        -- Reset index for next loop
        SET i = 0;

        -- Link fandoms (validated via fn_check_fandom)
        WHILE i < JSON_LENGTH(fandoms) DO
            SET child_id = JSON_UNQUOTE(JSON_EXTRACT(fandoms, CONCAT('$[', i, ']')));
            IF NOT fn_check_fandom(CAST(child_id AS UNSIGNED)) THEN
                ROLLBACK;
                SET temp = CONCAT('Fandom ', child_id, ' does not exist.');
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
            END IF;
            INSERT INTO `fanfictions_fandoms` VALUES (parent_id, child_id);
            SET i = i + 1;
        END WHILE;

        SET i = 0;

        -- Link relations (validated via fn_check_relation)
        WHILE i < JSON_LENGTH(relations) DO
            SET child_id = JSON_UNQUOTE(JSON_EXTRACT(relations, CONCAT('$[', i, ']')));
            IF NOT fn_check_relation(CAST(child_id AS UNSIGNED)) THEN
                ROLLBACK;
                SET temp = CONCAT('Relation ', child_id, ' does not exist.');
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
            END IF;
            INSERT INTO `fanfictions_relations` VALUES (parent_id, child_id);
            SET i = i + 1;
        END WHILE;

        SET i = 0;

        -- Link tags (validated via fn_check_tag)
        WHILE i < JSON_LENGTH(tags) DO
            SET child_id = JSON_UNQUOTE(JSON_EXTRACT(tags, CONCAT('$[', i, ']')));
            IF NOT fn_check_tag(CAST(child_id AS UNSIGNED)) THEN
                ROLLBACK;
                SET temp = CONCAT('Tag ', child_id, ' does not exist.');
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
            END IF;
            INSERT INTO `fanfictions_tags` VALUES (parent_id, child_id);
            SET i = i + 1;
        END WHILE;

        COMMIT;
        SET id = parent_id;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Fanfiction already exists.';
    END IF;
END $$

-- ####################################################################################
-- # Links
-- ####################################################################################

/*
Inserts a new link for a fanfiction (validates fanfiction via fn_check_fanfiction).
Parameters:
    url_str (VARCHAR(255)): URL string.
    fanfiction_id (INT): Fanfiction ID (validated via fn_check_fanfiction).
    id (OUT INT): Returns the new link ID.
Exceptions:
    - SQLSTATE '50001': Link already exists.
    - SQLSTATE '50002': Fanfiction does not exist.
Example:
    CALL prc_insert_links('https://example.com', 1, @link_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_links $$
CREATE PROCEDURE prc_insert_links(
    IN url_str VARCHAR(255),
    IN fanfiction_id INT,
    OUT id INT
)
BEGIN
    DECLARE l_count INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Validate fanfiction using check function
    IF NOT fn_check_fanfiction(fanfiction_id) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fanfiction does not exist.';
    END IF;

    -- Check for existing link
    SELECT COUNT(*) INTO l_count 
    FROM `links` 
    WHERE `url` = url_str 
    AND `fanfiction_id` = fanfiction_id 
    FOR SHARE;

    IF l_count = 0 THEN
        INSERT INTO `links`(`url`, `fanfiction_id`) VALUES (url_str, fanfiction_id);
        SET id = LAST_INSERT_ID();
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Link already exists.';
    END IF;
END $$

-- ####################################################################################
-- # Series
-- ####################################################################################

/*
Inserts a new series and links fanfictions (validates fanfictions via fn_check_fanfiction).
Parameters:
    label (VARCHAR(100)): Series name.
    summary (TEXT): Series description.
    fanfictions (JSON): JSON array of fanfiction IDs.
    id (OUT INT): Returns the new series ID.
Exceptions:
    - SQLSTATE '50001': Series already exists.
    - SQLSTATE '50002': Invalid fanfiction ID.
Example:
    CALL prc_insert_series('Wizardry Chronicles', 'Epic tales', '[1, 2]', @series_id);
*/
DROP PROCEDURE IF EXISTS prc_insert_series $$
CREATE PROCEDURE prc_insert_series(
    IN label VARCHAR(100),
    IN summary TEXT,
    IN fanfictions JSON,
    OUT id INT
)
BEGIN
    DECLARE s_count INT;
    DECLARE parent_id INT;
    DECLARE i INT DEFAULT 0;
    DECLARE child_id VARCHAR(10);
    DECLARE temp VARCHAR(100);

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    -- Check for existing series by name and description
    SELECT COUNT(*) INTO s_count 
    FROM `series` 
    WHERE `name` = label 
    AND `description` = summary;

    IF s_count = 0 THEN
        INSERT INTO `series`(`name`, `description`) VALUES (label, summary);
        SET parent_id = LAST_INSERT_ID();

        -- Link fanfictions (validated via fn_check_fanfiction)
        WHILE i < JSON_LENGTH(fanfictions) DO

            -- Extract the character ID from the JSON array
            SET child_id = JSON_UNQUOTE(JSON_EXTRACT(fanfictions, CONCAT('$[', i, ']')));

            IF fn_check_fanfiction(CAST(child_id AS UNSIGNED)) THEN
                -- Link the character to the relation
                INSERT INTO `series_fanfictions` (`series_id`, `fanfiction_id`) VALUES (parent_id, child_id);

                SET i = i + 1; -- Move to the next character
            ELSE
                ROLLBACK;

                SELECT CONCAT('Fanfiction ', child_id,' does not exist.') INTO temp;
                SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = temp;
            END IF;
        END WHILE;
        COMMIT;

        SET id = parent_id;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Series already exists.';
    END IF;
END $$