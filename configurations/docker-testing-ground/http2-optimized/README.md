
#### Optimizing http2

Links:
https://www.slingacademy.com/article/enable-http2-http3-nginx/

http2 optimized settings in article is not relevant for newer nginx server so changes where made like below after following directions from output in console and information from nginx website.

https://nginx.org/en/docs/http/ngx_http_core_module.html#large_client_header_buffers

2026/02/24 12:39:55 [warn] 1#1: the "http2_max_field_size" directive is obsolete, use the "large_client_header_buffers" directive instead in /etc/nginx/conf.d/http2.conf:1
2026/02/24 12:39:55 [warn] 1#1: the "http2_max_header_size" directive is obsolete, use the "large_client_header_buffers" directive instead in /etc/nginx/conf.d/http2.conf:2
2026/02/24 12:39:55 [warn] 1#1: the "http2_max_requests" directive is obsolete, use the "keepalive_requests" directive instead in /etc/nginx/conf.d/http2.conf:3
2026/02/24 12:39:55 [warn] 1#1: the "http2_recv_timeout" directive is obsolete, use the "client_header_timeout" directive instead in /etc/nginx/conf.d/http2.conf:4

http2_max_field_size 16k;      |
http2_max_header_size 32k;     | large_client_header_buffers 4 16k;
http2_max_requests 1000;       | keepalive_requests 1000;
http2_recv_timeout 30s;        | client_header_timeout 30s;
