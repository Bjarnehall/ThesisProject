FROM ubuntu:24.04

RUN apt update && apt install -y nginx

# Content for server
COPY ./src/index.html /var/www/html/index.html

# SSL Certificate and key
COPY ./certs/server.crt /etc/ssl/certs/server.crt
COPY ./certs/server.key /etc/ssl/private/server.key

# NginX configurations
COPY ./server.conf /etc/nginx/sites-enabled/default
COPY ./http2.conf /etc/nginx/conf.d/http2.conf

# Make sure nginx is not ran as a background process
CMD ["nginx", "-g", "daemon off;"]

