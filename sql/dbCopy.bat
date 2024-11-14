mysql -u root -p ffb_tests < sql/0.db_drop.sql
mysqldump -u root --password= ffb_main | mysql -u root --password ffb_tests