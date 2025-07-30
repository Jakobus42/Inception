#!/bin/sh

# TODO: what should even be in env?

NGINX_HOST="${NGINX_HOST:-jsadjina.42.fr}" \
  envsubst '${NGINX_HOST}' </etc/nginx/templates/nginx.conf.template >/etc/nginx/nginx.conf

exec "$@"
