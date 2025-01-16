DELIMITER //
-- Tags of a tag_type
DROP PROCEDURE IF EXISTS tagsTyped //
CREATE PROCEDURE tagsTyped
(IN type varchar(20))
BEGIN
  SELECT tags.name 
  FROM tags
  INNER JOIN tag_types ON tags.type_id = tag_types.id
  WHERE tag_types.name = type;
END //
-- Characters of a fandom
DROP PROCEDURE IF EXISTS charactersFandomed //
CREATE PROCEDURE charactersFandomed
(IN fandom varchar(100))
BEGIN
  SELECT characters.name
  FROM characters
  INNER JOIN fandoms ON characters.fandom_id = fandoms.id
  WHERE fandoms.name = fandom;
END //
-- Relations of a character
-- Links of a fanfiction
-- Fanfictions of an author
-- Fanfictions of a language
-- Fanfictions of a rating
-- Fanfictions of a score
-- Fanfictions of a fandom
-- Fanfictions of a character
-- Fanfictions of a relations
-- Fanfictions of a tag
-- Series of a fanfiction
DELIMITER ;