#!/bin/sh

envsubst '${NGINX_HOST}' </etc/nginx/templates/nginx_template.conf >/etc/nginx/nginx.conf

exec "$@"
