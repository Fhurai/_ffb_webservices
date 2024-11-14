echo "0 :"
mysql -u root --password= ffb_main < main/0.main_drop.sql
echo "1 :"
mysql -u root --password= ffb_main < main/1.main_struct.sql
echo "2 :"
mysql -u root --password= ffb_main < main/2.main_data_params.sql
echo "3 :"
mysql -u root --password= ffb_main < main/3.main_data_fanfictions.sql
echo "4 :"
mysql -u root --password= ffb_main < main/4.main_data_links.sql
echo "5 :"
mysql -u root --password= ffb_main < main/5.main_data_series.sql

echo "0 :"
mysql -u root --password= ffb_stats < stats/0.stats_drop.sql
echo "1 :"
mysql -u root --password= ffb_stats < stats/1.stats_struct.sql

echo "tests :"
mysql -u root --password= ffb_tests < main/0.main_drop.sql
mysqldump -u root --password= ffb_main | mysql -u root --password= ffb_tests