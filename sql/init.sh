# mysql_config_editor set --login-path=client --host=localhost --user=root --port=3306 --password
echo "main :"
echo "0 >"
mysql --login-path=client ffb_main < main/0.main_drop.sql
echo "-- done"
echo "1 >"
mysql --login-path=client ffb_main < main/1.main_struct.sql
echo "-- done"
echo "2 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/2.main_data_params.sql
echo "-- done"
echo "3 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/3.main_data_fanfictions.sql
echo "-- done"
echo "4 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/4.main_data_fanfictions_fandoms.sql
echo "-- done"
echo "5 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/5.main_data_fanfictions_relations.sql
echo "-- done"
echo "6 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/6.main_data_fanfictions_characters.sql
echo "-- done"
echo "7 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/7.main_data_fanfictions_tags.sql
echo "-- done"
echo "8 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/8.main_data_series.sql
echo "-- done"
echo ""
echo "procedures :"
echo "insert >"
mysql --login-path=client ffb_tests < procedures/insert.sql
echo "-- done"
echo "delete >"
mysql --login-path=client ffb_tests < procedures/delete.sql
echo "-- done"
echo ""
echo "stats :"
echo "0 >"
mysql --login-path=client ffb_stats < stats/0.stats_drop.sql
echo "-- done"
echo "1 >"
mysql --login-path=client ffb_stats < stats/1.stats_struct.sql
echo "-- done"
echo ""
echo "tests :"
mysql --login-path=client ffb_tests < main/0.main_drop.sql
mysqldump --login-path=client ffb_main | mysql --login-path=client ffb_tests
echo "-- done"
echo ""
echo "user >"
mysql --login-path=client ffb_main < user.sql
echo "-- done"