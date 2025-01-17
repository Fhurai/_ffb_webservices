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
END $$
-- Tags
-- Characters
-- Relations
-- Fanfictions
-- Links
-- Series
-- Users
-- UsersActions
DELIMITER ;