FROM alpine:3.21.3

RUN apk add --no-cache nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
