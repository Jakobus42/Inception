FROM alpine:3.21.4

RUN set -x && \
    apk add --no-cache \
    gettext=0.22.5-r0 \
    nginx=1.26.3-r0 

COPY ./conf/ /etc/nginx/templates/
COPY ./tools/ /tools

EXPOSE 443

HEALTHCHECK CMD wget --spider --no-check-certificate \
                    https://localhost/health

ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]
