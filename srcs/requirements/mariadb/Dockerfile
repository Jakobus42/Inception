FROM alpine:3.21.3

RUN set -x && \
    apk add --no-cache \
    gettext=0.22.5-r0 \
    mariadb=11.4.5-r0 \
    mariadb-client=11.4.5-r0 && \
    mkdir -p /run/mysqld && \ 
    chown mysql:mysql /run/mysqld

COPY ./conf /etc/my.cnf.d/
COPY ./tools /tools

EXPOSE 3306

USER mysql

HEALTHCHECK CMD mariadb-admin ping 

ENTRYPOINT [ "/tools/entrypoint.sh" ]
CMD [ "mariadbd" ]
