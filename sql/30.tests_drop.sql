USE ffb_tests;
/*
 * VIEWS DATA
 */

DROP VIEW IF EXISTS view_series_tags;
DROP VIEW IF EXISTS view_series_characters;
DROP VIEW IF EXISTS view_series_relations;
DROP VIEW IF EXISTS view_series_fandoms;
DROP VIEW IF EXISTS view_series_languages;
DROP VIEW IF EXISTS view_series_authors;
DROP VIEW IF EXISTS view_series_fanfictions;
DROP VIEW IF EXISTS view_fanfictions_links; 
DROP VIEW IF EXISTS view_fanfictions_tags;
DROP VIEW IF EXISTS view_fanfictions_characters;
DROP VIEW IF EXISTS view_fanfictions_relations;
DROP VIEW IF EXISTS view_fanfictions_fandoms;
DROP VIEW IF EXISTS view_data_crossovers;
DROP VIEW IF EXISTS view_data_fanfictions;
DROP VIEW IF EXISTS view_data_relations;
DROP VIEW IF EXISTS view_data_characters;
DROP VIEW IF EXISTS view_data_users;

/*
 * TABLES
 */
DROP TABLE IF EXISTS users_actions;
DROP TABLE IF EXISTS actions;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS series_fanfictions;
DROP TABLE IF EXISTS series;
DROP TABLE IF EXISTS links;
DROP TABLE IF EXISTS fanfictions_tags;
DROP TABLE IF EXISTS fanfictions_characters;
DROP TABLE IF EXISTS fanfictions_relations;
DROP TABLE IF EXISTS fanfictions_fandoms;
DROP TABLE IF EXISTS fanfictions;
DROP TABLE IF EXISTS relations_characters;
DROP TABLE IF EXISTS relations;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS tag_types;
DROP TABLE IF EXISTS languages;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS fandoms;
DROP TABLE IF EXISTS scores;
DROP TABLE IF EXISTS ratings;