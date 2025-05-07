USE ffb_main;
/*
 * PARAMETERS TABLES (no dates)
 */
CREATE TABLE IF NOT EXISTS ratings (
    id INT(10) UNSIGNED PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

INSERT INTO `ratings` (`id`,`name`)
VALUES ("0", "K / 3"),
("1", "K+ / 7"),
("2", "T / 12"),
("3", "M / 16"),
("4", "MA / 18");

CREATE TABLE IF NOT EXISTS scores (
    id INT(10) UNSIGNED PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

INSERT INTO `scores` (`id`,`name`)
VALUES ("0", "Unacceptable"),
("1", "Poor"),
("2", "Needs improvement"),
("3", "Acceptable"),
("4", "Good"),
("5", "Excellent");

/*
 * TABLES
 */
CREATE TABLE IF NOT EXISTS fandoms (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    CONSTRAINT CHK_fandoms_name CHECK (LENGTH(name) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS authors (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS languages (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    abbreviation VARCHAR(2) NOT NULL UNIQUE,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    CONSTRAINT CHK_languages_name CHECK (LENGTH(name) > 0),
    CONSTRAINT CHK_languages_abbreviation CHECK (LENGTH(abbreviation) = 2)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS tag_types (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE
) ENGINE=InnoDB;

INSERT INTO `tag_types` (`id`,`name`)
VALUES ("1", "Genre"),
("2", "Timeline"),
("3", "Relationships"),
("4", "Other");

CREATE TABLE IF NOT EXISTS tags (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    type_id INT(10) UNSIGNED NOT NULL,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    FOREIGN KEY (type_id) REFERENCES tag_types(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT CHK_tags_name CHECK (LENGTH(name) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS characters (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    fandom_id INT(10) UNSIGNED NOT NULL,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    FOREIGN KEY (fandom_id) REFERENCES fandoms(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    UNIQUE (name, fandom_id),
    CONSTRAINT CHK_characters_name CHECK (LENGTH(name) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS relations (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    CONSTRAINT CHK_relations_name CHECK (LENGTH(name) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS relations_characters (
    relation_id INT(10) UNSIGNED,
    character_id INT(10) UNSIGNED,
    PRIMARY KEY (relation_id, character_id),
    FOREIGN KEY (relation_id) REFERENCES relations(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (character_id) REFERENCES characters(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS fanfictions (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    author_id INT(10) UNSIGNED NOT NULL,
    rating_id INT(2) UNSIGNED NOT NULL,
    description TEXT NOT NULL,
    language_id INT(10) UNSIGNED NOT NULL,
    score_id INT(2) UNSIGNED,
    evaluation TEXT,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    FOREIGN KEY (language_id) REFERENCES languages(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    FOREIGN KEY (rating_id) REFERENCES ratings(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    FOREIGN KEY (score_id) REFERENCES scores(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    UNIQUE (name, author_id),
    CONSTRAINT CHK_fanfictions_name CHECK (LENGTH(name) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS fanfictions_fandoms (
    fanfiction_id INT(10) UNSIGNED,
    fandom_id INT(10) UNSIGNED,
    PRIMARY KEY (fanfiction_id, fandom_id),
    FOREIGN KEY (fanfiction_id) REFERENCES fanfictions(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (fandom_id) REFERENCES fandoms(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS fanfictions_relations (
    fanfiction_id INT(10) UNSIGNED,
    relation_id INT(10) UNSIGNED,
    PRIMARY KEY (fanfiction_id, relation_id),
    FOREIGN KEY (fanfiction_id) REFERENCES fanfictions(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (relation_id) REFERENCES relations(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS fanfictions_characters (
    fanfiction_id INT(10) UNSIGNED,
    character_id INT(10) UNSIGNED,
    PRIMARY KEY (fanfiction_id, character_id),
    FOREIGN KEY (fanfiction_id) REFERENCES fanfictions(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (character_id) REFERENCES characters(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS fanfictions_tags (
    fanfiction_id INT(10) UNSIGNED,
    tag_id INT(10) UNSIGNED,
    PRIMARY KEY (fanfiction_id, tag_id),
    FOREIGN KEY (fanfiction_id) REFERENCES fanfictions(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES tags(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS links (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255) NOT NULL UNIQUE,
    fanfiction_id INT(10) UNSIGNED NOT NULL,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    FOREIGN KEY (fanfiction_id) REFERENCES fanfictions(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT CHK_links_url CHECK (LENGTH(url) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS series (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    score_id INT(2) UNSIGNED,
    evaluation TEXT,
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    FOREIGN KEY (score_id) REFERENCES scores(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT CHK_series_name CHECK (LENGTH(name) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS series_fanfictions (
    series_id INT(10) UNSIGNED,
    fanfiction_id INT(10) UNSIGNED,
    ranking INT(2) NOT NULL,
    PRIMARY KEY (series_id, fanfiction_id),
    FOREIGN KEY (series_id) REFERENCES series(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (fanfiction_id) REFERENCES fanfictions(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS users (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    is_admin BOOLEAN NOT NULL,
    is_local BOOLEAN NOT NULL,
    birthday DATETIME NOT NULL,
    is_nsfw BOOLEAN NOT NULL DEFAULT (false),
    creation_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    update_date DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    delete_date DATETIME DEFAULT NULL,
    CONSTRAINT CHK_users_username CHECK (LENGTH(username) > 0),
    CONSTRAINT CHK_users_email CHECK (LENGTH(email) > 0)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS actions (
    id INT(10) UNSIGNED PRIMARY KEY,
    name VARCHAR(10) UNIQUE,
    CONSTRAINT CHK_actions_name CHECK (LENGTH(name) > 0)
) ENGINE=InnoDB;

INSERT INTO `actions`(`id`, `name`)
VALUES ("1", "INSERT"),
("2", "UPDATE"),
("3", "DELETE"),
("4", "RESTORE"),
("5", "REMOVE");

CREATE TABLE IF NOT EXISTS users_actions (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id INT(10) UNSIGNED NOT NULL,
    type_action INT(10) UNSIGNED NOT NULL,
    datetime_action DATETIME NOT NULL DEFAULT (CURRENT_TIMESTAMP),
    object_action VARCHAR(25) NOT NULL, -- class
    id_action INT(10) UNSIGNED NOT NULL, -- id
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    FOREIGN KEY (type_action) REFERENCES actions(id) ON UPDATE RESTRICT ON DELETE RESTRICT
) ENGINE=InnoDB;

/*
 * VIEWS DATA
 */

CREATE OR REPLACE VIEW view_data_users AS (
    SELECT u.username, u.password
    FROM users u
    WHERE delete_date IS NULL
);

CREATE OR REPLACE VIEW view_data_characters AS (
    SELECT c.name as name, f.name as fandom, c.creation_date as creation_date, c.update_date as update_date, c.delete_date as delete_date
    FROM characters c
    INNER JOIN fandoms f ON f.id = c.fandom_id
);

CREATE OR REPLACE VIEW view_data_relations AS (
    SELECT r.name as name, c.name as character_name, r.creation_date as creation_date, r.update_date as update_date, r.delete_date as delete_date
    FROM relations r
    INNER JOIN relations_characters rc ON rc.relation_id = r.id
    INNER JOIN characters c ON c.id = rc.character_id
);

CREATE OR REPLACE VIEW view_data_fanfictions AS (
    SELECT f.id as id, f.name as name, a.name as author, r.name as rating, f.description, l.name as language, s.name as score, f.evaluation as evaluation, f.creation_date as creation_date, f.update_date as update_date, f.delete_date as delete_date
    FROM `fanfictions` f
    INNER JOIN authors a ON a.id = f.author_id
    INNER JOIN languages l on l.id = f.language_id
    INNER JOIN ratings r on r.id = f.rating_id
    LEFT JOIN scores s on s.id = f.score_id
);

CREATE OR REPLACE VIEW view_data_crossovers AS (
    SELECT f.id as id, f.name as name, a.name as author, r.name as rating, f.description, l.name as language, s.name as score, f.evaluation as evaluation, f.creation_date as creation_date, f.update_date as update_date, f.delete_date as delete_date
    FROM fanfictions f
    INNER JOIN authors a ON a.id = f.author_id
    INNER JOIN languages l on l.id = f.language_id
    INNER JOIN ratings r on r.id = f.rating_id
    LEFT JOIN scores s on s.id = f.score_id
    WHERE  f.id IN(
        SELECT f1.id
        FROM fanfictions f1
        INNER JOIN fanfictions_fandoms fnf ON fnf.fanfiction_id = f1.id
        GROUP BY f1.id
        HAVING COUNT(fnf.fandom_id) > 1
    )
);

CREATE OR REPLACE VIEW view_fanfictions_fandoms AS (
    SELECT f.name as name, ff.name as fanfiction, ff.id as identifier
    FROM `fanfictions_fandoms` fnf
    INNER JOIN fanfictions ff ON ff.id = fnf.fanfiction_id
    INNER JOIN fandoms f ON f.id = fnf.fandom_id
);

CREATE OR REPLACE VIEW view_fanfictions_relations AS (
    SELECT r.name as name, ff.name as fanfiction, ff.id as identifier
    FROM `fanfictions_relations` fnr
    INNER JOIN fanfictions ff ON ff.id = fnr.fanfiction_id
    INNER JOIN relations r ON r.id = fnr.relation_id
);

CREATE OR REPLACE VIEW view_fanfictions_characters AS (
    SELECT c.name as name, ff.name as fanfiction, ff.id as identifier
    FROM `fanfictions_characters` fnc
    INNER JOIN fanfictions ff ON ff.id = fnc.fanfiction_id
    INNER JOIN characters c ON c.id = fnc.character_id
);

CREATE OR REPLACE VIEW view_fanfictions_tags AS (
    SELECT t.name as name, ff.name as fanfiction, ff.id as identifier
    FROM `fanfictions_tags` fnt
    INNER JOIN fanfictions ff ON ff.id = fnt.fanfiction_id
    INNER JOIN tags t ON t.id = fnt.tag_id
);

CREATE OR REPLACE VIEW view_fanfictions_links AS (
    SELECT ff.id AS id, ff.name AS NAME, l.url
    FROM `links` l
    INNER JOIN fanfictions ff ON ff.id = l.fanfiction_id
);

CREATE OR REPLACE VIEW view_series_fanfictions AS (
    SELECT ff.id as id, ff.name as name, r.name as rating, sf.ranking as ranking, s.name as series, s.id as identifier
    FROM `series_fanfictions` sf
    INNER JOIN series s ON s.id = sf.series_id
    INNER JOIN fanfictions ff ON ff.id = sf.fanfiction_id
    INNER JOIN ratings r ON r.id = ff.rating_id
);

CREATE OR REPLACE VIEW view_series_authors AS (
    SELECT DISTINCT a.name as name, s.name as series, s.id as identifier
    FROM `series_fanfictions` sf
    INNER JOIN series s ON s.id = sf.series_id
    INNER JOIN fanfictions ff ON ff.id = sf.fanfiction_id
    INNER JOIN authors a ON a.id = ff.author_id
);

CREATE OR REPLACE VIEW view_series_languages AS (
    SELECT DISTINCT l.name as name, s.name as series, s.id as identifier
    FROM `series_fanfictions` sf
    INNER JOIN series s ON s.id = sf.series_id
    INNER JOIN fanfictions ff ON ff.id = sf.fanfiction_id
    INNER JOIN languages l ON l.id = ff.language_id
);

CREATE OR REPLACE VIEW view_series_fandoms AS (
    SELECT DISTINCT f.name as name, s.name as series, s.id as identifier
    FROM `series_fanfictions` sf
    INNER JOIN series s ON s.id = sf.series_id
    INNER JOIN fanfictions ff ON ff.id = sf.fanfiction_id
    INNER JOIN fanfictions_fandoms fnf ON fnf.fanfiction_id = ff.id
    INNER JOIN fandoms f ON f.id = fnf.fandom_id
);

CREATE OR REPLACE VIEW view_series_relations AS (
    SELECT DISTINCT r.name as name, s.name as series, s.id as identifier
    FROM `series_fanfictions` sf
    INNER JOIN series s ON s.id = sf.series_id
    INNER JOIN fanfictions ff ON ff.id = sf.fanfiction_id
    INNER JOIN fanfictions_relations fnr ON fnr.fanfiction_id = ff.id
    INNER JOIN relations r ON r.id = fnr.relation_id
);

CREATE OR REPLACE VIEW view_series_characters AS (
    SELECT DISTINCT c.name as name, s.name as series, s.id as identifier
    FROM `series_fanfictions` sf
    INNER JOIN series s ON s.id = sf.series_id
    INNER JOIN fanfictions ff ON ff.id = sf.fanfiction_id
    INNER JOIN fanfictions_characters fnc ON fnc.fanfiction_id = ff.id
    INNER JOIN characters c ON c.id = fnc.character_id
);

CREATE OR REPLACE VIEW view_series_tags AS (
    SELECT DISTINCT t.name as name, s.name as series, s.id as identifier
    FROM `series_fanfictions` sf
    INNER JOIN series s ON s.id = sf.series_id
    INNER JOIN fanfictions ff ON ff.id = sf.fanfiction_id
    INNER JOIN fanfictions_tags fnt ON fnt.fanfiction_id = ff.id
    INNER JOIN tags t ON t.id = fnt.tag_id
);
