-- Constants
SET @guest_user = 'ffb_guest';
SET @user_user = 'ffb_user';
SET @admin_user = 'ffb_admin';
SET @localhost_host = "'%'";
SET @owner_user = 'fhurai';

-- Guest User Setup
SET @guest_user_full = CONCAT(@guest_user, '@', @localhost_host);
SET @guest_password = '1Gu3stIsw4yBetter*';

SET @query = CONCAT('DROP USER IF EXISTS ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('CREATE USER IF NOT EXISTS ', @guest_user_full, ' IDENTIFIED BY "', @guest_password, '"');
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_data_users TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, fandom) ON ffb_main.view_data_characters TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, author, rating, description, language, score, evaluation) ON ffb_main.view_data_crossovers TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, author, rating, description, language, score, evaluation) ON ffb_main.view_data_fanfictions TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, character_name) ON ffb_main.view_data_relations TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_characters TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_fandoms TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_links TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_relations TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_tags TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_authors TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_characters TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_fandoms TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_fanfictions TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_languages TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_relations TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_tags TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_stats.* TO ', @guest_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Regular User Setup
SET @user_user_full = CONCAT(@user_user, '@', @localhost_host);
SET @user_password = 'MyUs3R5*i5Rich_';

SET @query = CONCAT('DROP USER IF EXISTS ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('CREATE USER IF NOT EXISTS ', @user_user_full, ' IDENTIFIED BY "', @user_password, '"');
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT UPDATE (score_id) ON ffb_main.fanfictions TO ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT UPDATE (evaluation) ON ffb_main.fanfictions TO ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT UPDATE (score_id) ON ffb_main.series TO ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT UPDATE (evaluation) ON ffb_main.series TO ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.* TO ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_tests.* TO ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_stats.* TO ', @user_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Admin User Setup
SET @admin_user_full = CONCAT(@admin_user, '@', @localhost_host);
SET @admin_password = 'Adm1nGrants3*pr1v1leges';

SET @query = CONCAT('DROP USER IF EXISTS ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('CREATE USER IF NOT EXISTS ', @admin_user_full, ' IDENTIFIED BY "', @admin_password, '"');
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.actions TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.authors TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.characters TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.fandoms TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.fanfictions TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.fanfictions_characters TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.fanfictions_fandoms TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.fanfictions_relations TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.fanfictions_tags TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.languages TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.links TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.ratings TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.relations TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.relations_characters TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.scores TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.series TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.series_fanfictions TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.tags TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.tag_types TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_main.users TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT ON ffb_main.users_actions TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, fandom) ON ffb_main.view_data_characters TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, author, rating, description, language, score, evaluation) ON ffb_main.view_data_crossovers TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, author, rating, description, language, score, evaluation) ON ffb_main.view_data_fanfictions TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT (name, character_name) ON ffb_main.view_data_relations TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_characters TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_fandoms TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_links TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_relations TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_fanfictions_tags TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_authors TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_characters TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_fandoms TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_fanfictions TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_languages TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_relations TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_main.view_series_tags TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT, INSERT, UPDATE, DELETE ON ffb_tests.* TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query = CONCAT('GRANT SELECT ON ffb_stats.* TO ', @admin_user_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


SET @owner_full = CONCAT(@owner_user, '@', "'%'");
SET @admin_password = '77/ffb*Usager';

SET @query = CONCAT('GRANT ALL PRIVILEGES ON *.* TO ', @owner_full);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
