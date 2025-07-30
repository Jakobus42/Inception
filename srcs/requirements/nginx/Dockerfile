FROM alpine:3.21.3

RUN set -x \
    && apk add --no-cache \
    curl=8.12.1-r1 \
    gettext=0.22.5-r0 \
    nginx=1.26.3-r0 

COPY ./conf/ /etc/nginx/templates/
COPY ./tools/ /tools

EXPOSE 443

HEALTHCHECK CMD curl -kf https://localhost || exit 1

ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]
