#!/usr/bin/env bash

BASEDIR=$(dirname $0)

export MYSQL_USER=root
export MYSQL_ROOT_PASSWORD=$(cat .password)

docker-compose up -d

while [ "$(docker exec mysql_dbms mysqladmin --user=$MYSQL_USER --password=$MYSQL_ROOT_PASSWORD ping --silent)" != "mysqld is alive" ] ;
do
	echo "MYSQL Server is being initialised ...."
	sleep 1
done

echo "MYSQL Server is ready"

cat <<EOT >> start.sh
#!/usr/bin/env bash

docker-compose up -d

EOT

chmod +x start.sh

$BASEDIR/service-installer.sh

rm -rf init-sql/*

rm .password
rm init.sh
