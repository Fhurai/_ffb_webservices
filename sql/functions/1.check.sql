DELIMITER $$

/*
Checks if a tag type exists by ID.
Parameters:
    TID (INT): The ID of the tag type to check.
Returns:
    BOOLEAN: TRUE if the tag type exists, FALSE otherwise.
Example:
    SELECT fn_check_tagtype(5); -- Returns TRUE if tag_types.id=5 exists
Table Reference:
    `tag_types` - Master table for valid tag categories.
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

/*
Checks if a fandom exists by ID.
Parameters:
    FID (INT): The ID of the fandom to check.
Returns:
    BOOLEAN: TRUE if the fandom exists, FALSE otherwise.
Example:
    SELECT fn_check_fandom(42); -- Returns TRUE if fandoms.id=42 exists
Table Reference:
    `fandoms` - Contains fandom metadata (e.g., names, descriptions).
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

/*
Checks if a character exists by ID.
Parameters:
    CID (INT): The ID of the character to check.
Returns:
    BOOLEAN: TRUE if the character exists, FALSE otherwise.
Example:
    SELECT fn_check_character(100); -- Returns TRUE if characters.id=100 exists
Table Reference:
    `characters` - Stores character data linked to fandoms.
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

/*
Checks if an author exists by ID.
Parameters:
    AID (INT): The ID of the author to check.
Returns:
    BOOLEAN: TRUE if the author exists, FALSE otherwise.
Example:
    SELECT fn_check_author(7); -- Returns TRUE if authors.id=7 exists
Table Reference:
    `authors` - Tracks authors of fanfictions.
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

/*
Checks if a rating exists by ID.
Parameters:
    RID (INT): The ID of the rating to check.
Returns:
    BOOLEAN: TRUE if the rating exists, FALSE otherwise.
Example:
    SELECT fn_check_rating(3); -- Returns TRUE if ratings.id=3 exists
Table Reference:
    `ratings` - Defines content ratings (e.g., "General", "Mature").
*/
DROP FUNCTION IF EXISTS fn_check_rating $$
CREATE FUNCTION fn_check_rating(
    RID INT
) RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the rating exists
    SELECT COUNT(*) > 0 INTO exist 
    FROM `ratings` 
    WHERE id = RID;

    RETURN exist;
END $$

/*
Checks if a language exists by ID.
Parameters:
    LID (INT): The ID of the language to check.
Returns:
    BOOLEAN: TRUE if the language exists, FALSE otherwise.
Example:
    SELECT fn_check_language(1); -- Returns TRUE if languages.id=1 exists
Table Reference:
    `languages` - Contains supported languages for fanfictions.
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

/*
Checks if a relation (e.g., character1/character2/...) exists by ID.
Parameters:
    RID (INT): The ID of the relation to check.
Returns:
    BOOLEAN: TRUE if the relation exists, FALSE otherwise.
Example:
    SELECT fn_check_relation(12); -- Returns TRUE if relations.id=12 exists
Table Reference:
    `relations` - Defines relationships between entities (e.g., fandoms).
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

/*
Checks if a tag exists by ID.
Parameters:
    TID (INT): The ID of the tag to check.
Returns:
    BOOLEAN: TRUE if the tag exists, FALSE otherwise.
Example:
    SELECT fn_check_tag(55); -- Returns TRUE if tags.id=55 exists
Table Reference:
    `tags` - Contains user-generated tags for categorizing content.
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

/*
Checks if a fanfiction exists by ID.
Parameters:
    FID (INT): The ID of the fanfiction to check.
Returns:
    BOOLEAN: TRUE if the fanfiction exists, FALSE otherwise.
Example:
    SELECT fn_check_fanfiction(202); -- Returns TRUE if fanfictions.id=202 exists
Table Reference:
    `fanfictions` - Main table storing fanfiction metadata and content.
*/
DROP FUNCTION IF EXISTS fn_check_fanfiction $$
CREATE FUNCTION fn_check_fanfiction(
    FID INT
) RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE exist BOOLEAN DEFAULT true;

    -- Check if the fanfiction exists
    SELECT COUNT(*) > 0 INTO exist
    FROM `fanfictions`
    WHERE id = FID;

    RETURN exist;
END $$