# Configure MySQL client login path (uncomment and configure if needed)
# mysql_config_editor set --login-path=client --host=localhost --user=root --port=3306 --password

# Load main database structure and data
echo -n "main : " \
  # Drop existing main database tables
  && mysql --login-path=client ffb_main < main/0.main_drop.sql >/dev/null 2>&1 \
  # Create main database structure
  && mysql --login-path=client ffb_main < main/1.main_struct.sql >/dev/null 2>&1 \
  # Load main database parameters
  && mysql --login-path=client --default-character-set=utf8 ffb_main < main/2.main_data_params.sql >/dev/null 2>&1 \
  # Load fanfiction data
  && mysql --login-path=client --default-character-set=utf8 ffb_main < main/3.main_data_fanfictions.sql >/dev/null 2>&1 \
  # Load fanfiction fandoms
  && mysql --login-path=client --default-character-set=utf8 ffb_main < main/4.main_data_fanfictions_fandoms.sql >/dev/null 2>&1 \
  # Load fanfiction relations
  && mysql --login-path=client --default-character-set=utf8 ffb_main < main/5.main_data_fanfictions_relations.sql >/dev/null 2>&1 \
  # Load fanfiction characters
  && mysql --login-path=client --default-character-set=utf8 ffb_main < main/6.main_data_fanfictions_characters.sql >/dev/null 2>&1 \
  # Load fanfiction tags
  && mysql --login-path=client --default-character-set=utf8 ffb_main < main/7.main_data_fanfictions_tags.sql >/dev/null 2>&1 \
  # Load series data
  && mysql --login-path=client --default-character-set=utf8 ffb_main < main/8.main_data_series.sql >/dev/null 2>&1 \
  && echo "done"
echo

# Load functions into the test database
echo -n "functions : " \
  # Load function definitions
  && mysql --login-path=client ffb_tests < functions/1.check.sql >/dev/null 2>&1 \
  && echo "done"
echo

# Load stored procedures into the test database
echo -n "procedures : " \
  # Load insert procedure
  && mysql --login-path=client ffb_tests < procedures/1.insert.sql >/dev/null 2>&1 \
  # Load delete procedure
  && mysql --login-path=client ffb_tests < procedures/2.delete.sql >/dev/null 2>&1 \
  # Load update procedure
  && mysql --login-path=client ffb_tests < procedures/3.update.sql >/dev/null 2>&1 \
  # Load another delete procedure
  && mysql --login-path=client ffb_tests < procedures/4.delete.sql >/dev/null 2>&1 \
  # Load restore procedure
  && mysql --login-path=client ffb_tests < procedures/5.restore.sql >/dev/null 2>&1 \
  # Load finder procedures
  && mysql --login-path=client ffb_tests < procedures/6.finders.sql >/dev/null 2>&1 \
  && echo "done"
echo

# Load statistics database structure
echo -n "stats : " \
  # Drop existing stats database tables
  && mysql --login-path=client ffb_stats < stats/0.stats_drop.sql >/dev/null 2>&1 \
  # Create stats database structure
  && mysql --login-path=client ffb_stats < stats/1.stats_struct.sql >/dev/null 2>&1 \
  && echo "done"
echo

# Prepare test database by cloning main database
echo -n "tests : " \
  # Drop existing test database tables
  && mysql --login-path=client ffb_tests < main/0.main_drop.sql >/dev/null 2>&1 \
  # Clone main database into test database
  && mysqldump --login-path=client ffb_main 2>/dev/null | mysql --login-path=client ffb_tests >/dev/null 2>&1 \
  && echo "done"
echo

# Load user-specific data
echo -n "user : " \
  # Load user data
  && mysql --login-path=client ffb_main < user.sql >/dev/null 2>&1 \
  && echo "done"
echo