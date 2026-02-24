# Docker-testing-ground

#### /http2

Overview
```
.
├── build.bash
├── certs
│   ├── server.crt
│   └── server.key
├── curlindex.bash
├── Dockerfile
├── genssl.bash
├── nginx.conf
├── run.bash
└── src
    └── index.html`
```

Run files in order to setup testing container for NGINX using HTTP/2 with SLL encryption.
1. genssl.bash
2. build.bash
3. run.bash

#### /http2-optimized

Overview
```
.
├── build.bash
├── certs
│   ├── server.crt
│   └── server.key
├── curlindex.bash
├── Dockerfile
├── genssl.bash
├── http2.conf
├── README.md
├── run.bash
├── server.conf
└── src
    └── index.html
```

Run files in order to setup testing container for NGINX using HTTP/2 with SLL encryption.
1. genssl.bash
2. build.bash
3. run.bash

#### /http3

WARNING THIS IS NOT DONE AND WILL FOR NOW ONLY RUN OVER HTTP/2

Overview
```
.
├── build.bash
├── certs
│   ├── server.crt
│   └── server.key
├── curlindex.bash
├── Dockerfile
├── genssl.bash
├── server.conf
├── run.bash
└── src
    └── index.html`
```

Run files in order to setup testing container for NGINX using HTTP/2 with SLL encryption.
1. genssl.bash
2. build.bash
3. run.bash