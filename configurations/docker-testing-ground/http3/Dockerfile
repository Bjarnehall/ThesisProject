FROM ubuntu:24.04

RUN apt update && apt install -y \
    git \
    build-essential \
    perl \
    libpcre3-dev \
    zlib1g-dev \
    wget

RUN git clone --depth=1 -b openssl-3.1.4+quic https://github.com/quictls/openssl.git /quictls
RUN git clone https://github.com/nginx/nginx.git /nginx

WORKDIR /nginx

RUN ./auto/configure \
    --prefix=/etc/nginx \
    --with-http_ssl_module \
    --with-http_v2_module \
    --with-http_v3_module \
    --with-openssl=/quictls \
    && make \
    && make install

RUN mkdir -p /var/www/html
COPY ./src/index.html /var/www/html/index.html
COPY ./certs/server.crt /etc/ssl/certs/server.crt
COPY ./certs/server.key /etc/ssl/private/server.key
COPY ./nginx.conf /etc/nginx/conf/nginx.conf

CMD ["/etc/nginx/sbin/nginx", "-g", "daemon off;"]