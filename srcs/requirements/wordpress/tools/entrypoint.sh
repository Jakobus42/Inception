#!/bin/sh

set -ex

cd /var/www/html

if ! wp core is-installed 2>/dev/null; then
  wget https://wordpress.org/wordpress-6.8.2.tar.gz
  tar -xzf wordpress-6.8.2.tar.gz --strip-components=1
  rm wordpress-6.8.2.tar.gz

  wp config create \
    --dbname="${WORDPRESS_DB_NAME}" \
    --dbuser="${WORDPRESS_DB_USER}" \
    --dbpass="${WORDPRESS_DB_PASSWORD}" \
    --dbhost="${WORDPRESS_DB_HOST}"

  wp core install \
    --url="${WORDPRESS_URL}" \
    --title="${WORDPRESS_TITEL}" \
    --admin_user="${WORDPRESS_ADMIN_USER_NAME}" \
    --admin_password="${WORDPRESS_ADMIN_PASSWORD}" \
    --admin_email="${WORDPRESS_ADMIN_EMAIL}" \
    --skip-email

  wp user create \
    "${WORDPRESS_USER_NAME}" \
    "${WORDPRESS_USER_EMAIL}" \
    --user_pass="${WORDPRESS_USER_PASSWORD}" \
    --role="${WORDPRESS_USER_ROLE}"

  wp theme install ${WORDPRESS_THEME} --activate # TODO: set env var
fi

unset DB_PASSWORD

exec "$@"
