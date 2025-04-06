# Print a message indicating the start of the database reset process
echo -n "Reset db tests : " \
&& mysql --login-path=client ffb_tests < main/0.main_drop.sql >/dev/null 2>&1 \
&& mysqldump --login-path=client ffb_main 2>/dev/null | mysql --login-path=client ffb_tests >/dev/null 2>&1 \
&& echo "done"