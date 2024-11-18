CREATE OR REPLACE VIEW stats_fandoms_characters AS (
    SELECT f.id as id, f.name AS fandom, COUNT(c.id) AS nb_characters
    FROM `ffb_main`.`characters` c 
    INNER JOIN `ffb_main`.`fandoms` f ON f.id = c.fandom_id
    GROUP BY  fandom_id
);

CREATE OR REPLACE VIEW stats_fandoms_relations AS (
    SELECT fandom_id as id, fandom_name as fandom, COUNT(relation_id) as nb_relations
    FROM (
            SELECT DISTINCT rc.relation_id, f.id as fandom_id, f.name as fandom_name
            FROM `ffb_main`.`fandoms` f
                INNER JOIN `ffb_main`.`characters` c ON c.fandom_id = f.id
                INNER JOIN `ffb_main`.`relations_characters` rc ON rc.character_id = c.id
        ) AS T1
    GROUP BY fandom_id
);

CREATE OR REPLACE VIEW stats_relations_characters AS (
    SELECT r.id, r.name, count(rc.character_id) as nb_characters
    FROM `ffb_main`.`relations` r 
    INNER JOIN `ffb_main`.`relations_characters` rc ON rc.relation_id = r.id GROUP BY r.id
);

CREATE OR REPLACE VIEW stats_users_actions AS (
    SELECT u.id, u.username, count(ua.id) as nb_actions
    FROM `ffb_main`.`users_actions` ua
    INNER JOIN `ffb_main`.`users` u on u.id = ua.user_id
    GROUP BY u.id
);

CREATE OR REPLACE VIEW stats_authors_fanfictions AS (
    SELECT a.id as id, a.name as author, count(f.id) as nb_fanfictions 
    FROM `ffb_main`.`authors` a 
    INNER JOIN `ffb_main`.`fanfictions` f on f.author_id = a.id 
    GROUP BY author_id
);

CREATE OR REPLACE VIEW stats_authors_ratings_fanfictions AS (
    SELECT a.id AS id, a.name AS name, COUNT(f.id) AS nb_fanfictions, r.name AS rating, r.id AS identifier
    FROM `ffb_main`.`authors` a
    INNER JOIN `ffb_main`.`fanfictions` f ON f.author_id = a.id
    INNER JOIN `ffb_main`.`ratings` r ON r.id = f.rating_id
    GROUP BY f.author_id, f.rating_id
);

CREATE OR REPLACE VIEW stats_languages_fanfictions AS (
    SELECT l.id as id, l.name as author, count(f.id) as nb_fanfictions 
    FROM `ffb_main`.`languages` l 
    INNER JOIN `ffb_main`.`fanfictions` f on f.language_id = l.id 
    GROUP BY l.id
);

CREATE OR REPLACE VIEW stats_ratings_fanfictions AS (
    SELECT r.id as id, r.name as rating, count(f.id) as nb_fanfictions 
    FROM `ffb_main`.`ratings` r 
    INNER JOIN `ffb_main`.`fanfictions` f on f.rating_id = r.id
    GROUP BY r.id
);

CREATE OR REPLACE VIEW stats_fandoms_fanfictions AS (
    SELECT f.id as id, f.name as fandom, count(ff.id) as nb_fanfictions 
    FROM `ffb_main`.`fandoms` f
    INNER JOIN `ffb_main`.`fanfictions_fandoms` fnf ON fnf.fandom_id = f.id
    INNER JOIN `ffb_main`.`fanfictions` ff on ff.id = fnf.fanfiction_id
    GROUP BY f.id
);

CREATE OR REPLACE VIEW stats_relations_fanfictions AS (
    SELECT r.id as id, r.name as relation, count(ff.id) as nb_fanfictions 
    FROM `ffb_main`.`relations` r
    INNER JOIN `ffb_main`.`fanfictions_relations` fnr ON fnr.relation_id = r.id
    INNER JOIN `ffb_main`.`fanfictions` ff on ff.id = fnr.fanfiction_id
    GROUP BY r.id
);

CREATE OR REPLACE VIEW stats_characters_fanfictions AS (
    SELECT c.id as id, c.name as characters, f.name as fandom, count(ff.id) as nb_fanfictions 
    FROM `ffb_main`.`characters` c
    INNER JOIN `ffb_main`.`fanfictions_characters` fnc ON fnc.character_id = c.id
    INNER JOIN `ffb_main`.`fanfictions` ff on ff.id = fnc.fanfiction_id
    INNER JOIN `ffb_main`.`fandoms` f on f.id = c.fandom_id
    GROUP BY c.id
);

CREATE OR REPLACE VIEW stats_tags_fanfictions AS (
    SELECT t.id as id, t.name as tag, count(ff.id) as nb_fanfictions 
    FROM `ffb_main`.`tags` t
    INNER JOIN `ffb_main`.`fanfictions_tags` fnt ON fnt.tag_id = t.id
    INNER JOIN `ffb_main`.`fanfictions` ff on ff.id = fnt.fanfiction_id
    GROUP BY t.id
);

CREATE OR REPLACE VIEW stats_series_fanfictions AS (
    SELECT s.id as id, s.name as tag, count(ff.id) as nb_fanfictions 
    FROM `ffb_main`.`series` s
    INNER JOIN `ffb_main`.`series_fanfictions` sfn ON sfn.series_id = s.id
    INNER JOIN `ffb_main`.`fanfictions` ff on ff.id = sfn.fanfiction_id
    GROUP BY s.id
);