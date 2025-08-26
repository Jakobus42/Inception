FROM alpine:3.21.4

# TODO: create a user
# TODO: download pinned version for wp cli and wp

RUN set -x && \
    apk add --no-cache \
    curl=8.12.1-r1 \
    ghostscript=10.05.1-r0 \
    imagemagick=7.1.1.41-r0 \
    openssl=3.3.4-r0 \
    libwebp=1.4.0-r0 \
    libavif=1.0.4-r0 \
    php84=8.4.5-r0 \
    php84-fpm=8.4.5-r0 \
    php84-phar=8.4.5-r0 \
    php84-mysqli=8.4.5-r0 \
    php84-dom=8.4.5-r0 \
    php84-exif=8.4.5-r0 \
    php84-fileinfo=8.4.5-r0 \
    php84-pecl-igbinary=3.2.16-r1 \
    php84-pecl-imagick=3.8.0_rc2-r0 \
    php84-intl=8.4.5-r0 \
    php84-mbstring=8.4.5-r0 \
    php84-openssl=8.4.5-r0 \
    php84-xml=8.4.5-r0 \
    php84-bcmath=8.4.5-r0 \
    php84-zip=8.4.5-r0 \
    php84-iconv=8.4.5-r0 \
    php84-shmop=8.4.5-r0 \
    php84-simplexml=8.4.5-r0 \
    php84-sodium=8.4.5-r0 \
    php84-xmlreader=8.4.5-r0 \
    php84-curl=8.4.5-r0 && \
   wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    ln -s /usr/bin/php84 /usr/bin/php && \
    mkdir -p wordpress

COPY conf/ /etc/php84/
COPY ./tools/ /tools

EXPOSE 9000

HEALTHCHECK CMD nc -z 0.0.0.0 9000 

ENTRYPOINT ["/tools/entrypoint.sh"]
CMD ["php-fpm84", "-F"]

