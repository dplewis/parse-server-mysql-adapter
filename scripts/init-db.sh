#!/bin/bash
# ./init-db.sh rootpassword

DB=parse_server_mysql_adapter_test_database
ROOT_PASS=$1

mysql -uroot -p${ROOT_PASS} -e "CREATE DATABASE ${DB}"
mysql -uroot -p${ROOT_PASS} -e "CREATE USER 'parse'@'localhost' IDENTIFIED BY 'parsetest';"
mysql -uroot -p${ROOT_PASS} -e "FLUSH PRIVILEGES;"
mysql -uroot -p${ROOT_PASS} -e "GRANT ALL PRIVILEGES ON ${DB}.* TO 'parse'@'localhost';"
mysql -uroot -p${ROOT_PASS} -e "FLUSH PRIVILEGES;"