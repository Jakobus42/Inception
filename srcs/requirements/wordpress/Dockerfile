FROM alpine:3.21.3

RUN set -x && \
    apk add --no-cache \
    php84-fpm=8.4.5-r0 \
    php84-mysqli=8.4.5-r0 && \
    mkdir -p /var/www/html && \
    wget https://wordpress.org/wordpress-6.8.2.tar.gz && \
    tar -xzf wordpress-6.8.2.tar.gz \
    -C /var/www/html --strip-components=1 && \
    rm wordpress-6.8.2.tar.gz

COPY conf/ /etc/php84/php-fpm.d/

EXPOSE 9000

HEALTHCHECK CMD nc -z 0.0.0.0 9000 

CMD ["php-fpm84", "-F"]
