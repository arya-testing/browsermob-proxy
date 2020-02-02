# Browsermob Proxy

Spin up [BrowserMob Proxy](https://github.com/lightbody/browsermob-proxy) within a Docker container. 

# Quick start

Build an image with BrowserMob:

```
docker build -t arya-testing/browsermob-proxy .
```

Run the BrowserMob container on port 9000 with a proxy port range of 9001-9010:

```
docker run --name browsermob-proxy -e PORT=9000 -e PROXY_PORT_RANGE=9001-9010 -p 9000:9000 -p 9001-9010:9001-9010 arya-testing/browsermob-proxy 
```

## Build Arguments

* VERSION

## Environment Variables

* PORT=8080
* ADDRESS=0.0.0.0
* PROXY_PORT_RANGE=8081-65535
* TTL=0