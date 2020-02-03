FROM openjdk:8-alpine
ARG VERSION=2.1.4
ENV VERSION=${VERSION}
ENV PORT=8080
ENV ADDRESS=0.0.0.0
ENV PROXY_PORT_RANGE=8081-65535
ENV TTL=0
ENV BMP_OPTS=
RUN apk add curl && \
    curl -L https://github.com/lightbody/browsermob-proxy/releases/download/browsermob-proxy-${VERSION}/browsermob-proxy-${VERSION}-bin.zip -o /tmp/browsermob-proxy-${VERSION}-bin.zip  && \
    unzip /tmp/browsermob-proxy-${VERSION}-bin.zip -d /usr/local/bin && \
    rm /tmp/browsermob-proxy-${VERSION}-bin.zip && \
    chmod +x /usr/local/bin/browsermob-proxy-${VERSION}
CMD /usr/local/bin/browsermob-proxy-${VERSION}/bin/browsermob-proxy -port ${PORT} -address ${ADDRESS} -proxyPortRange ${PROXY_PORT_RANGE} -ttl ${TTL} ${BMP_OPTS}