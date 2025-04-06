# Print a message indicating the start of the database reset process
echo -n "Reset db tests : " \

# Drop all tables in the `ffb_tests` database using the SQL script `0.main_drop.sql`
# Redirect both standard output and error to /dev/null to suppress output
  && mysql --login-path=client ffb_tests < main/0.main_drop.sql >/dev/null 2>&1 \

# Dump the structure and data of the `ffb_main` database and import it into the `ffb_tests` database
# Suppress error messages during the dump and import process
  && mysqldump --login-path=client ffb_main 2>/dev/null | mysql --login-path=client ffb_tests >/dev/null 2>&1 \

# Print a message indicating the completion of the database reset process
  && echo "done"