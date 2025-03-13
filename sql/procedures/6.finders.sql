DELIMITER $$

-- ####################################################################################
-- # Authors
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_authors $$
CREATE PROCEDURE prc_findAll_authors()
BEGIN
    SELECT * FROM `authors`;
END $$

-- ####################################################################################
-- # Find Author by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_author_by_id $$
CREATE PROCEDURE prc_find_author_by_id(IN author_id INT)
BEGIN
    SELECT * FROM `authors` WHERE `id` = author_id;
END $$

-- ####################################################################################
-- # Fandoms
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_fandoms $$
CREATE PROCEDURE prc_findAll_fandoms()
BEGIN
    SELECT * FROM `fandoms`;
END $$

-- ####################################################################################
-- # Find Fandom by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_fandom_by_id $$
CREATE PROCEDURE prc_find_fandom_by_id(IN fandom_id INT)
BEGIN
    SELECT * FROM `fandoms` WHERE `id` = fandom_id;
END $$

-- ####################################################################################
-- # Languages
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_languages $$
CREATE PROCEDURE prc_findAll_languages()
BEGIN
    SELECT * FROM `languages`;
END $$

-- ####################################################################################
-- # Find Language by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_language_by_id $$
CREATE PROCEDURE prc_find_language_by_id(IN language_id INT)
BEGIN
    SELECT * FROM `languages` WHERE `id` = language_id;
END $$

-- ####################################################################################
-- # Tags
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_tags $$
CREATE PROCEDURE prc_findAll_tags()
BEGIN
    SELECT * FROM `tags`;
END $$

-- ####################################################################################
-- # Find Tag by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_tag_by_id $$
CREATE PROCEDURE prc_find_tag_by_id(IN tag_id INT)
BEGIN
    SELECT * FROM `tags` WHERE `id` = tag_id;
END $$

-- ####################################################################################
-- # Characters
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_characters $$
CREATE PROCEDURE prc_findAll_characters()
BEGIN
    SELECT * FROM `characters`;
END $$

-- ####################################################################################
-- # Find Character by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_character_by_id $$
CREATE PROCEDURE prc_find_character_by_id(IN character_id INT)
BEGIN
    SELECT * FROM `characters` WHERE `id` = character_id;
END $$

-- ####################################################################################
-- # Relations
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_relations $$
CREATE PROCEDURE prc_findAll_relations()
BEGIN
    SELECT * FROM `relations`;
END $$

-- ####################################################################################
-- # Find Relation by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_relation_by_id $$
CREATE PROCEDURE prc_find_relation_by_id(IN relation_id INT)
BEGIN
    SELECT * FROM `relations` WHERE `id` = relation_id;
END $$

-- ####################################################################################
-- # Fanfictions
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_fanfictions $$
CREATE PROCEDURE prc_findAll_fanfictions()
BEGIN
    SELECT * FROM `fanfictions`;
END $$

-- ####################################################################################
-- # Find Fanfiction by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_fanfiction_by_id $$
CREATE PROCEDURE prc_find_fanfiction_by_id(IN fanfiction_id INT)
BEGIN
    SELECT * FROM `fanfictions` WHERE `id` = fanfiction_id;
END $$

-- ####################################################################################
-- # Links
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_links $$
CREATE PROCEDURE prc_findAll_links()
BEGIN
    SELECT * FROM `links`;
END $$

-- ####################################################################################
-- # Find Link by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_link_by_id $$
CREATE PROCEDURE prc_find_link_by_id(IN link_id INT)
BEGIN
    SELECT * FROM `links` WHERE `id` = link_id;
END $$

-- ####################################################################################
-- # Series
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_series $$
CREATE PROCEDURE prc_findAll_series()
BEGIN
    SELECT * FROM `series`;
END $$

-- ####################################################################################
-- # Find Series by ID
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_find_series_by_id $$
CREATE PROCEDURE prc_find_series_by_id(IN series_id INT)
BEGIN
    SELECT * FROM `series` WHERE `id` = series_id;
END $$

-- ####################################################################################
-- # Fanfictions Fandoms
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_fanfictions_fandoms $$
CREATE PROCEDURE prc_findAll_fanfictions_fandoms(IN fanfiction_id INT)
BEGIN
    SELECT f.*
    FROM `fanfictions_fandoms` fnf
    INNER JOIN `fandoms` f ON fnf.fandom_id = f.id
    WHERE fnf.fanfiction_id = fanfiction_id;
END $$

-- ####################################################################################
-- # Fanfictions Relations
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_fanfictions_relations $$
CREATE PROCEDURE prc_findAll_fanfictions_relations(IN fanfiction_id INT)
BEGIN
    SELECT r.*
    FROM `fanfictions_relations` fnr
    INNER JOIN `relations` r ON fnr.relation_id = r.id
    WHERE fnr.fanfiction_id = fanfiction_id;
END $$

-- ####################################################################################
-- # Fanfictions Characters
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_fanfictions_characters $$
CREATE PROCEDURE prc_findAll_fanfictions_characters(IN fanfiction_id INT)
BEGIN
    SELECT c.*
    FROM `fanfictions_characters` fnc
    INNER JOIN `characters` c ON fnc.character_id = c.id
    WHERE fnc.fanfiction_id = fanfiction_id;
END $$

-- ####################################################################################
-- # Fanfictions Tags
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_fanfictions_tags $$
CREATE PROCEDURE prc_findAll_fanfictions_tags(IN fanfiction_id INT)
BEGIN
    SELECT t.*
    FROM `fanfictions_tags` fnt
    INNER JOIN `tags` t ON fnt.tag_id = t.id
    WHERE fnt.fanfiction_id = fanfiction_id;
END $$

-- ####################################################################################
-- # Series Fanfictions
-- ####################################################################################
DROP PROCEDURE IF EXISTS prc_findAll_series_fanfictions $$
CREATE PROCEDURE prc_findAll_series_fanfictions(IN series_id INT)
BEGIN
    SELECT ff.*
    FROM `series_fanfictions` sf
    INNER JOIN `fanfictions` ff ON sf.fanfiction_id = ff.id
    WHERE sf.series_id = series_id;
END $$

DELIMITER ;
