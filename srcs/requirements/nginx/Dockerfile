FROM alpine:3.21.3

# TODO: add a user and security stuff ig

RUN set -x \
    && apk add --no-cache \
    gettext=0.22.5-r0 \
    nginx=1.26.3-r0

COPY ./conf/ /etc/nginx/templates/
COPY ./tools/ /tools

ENTRYPOINT [ "/tools/entrypoint.sh" ]

CMD ["nginx", "-g", "daemon off;"]
