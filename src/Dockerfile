FROM docker.io/alpine:3.13.1

RUN apk add --no-cache tor && \
    sed "1s/^/SocksPort 0.0.0.0:9050\n/" /etc/tor/torrc.sample > /etc/tor/torrc

VOLUME ["/etc/tor", "/var/lib/tor"]

EXPOSE 9050

CMD ["tor"]

HEALTHCHECK --interval=30s --timeout=5s --retries=5 \
    CMD netstat -an | grep 9050 > /dev/null; if [ 0 != $? ]; then exit 1; fi;

USER tor
