FROM alpine:3.21.3

# TODO: create a user
# TODO: download pinned version for wp cli and wp

RUN set -x && \
    apk add --no-cache \
    php84=8.4.5-r0 \
    php84-fpm=8.4.5-r0 \
    php84-phar=8.4.5-r0 \
    php84-mysqli=8.4.5-r0 && \
   wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    ln -s /usr/bin/php84 /usr/bin/php

COPY conf/ /etc/php84/
COPY ./tools/ /tools

EXPOSE 9000

HEALTHCHECK CMD nc -z 0.0.0.0 9000 

ENTRYPOINT ["/tools/entrypoint.sh"]
CMD ["php-fpm84", "-F"]

