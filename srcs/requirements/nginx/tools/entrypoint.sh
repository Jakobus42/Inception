#!/bin/sh

# TODO: what should even be in env?

if [ "$1" = 'nginx' ]; then
    NGINX_HOST="${NGINX_HOST:-jsadjina.42.fr}" \
    envsubst '${NGINX_HOST}' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf

    exec "$@"
fi

exec "$@"
