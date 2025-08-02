FROM alpine:3.21.3

# mariadb-client is temporary
RUN set -x && \
    apk add --no-cache \
    mariadb=11.4.5-r0 \
    mariadb-client && \
    mkdir -p /run/mysqld && \ 
    chown mysql:mysql /run/mysqld && \
    mariadb-install-db \
    --user=mysql \
    --datadir=/var/lib/mysql 

COPY ./conf /etc/my.cnf.d/

EXPOSE 3306

USER mysql

ENTRYPOINT [ "mariadbd-safe" ]
#ENTRYPOINT [ "tail", "-f", "/dev/urandom" ]
