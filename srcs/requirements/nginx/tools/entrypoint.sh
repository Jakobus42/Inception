#!/bin/sh

NGINX_HOST="${NGINX_HOST:-jsadjina.42.fr}" \
NGINX_PORT="${NGINX_PORT:-443}" \
envsubst < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf

exec nginx -g "daemon off;"
