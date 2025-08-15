#!/bin/sh

set -e

if [ ! -d /var/lib/mysql/mysql ]; then
  mariadb-install-db --datadir=/var/lib/mysql

  envsubst </tools/init_template.sql >/tmp/init.sql
  mariadbd --skip-networking --init-file=/tmp/init.sql
  rm /tmp/init.sql
fi

unset DB_PASSWORD

exec "$@"
