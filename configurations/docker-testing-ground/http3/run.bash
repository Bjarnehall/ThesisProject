# For HTTP/3 Yes SSL also run HTTP/2 on tcp
docker run -p 8443:443/tcp -p 8443:443/udp http3:1.0