USE ffb_main;
DELIMITER //

CREATE TRIGGER trg_authors_insert
AFTER INSERT ON ffb_main.authors
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'authors',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_characters_insert
AFTER INSERT ON ffb_main.characters
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'characters',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_fandoms_insert
AFTER INSERT ON ffb_main.fandoms
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'fandoms',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_fanfictions_insert
AFTER INSERT ON ffb_main.fanfictions
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'fanfictions',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_languages_insert
AFTER INSERT ON ffb_main.languages
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'languages',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_links_insert
AFTER INSERT ON ffb_main.links
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'links',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_relations_insert
AFTER INSERT ON ffb_main.relations
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'relations',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_series_insert
AFTER INSERT ON ffb_main.series
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'series',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_tags_insert
AFTER INSERT ON ffb_main.tags
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'tags',
    NEW.id
  );
END;
//

CREATE TRIGGER trg_users_insert
AFTER INSERT ON ffb_main.users
FOR EACH ROW
BEGIN
  INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'INSERT' LIMIT 1),
    NOW(),
    'users',
    NEW.id
  );
END;
//

DELIMITER ;
