docker exec -ti 6f538731e865 \
mysql -u "root" "-proot" -e "CREATE DATABASE wordpress" \
mysql -u "root" "-proot" --database=wordpress < /tmp/dump.sql
