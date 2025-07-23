FROM alpine:3.21.3

# TODO: add tzdata for timezone?

RUN set -x \
    && addgroup -g 101 -S nginx \
    && adduser -S -u 101 -G nginx -h /var/cache/nginx -s /sbin/nologin nginx \
    && apk add --no-cache \
    gettext=0.22.5-r0 \
    nginx=1.26.3-r0

COPY ./conf/ /etc/nginx/templates/
COPY ./tools/ /tools

ENTRYPOINT [ "/tools/entrypoint.sh" ]

CMD ["nginx", "-g", "daemon off;"]
