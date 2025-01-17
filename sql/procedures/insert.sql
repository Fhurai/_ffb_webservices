DELIMITER $$
-- Authors
DROP PROCEDURE IF EXISTS prc_insert_authors $$
CREATE PROCEDURE prc_insert_authors
(IN label VARCHAR(100), OUT id INT)
BEGIN
	DECLARE a_count INT;
	START TRANSACTION;
    SET a_count = (SELECT COUNT(*) 
                   FROM `authors`
                   WHERE name = label 
                   FOR SHARE);
    IF a_count = 0 THEN
        INSERT INTO `authors` (`name`) VALUES (label);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Author already exists.';
    END IF;
    COMMIT;
END $$
-- Fandoms
DROP PROCEDURE IF EXISTS prc_insert_fandoms $$
CREATE PROCEDURE prc_insert_fandoms
(IN label VARCHAR(100), OUT id INT)
BEGIN
	DECLARE a_count INT;
	START TRANSACTION;
    SET a_count = (SELECT COUNT(*) 
                   FROM `fandoms`
                   WHERE name = label 
                   FOR SHARE);
    IF a_count = 0 THEN
        INSERT INTO `fandoms` (`name`) VALUES (label);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Fandom already exists.';
    END IF;
    COMMIT;
END $$
-- Languages
DROP PROCEDURE IF EXISTS prc_insert_languages $$
CREATE PROCEDURE prc_insert_languages
(IN label VARCHAR(100), IN abbr VARCHAR(2), OUT id INT)
BEGIN
	DECLARE a_count INT;
	START TRANSACTION;
    SET a_count = (SELECT COUNT(*) 
                   FROM `languages`
                   WHERE name = label 
                   AND abbreviation = abbr
                   FOR SHARE);
    IF a_count = 0 THEN
        INSERT INTO `languages` (`name`, `abbreviation`) VALUES (label, abbr);
        SET id = LAST_INSERT_ID();
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Language already exists.';
    END IF;
    COMMIT;
END; $$
-- Tags
DROP FUNCTION IF EXISTS fn_check_tagtype $$
CREATE FUNCTION fn_check_tagtype(TID INT) RETURNS BOOLEAN
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;
        SELECT COUNT(*) > 0 INTO exist FROM `tag_types` WHERE id = TID;
    RETURN exist;
END;$$

DROP PROCEDURE IF EXISTS prc_insert_tags $$
CREATE PROCEDURE prc_insert_tags
(IN label VARCHAR(100), IN descrp TEXT, IN typeTag INT, OUT id INT)
BEGIN
    DECLARE t_count INT DEFAULT 1;
    START TRANSACTION;
    IF fn_check_tagtype(typeTag) THEN
        SET t_count = (SELECT COUNT(*) 
                    FROM `tags`
                    WHERE name = label 
                    AND type_id = typeTag
                    FOR SHARE);
        IF t_count = 0 THEN
            INSERT INTO `tags` (`name`, `description`, `type_id`) VALUES (label, descrp, typeTag);
            SET id = LAST_INSERT_ID();
        ELSE
            ROLLBACK;
            SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Tag already exists.';
        END IF;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Type tag does not exists.';
    END IF;
    COMMIT;
END$$
-- Characters
DROP FUNCTION IF EXISTS fn_check_fandom $$
CREATE FUNCTION fn_check_fandom(FID INT) RETURNS BOOLEAN
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;
        SELECT COUNT(*) > 0 INTO exist FROM `fandoms` WHERE id = FID;
    RETURN exist;
END;$$

DROP PROCEDURE IF EXISTS prc_insert_characters $$
CREATE PROCEDURE prc_insert_characters
(IN label VARCHAR(100), IN identifier INT, OUT id INT)
BEGIN
    DECLARE f_count INT DEFAULT 1;
    START TRANSACTION;
    IF fn_check_fandom(identifier) THEN
        SET f_count = (SELECT COUNT(*) 
                    FROM `characters`
                    WHERE name = label 
                    AND fandom_id = identifier
                    FOR SHARE);
        IF f_count = 0 THEN
            INSERT INTO `characters` (`name`, `fandom_id`) VALUES (label, identifier);
            SET id = LAST_INSERT_ID();
        ELSE
            ROLLBACK;
            SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Character already exists.';
        END IF;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Fandom does not exists.';
    END IF;
    COMMIT;
END$$
-- Relations
-- Fanfictions
-- Links
-- Series
-- Users
-- UsersActions
DELIMITER ;