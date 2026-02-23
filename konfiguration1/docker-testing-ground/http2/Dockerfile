FROM ubuntu:24.04

RUN apt update && apt install -y nginx

COPY ./src/index.html /var/www/html/index.html

COPY ./certs/server.crt /etc/ssl/certs/server.crt
COPY ./certs/server.key /etc/ssl/private/server.key

COPY ./nginx.conf /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]

