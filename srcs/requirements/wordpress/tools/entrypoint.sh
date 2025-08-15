#!/bin/sh

set -ex

mkdir -p /var/www/html
cd /var/www/html

if ! wp core is-installed 2>/dev/null; then
  wget https://wordpress.org/wordpress-6.8.2.tar.gz
  tar -xzf wordpress-6.8.2.tar.gz --strip-components=1
  rm wordpress-6.8.2.tar.gz

  wp config create --dbname="${DB_NAME}" --dbuser="${DB_USER}" \
    --dbpass="${DB_PASSWORD}" --dbhost="${DB_HOST}"
  rm wp-config.php
fi

unset DB_PASSWORD

exec "$@"
