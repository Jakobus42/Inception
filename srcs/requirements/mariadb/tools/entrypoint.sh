#!/bin/sh

if [ ! -d /var/lib/mysql/mysql ]; then
  mariadb-install-db --datadir=/var/lib/mysql

  DB_PASSWORD=$(cat /run/secrets/db_password)
  envsubst </tools/init_template.sql >/tmp/init.sql
  unset DB_PASSWORD

  mariadbd --skip-networking --init-file=/tmp/init.sql
  rm /tmp/init.sql
fi

exec "$@"
