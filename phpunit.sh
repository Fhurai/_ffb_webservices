clear
cd sql
./resetTests.sh
cd ..
vendor/bin/phpunit --coverage-clover clover.xml --exclude-group abstract