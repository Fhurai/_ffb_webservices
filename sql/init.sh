# mysql_config_editor set --login-path=client --host=localhost --user=root --port=3306 --password
echo "main :"
echo "0 >"
mysql --login-path=client ffb_main < main/0.main_drop.sql
echo "done"
echo "1 >"
mysql --login-path=client ffb_main < main/1.main_struct.sql
echo "done"
echo "2 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/2.main_data_params.sql
echo "done"
echo "3 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/3.main_data_fanfictions.sql
echo "done"
echo "4 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/4.main_data_links.sql
echo "done"
echo "5 >"
mysql --login-path=client --default-character-set=utf8  ffb_main < main/5.main_data_series.sql
echo "done"

echo "stats :"
echo "0 >"
mysql --login-path=client ffb_stats < stats/0.stats_drop.sql
echo "done"
echo "1 >"
mysql --login-path=client ffb_stats < stats/1.stats_struct.sql
echo "done"

echo "tests :"
mysql --login-path=client ffb_tests < main/0.main_drop.sql
mysqldump --login-path=client ffb_main | mysql --login-path=client ffb_tests
echo "done"