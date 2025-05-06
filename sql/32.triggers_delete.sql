DELIMITER //

CREATE TRIGGER trg_authors_delete
AFTER DELETE ON ffb_main.authors
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'authors',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_characters_delete
AFTER DELETE ON ffb_main.characters
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'characters',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_fandoms_delete
AFTER DELETE ON ffb_main.fandoms
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'fandoms',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_fanfictions_delete
AFTER DELETE ON ffb_main.fanfictions
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'fanfictions',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_languages_delete
AFTER DELETE ON ffb_main.languages
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'languages',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_links_delete
AFTER DELETE ON ffb_main.links
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'links',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_relations_delete
AFTER DELETE ON ffb_main.relations
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'relations',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_series_delete
AFTER DELETE ON ffb_main.series
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'series',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_tags_delete
AFTER DELETE ON ffb_main.tags
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'tags',
    OLD.id
  );
END;
//

CREATE TRIGGER trg_users_delete
AFTER DELETE ON ffb_main.users
FOR EACH ROW
BEGIN
  INSERT INTO `users_actions` (`user_id`, `type_action`, `datetime_action`, `object_action`, `id_action`)
  VALUES (
    @current_user_id,
    (SELECT id FROM actions WHERE name = 'REMOVE' LIMIT 1),
    NOW(),
    'users',
    OLD.id
  );
END;
//

DELIMITER ;