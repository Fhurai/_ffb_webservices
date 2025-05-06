DELIMITER //

CREATE TRIGGER trg_authors_update
AFTER UPDATE ON ffb_main.authors
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'authors',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_characters_update
AFTER UPDATE ON ffb_main.characters
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'characters',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_fandoms_update
AFTER UPDATE ON ffb_main.fandoms
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'fandoms',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_fanfictions_update
AFTER UPDATE ON ffb_main.fanfictions
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'fanfictions',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_languages_update
AFTER UPDATE ON ffb_main.languages
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'languages',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_links_update
AFTER UPDATE ON ffb_main.links
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'links',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_relations_update
AFTER UPDATE ON ffb_main.relations
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'relations',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_series_update
AFTER UPDATE ON ffb_main.series
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'series',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_tags_update
AFTER UPDATE ON ffb_main.tags
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'tags',
      NEW.id
    );
  END IF;
END;
//

CREATE TRIGGER trg_users_update
AFTER UPDATE ON ffb_main.users
FOR EACH ROW
BEGIN
  DECLARE action_id INT;

  IF OLD.delete_date IS NULL AND NEW.delete_date IS NOT NULL THEN
    -- Case: delete_date just filled => DELETE action
    SET action_id = (SELECT id FROM actions WHERE name = 'DELETE' LIMIT 1);

  ELSEIF OLD.delete_date IS NOT NULL AND NEW.delete_date IS NULL THEN
    -- Case: delete_date just emptied => RESTORE action
    SET action_id = (SELECT id FROM actions WHERE name = 'RESTORE' LIMIT 1);

  ELSE
    -- Add all relevant fields you want to track for generic updates
    SET action_id = (SELECT id FROM actions WHERE name = 'UPDATE' LIMIT 1);
  END IF;

  IF action_id IS NOT NULL THEN
    INSERT INTO users_actions (user_id, type_action, datetime_action, object_action, id_action)
    VALUES (
      @current_user_id,
      action_id,
      NOW(),
      'users',
      NEW.id
    );
  END IF;
END;
//

DELIMITER ;