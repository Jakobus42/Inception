FROM alpine:3.21.3

RUN apk add --no-cache \
    nginx \
    envsubst

COPY ./conf/ /etc/nginx/templates/
COPY ./tools/ /tools

ENTRYPOINT [ "/tools/entrypoint.sh" ]
