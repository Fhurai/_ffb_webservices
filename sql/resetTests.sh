echo "tests :"
mysql --login-path=client ffb_tests < main/0.main_drop.sql
mysqldump --login-path=client ffb_main | mysql --login-path=client ffb_tests
echo "done"