#!/bin/sh

# TODO: maybe get all NGINX vars out of env?
NGINX_HOST="${NGINX_HOST:-jsadjina.42.fr}" \
NGINX_PORT="${NGINX_PORT:-443}" \
envsubst '${NGINX_HOST} ${NGINX_PORT}' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"
