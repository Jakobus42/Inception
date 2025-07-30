FROM alpine:3.21.3

RUN set -x \
    && apk add --no-cache \
    php84-fpm=8.4.5-r0 \
    php84-mysqli=8.4.5-r0

COPY conf/ /etc/php84/php-fpm.d/

CMD ["php-fpm84", "-F"]
